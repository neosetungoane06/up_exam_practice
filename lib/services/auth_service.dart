import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // STREAM (used by AuthGate)
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  // EMAIL SIGN UP
  Future<UserCredential> createAccount({
    required String email,
    required String password,
  }) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }

  // SEND EMAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    final user = _auth.currentUser;

    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  // EMAIL LOGIN
  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }

  // GOOGLE SIGN IN
  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance
        .signInWithCredential(credential);
  }

  // LOGOUT
  Future<void> signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
  }
  // RESET PASSWORD
  Future<void> resetPassword({
    required String email,
  }) async {
    await _auth.sendPasswordResetEmail(
      email: email.trim(),
    );
  }
}