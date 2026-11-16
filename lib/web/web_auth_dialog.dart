import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/auth_gate.dart';
import '../screens/terms_of_service_screen.dart';
import '../screens/verify_email_screen.dart';
import '../services/auth_service.dart';
import '../services/firestore_service.dart';
import '../utils/error_mapper.dart';
import '../widgets/google_logo.dart';
import 'web_theme.dart';

/// Opens the sign-in / sign-up dialog (matches the mock-up modal).
Future<void> showWebAuthDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierColor: const Color(0x8C0F172A),
    builder: (_) => const WebAuthDialog(),
  );
}

enum _Step { welcome, email, login, signup }

class WebAuthDialog extends StatefulWidget {
  const WebAuthDialog({super.key});

  @override
  State<WebAuthDialog> createState() => _WebAuthDialogState();
}

class _WebAuthDialogState extends State<WebAuthDialog> {
  static const _fieldFill = Color(0xFFF8FAFC);

  final AuthService _auth = AuthService();
  final FirestoreService _firestore = FirestoreService();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();

  _Step _step = _Step.welcome;
  bool _busy = false;
  bool _hidePassword = true;

  /// Inline message (the dialog sits above the Scaffold, so SnackBars
  /// would be hidden behind the barrier).
  String? _message;
  bool _messageIsError = true;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  void _goTo(_Step step) {
    setState(() {
      _step = step;
      _message = null;
    });
  }

  void _say(String text, {bool error = true}) {
    if (!mounted) return;
    setState(() {
      _message = text;
      _messageIsError = error;
    });
  }

  /// Replaces everything (including this dialog) with a fresh AuthGate so
  /// it reads the finished profile, same pattern as the mobile screens.
  void _enterApp() {
    Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const AuthGate()),
          (route) => false,
    );
  }

  // ---------------------------------------------------------------- Google

  Future<void> _google() => _social(_auth.signInWithGoogle);

  Future<void> _apple() async {
    if (!WebConfig.appleSignInEnabled) {
      _say(
        'Sign in with Apple is currently offline. '
            'Please continue with Google or email instead.',
      );
      return;
    }
    await _social(_auth.signInWithApple);
  }

  Future<void> _social(Future<UserCredential?> Function() signIn) async {
    setState(() {
      _busy = true;
      _message = null;
    });

    try {
      final credential = await signIn();

      // The student closed the popup: nothing to do.
      if (credential == null) {
        if (mounted) setState(() => _busy = false);
        return;
      }

      final user = credential.user;
      if (user != null) {
        final isNew = credential.additionalUserInfo?.isNewUser ?? false;
        final needsProfile =
        isNew ? true : (await _firestore.getUser(user.uid)) == null;

        if (needsProfile) {
          final display = user.displayName;
          final preferredName = (display != null && display.trim().isNotEmpty)
              ? display.trim().split(' ').first
              : 'Student';

          await _firestore.createUser(
            uid: user.uid,
            preferredName: preferredName,
            email: user.email ?? '',
            termsVersion: TermsOfServiceScreen.version,
            acceptedTerms: true,
            preferredNameConfirmed: false,
          );
        }

        if (!mounted) return;
        _enterApp();
        return;
      }
    } catch (e) {
      _say(ErrorMapper.toUserMessage(e));
    }

    if (mounted) setState(() => _busy = false);
  }

  // ----------------------------------------------------------------- Email

  Future<void> _login() async {
    final email = _email.text.trim();
    final password = _password.text;

    if (email.isEmpty || password.isEmpty) {
      _say('Enter email and password.');
      return;
    }

    setState(() {
      _busy = true;
      _message = null;
    });

    try {
      final credential =
      await _auth.signInWithEmail(email: email, password: password);
      final user = credential.user ?? FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw FirebaseAuthException(
          code: 'user-not-found',
          message: 'No authenticated user found.',
        );
      }
      if (!mounted) return;
      // AuthGate sends an unverified account to the verify screen itself.
      _enterApp();
      return;
    } catch (e) {
      _say(ErrorMapper.toUserMessage(e));
    }

    if (mounted) setState(() => _busy = false);
  }

  Future<void> _createAccount() async {
    final preferredName = _name.text.trim();
    final email = _email.text.trim();
    final password = _password.text;

    if (preferredName.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        _confirm.text.isEmpty) {
      _say('Please complete all fields.');
      return;
    }
    if (password != _confirm.text) {
      _say('Passwords do not match.');
      return;
    }
    if (password.length < 6) {
      _say('Password must be at least 6 characters.');
      return;
    }

    setState(() {
      _busy = true;
      _message = null;
    });

    try {
      final credential =
      await _auth.createAccount(email: email, password: password);
      final user = credential.user;
      if (user == null) {
        throw FirebaseAuthException(
          code: 'account-creation-failed',
          message: 'Firebase did not return a user.',
        );
      }

      await Future.wait([
        _createProfileWithRetry(
          uid: user.uid,
          preferredName: preferredName,
          email: email,
        ),
        _auth.sendEmailVerification(),
      ]);

      if (!mounted) return;
      Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const VerifyEmailScreen()),
            (route) => false,
      );
      return;
    } catch (e) {
      _say(ErrorMapper.toUserMessage(e));
    }

    if (mounted) setState(() => _busy = false);
  }

  Future<void> _createProfileWithRetry({
    required String uid,
    required String preferredName,
    required String email,
  }) async {
    Future<void> write() => _firestore.createUser(
      uid: uid,
      preferredName: preferredName,
      email: email,
      termsVersion: TermsOfServiceScreen.version,
      acceptedTerms: true,
    );

    try {
      await write();
    } catch (_) {
      await Future.delayed(const Duration(milliseconds: 500));
      await write();
    }
  }

  Future<void> _forgotPassword() async {
    final email = _email.text.trim();
    if (email.isEmpty) {
      _say('Enter your email address first.');
      return;
    }
    try {
      await _auth.resetPassword(email: email);
      _say(
        'If an account exists for this email, a password reset link has been '
            'sent. Please check your Inbox and Spam/Junk folder.',
        error: false,
      );
    } catch (_) {
      _say('Unable to process your request right now. Please try again.');
    }
  }

  Future<void> _openPublic(String path) async {
    try {
      await launchUrl(
        Uri.parse('https://keplerstudy.com/$path'),
        mode: LaunchMode.externalApplication,
        webOnlyWindowName: '_blank',
      );
    } catch (_) {
      _say('Could not open the page. Visit keplerstudy.com/$path');
    }
  }

  // ----------------------------------------------------------------- Build

  @override
  Widget build(BuildContext context) {
    // The modal is always light, exactly like the mock-up.
    return Theme(
      data: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: WebPalette.indigo),
        useMaterial3: true,
      ),
      child: Dialog(
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(28, 30, 28, 26),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 180),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      switch (_step) {
                        _Step.welcome => _welcome(),
                        _Step.email => _emailChoice(),
                        _Step.login => _loginForm(),
                        _Step.signup => _signupForm(),
                      },
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: IconButton(
                  tooltip: 'Close',
                  icon: const Icon(Icons.close_rounded,
                      color: Color(0xFF64748B)),
                  onPressed: _busy ? null : () => Navigator.pop(context),
                ),
              ),
              if (_busy)
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: ColoredBox(
                      color: Colors.white.withValues(alpha: 0.6),
                      child: const Center(
                        child:
                        CircularProgressIndicator(color: WebPalette.indigo),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() => const Padding(
    padding: EdgeInsets.only(top: 4, bottom: 8),
    child: Icon(Icons.menu_book_rounded, size: 56, color: WebPalette.brand),
  );

  Widget _title(String text) => Padding(
    padding: const EdgeInsets.only(top: 6, bottom: 18),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w800,
        color: Color(0xFF0F172A),
      ),
    ),
  );

  Widget _subtitle(String text) => Padding(
    padding: const EdgeInsets.only(top: 0, bottom: 18),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Color(0xFF64748B)),
    ),
  );

  Widget _banner() {
    if (_message == null) return const SizedBox.shrink();
    final err = _messageIsError;
    final bg = err ? const Color(0xFFFFF7ED) : const Color(0xFFECFDF5);
    final border = err ? const Color(0xFFFED7AA) : const Color(0xFFA7F3D0);
    final fg = err ? const Color(0xFF9A3412) : const Color(0xFF065F46);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: bg,
        border: Border.all(color: border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(_message!, style: TextStyle(fontSize: 13, color: fg)),
    );
  }

  Widget _socialButton({
    required Widget icon,
    required String label,
    required VoidCallback onTap,
    bool dark = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: OutlinedButton.icon(
        onPressed: onTap,
        icon: icon,
        label: Text(label, style: const TextStyle(fontWeight: FontWeight.w700)),
        style: OutlinedButton.styleFrom(
          backgroundColor: dark ? Colors.black : Colors.white,
          foregroundColor: dark ? Colors.white : const Color(0xFF0F172A),
          side: BorderSide(
              color: dark ? Colors.black : const Color(0xFFE2E8F0)),
          minimumSize: const Size(double.infinity, 50),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
    );
  }

  Widget _primary(String label, VoidCallback onTap) => ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: WebPalette.indigo,
      foregroundColor: Colors.white,
      elevation: 0,
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    child: Text(label, style: const TextStyle(fontWeight: FontWeight.w700)),
  );

  Widget _outlined(String label, VoidCallback onTap) => OutlinedButton(
    onPressed: onTap,
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF0F172A),
      side: const BorderSide(color: Color(0xFFE2E8F0)),
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    child: Text(label, style: const TextStyle(fontWeight: FontWeight.w700)),
  );

  Widget _link(String lead, String action, VoidCallback onTap) => Padding(
    padding: const EdgeInsets.only(top: 14),
    child: Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(lead,
              style: const TextStyle(color: Color(0xFF64748B), fontSize: 14)),
          InkWell(
            onTap: onTap,
            child: Text(
              action,
              style: const TextStyle(
                color: WebPalette.brand,
                fontWeight: FontWeight.w800,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget _field({
    required String label,
    required String hint,
    required TextEditingController controller,
    bool password = false,
    TextInputType? keyboard,
    TextInputAction action = TextInputAction.next,
    VoidCallback? onSubmit,
    int? maxLength,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
              const TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            obscureText: password && _hidePassword,
            keyboardType: keyboard,
            textInputAction: action,
            maxLength: maxLength,
            onSubmitted: onSubmit == null ? null : (_) => onSubmit(),
            decoration: InputDecoration(
              hintText: hint,
              counterText: '',
              filled: true,
              fillColor: _fieldFill,
              isDense: true,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              suffixIcon: password
                  ? IconButton(
                icon: Icon(
                  _hidePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 20,
                ),
                onPressed: () =>
                    setState(() => _hidePassword = !_hidePassword),
              )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide:
                const BorderSide(color: WebPalette.brand, width: 1.4),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _welcome() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _logo(),
        _title('Welcome to Kepler Study'),
        _socialButton(
          icon: const GoogleLogo(size: 20),
          label: 'Continue with Google',
          onTap: _google,
        ),
        _socialButton(
          icon: const Icon(Icons.apple, size: 22, color: Colors.white),
          label: 'Continue with Apple',
          onTap: _apple,
          dark: true,
        ),
        _banner(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            children: [
              Expanded(child: Divider(color: Color(0xFFE2E8F0))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('or',
                    style: TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 12,
                        fontWeight: FontWeight.w700)),
              ),
              Expanded(child: Divider(color: Color(0xFFE2E8F0))),
            ],
          ),
        ),
        const SizedBox(height: 6),
        _socialButton(
          icon: const Icon(Icons.mail_outline_rounded, size: 20),
          label: 'Continue with email',
          onTap: () => _goTo(_Step.email),
        ),
        const SizedBox(height: 4),
        Text.rich(
          TextSpan(
            style: const TextStyle(
                fontSize: 12.5, color: Color(0xFF64748B), height: 1.45),
            children: [
              const TextSpan(text: 'By continuing you agree to the '),
              WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: InkWell(
                  onTap: () => _openPublic('terms.html'),
                  child: const Text('Terms of Service',
                      style: TextStyle(
                          fontSize: 12.5,
                          color: WebPalette.brand,
                          decoration: TextDecoration.underline)),
                ),
              ),
              const TextSpan(text: ' and '),
              WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: InkWell(
                  onTap: () => _openPublic('privacy.html'),
                  child: const Text('Privacy Policy',
                      style: TextStyle(
                          fontSize: 12.5,
                          color: WebPalette.brand,
                          decoration: TextDecoration.underline)),
                ),
              ),
              const TextSpan(text: '.'),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _emailChoice() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _logo(),
        _title('Continue with email'),
        _primary('Login', () => _goTo(_Step.login)),
        const SizedBox(height: 10),
        _outlined('Sign up', () => _goTo(_Step.signup)),
        _link('', '← Back', () => _goTo(_Step.welcome)),
      ],
    );
  }

  Widget _loginForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _title('Welcome back'),
        _subtitle('Log in to continue where you left off.'),
        _field(
          label: 'Email address',
          hint: 'you@gmail.com',
          controller: _email,
          keyboard: TextInputType.emailAddress,
        ),
        _field(
          label: 'Password',
          hint: 'Enter your password',
          controller: _password,
          password: true,
          action: TextInputAction.done,
          onSubmit: _login,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: _forgotPassword,
            child: const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text('Forgot password?',
                  style: TextStyle(
                      color: WebPalette.brand,
                      fontWeight: FontWeight.w700,
                      fontSize: 13.5)),
            ),
          ),
        ),
        _banner(),
        _primary('LOG IN', _login),
        _link('New to Kepler? ', 'Create an account',
                () => _goTo(_Step.signup)),
        _link('', '← Back', () => _goTo(_Step.email)),
      ],
    );
  }

  Widget _signupForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _title('Create your account'),
        _subtitle('Set up your Kepler profile in under a minute.'),
        _field(
          label: 'Preferred name',
          hint: 'What should Kepler call you?',
          controller: _name,
          maxLength: 30,
        ),
        _field(
          label: 'Email address',
          hint: 'you@gmail.com',
          controller: _email,
          keyboard: TextInputType.emailAddress,
        ),
        _field(
          label: 'Password',
          hint: 'At least 6 characters',
          controller: _password,
          password: true,
        ),
        _field(
          label: 'Confirm password',
          hint: 'Re-enter your password',
          controller: _confirm,
          password: true,
          action: TextInputAction.done,
          onSubmit: _createAccount,
        ),
        _banner(),
        _primary('CREATE ACCOUNT', _createAccount),
        _link('Already have an account? ', 'Log in', () => _goTo(_Step.login)),
        _link('', '← Back', () => _goTo(_Step.email)),
      ],
    );
  }
}