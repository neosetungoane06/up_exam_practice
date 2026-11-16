import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/note_source.dart';
import '../screens/create_notes_screen.dart';
import '../screens/notes_reader_screen.dart';
import '../screens/practice_screen.dart';
import '../screens/recording_screen.dart';
import '../screens/review_weak_area_screen.dart';
import '../screens/subscription_ended_screen.dart';
import '../services/draft_upload_service.dart';
import '../services/folder_service.dart';
import '../services/general_notes_generator.dart';
import '../services/note_history_service.dart';
import '../services/notes_creation_flow.dart';
import '../services/plan_service.dart';
import '../services/practice_rotation_service.dart';
import '../services/preferred_name_notifier.dart';
import '../services/recording_controller.dart';
import '../services/upload_quota_service.dart';
import '../services/weak_areas_service.dart';
import 'web_add_material.dart';
import 'web_theme.dart';

class _FolderColor {
  final String name;
  final Color color;
  const _FolderColor(this.name, this.color);
}

const List<_FolderColor> _folderColors = [
  _FolderColor('Green', Color(0xff22C55E)),
  _FolderColor('Blue', Color(0xff2563EB)),
  _FolderColor('Red', Color(0xffEF4444)),
  _FolderColor('Orange', Color(0xffF59E0B)),
  _FolderColor('Yellow', Color(0xffEAB308)),
  _FolderColor('Purple', Color(0xff7C3AED)),
  _FolderColor('Pink', Color(0xffDB2777)),
];

String _newFolderId() => 'folder_${DateTime.now().microsecondsSinceEpoch}';

/// The Study Sets page for the web app. Same behaviour as the mobile
/// GeneralNotesHomeScreen (folders, notes, today's task, saved uploads,
/// creating notes) laid out for a wide screen.
class WebStudySetsPage extends StatefulWidget {
  /// True when nobody is signed in. Reads are skipped and every action that
  /// needs an account calls [onNeedSignIn].
  final bool guest;
  final VoidCallback onNeedSignIn;
  final VoidCallback onOpenAnalysis;

  const WebStudySetsPage({
    super.key,
    required this.guest,
    required this.onNeedSignIn,
    required this.onOpenAnalysis,
  });

  @override
  State<WebStudySetsPage> createState() => WebStudySetsPageState();
}

class WebStudySetsPageState extends State<WebStudySetsPage> {
  static const _moduleCode = 'GENERAL';
  static const _moduleTitle = 'General study notes';
  static const _documentExtensions = ['pdf', 'docx', 'pptx'];
  static const _kDraftOwnerPrefix = 'draft_owner_';
  static const _kTodayModeKey = 'general_today_mode';

  static const _reviewNotice =
      'Kepler builds notes from lecture recordings (including the notes and '
      'questions you type while recording), photos of slides or notes, web '
      'links, pasted text, and PDF, Word (.docx) or PowerPoint (.pptx) files.';

  final FolderStore _folderStore = FolderStore();
  final ImagePicker _imagePicker = ImagePicker();
  final RecordingController _recording = RecordingController.instance;
  final NoteHistoryService _history = NoteHistoryService();
  final PlanService _plan = PlanService.instance;
  final UploadQuotaService _quota = UploadQuotaService();
  final DraftUploadService _drafts = DraftUploadService();
  final PracticeRotationService _rotationService = PracticeRotationService();
  final WeakAreasService _weakAreasService = WeakAreasService();

  final ValueNotifier<List<NoteHistoryEntry>> _setsNotifier =
  ValueNotifier(const []);
  final ValueNotifier<String?> _createProgress = ValueNotifier<String?>(null);

  late final NotesCreationFlow _flow = NotesCreationFlow(
    moduleCode: _moduleCode,
    moduleTitle: _moduleTitle,
    progress: _createProgress,
  );

  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  List<SavedUpload> _savedUploads = [];
  List<NoteHistoryEntry> _serverSets = [];
  final Map<String, NoteHistoryEntry> _localSets = {};
  bool _loadingHistory = true;

  String _todayMode = 'practice';
  PracticeRotationState? _rotation;
  bool _loadingRotation = true;
  List<WeakArea> _weakAreas = [];
  bool _loadingWeakAreas = true;

  bool _preparingUpload = false;
  String? _recordingFolderId;
  bool _draining = false;

  bool get _guest => widget.guest;

  List<NoteHistoryEntry> get _studySets {
    final serverIds = _serverSets.map((e) => e.noteId).toSet();
    return [
      ..._serverSets,
      ..._localSets.values.where((e) => !serverIds.contains(e.noteId)),
    ]..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  List<NoteHistoryEntry> get _unfiledSets {
    final foldered = _folderStore.allFolderedNoteIds;
    return _studySets.where((e) => !foldered.contains(e.noteId)).toList();
  }

  bool get _showHero => _guest || (!_loadingHistory && _studySets.isEmpty);

  // ---------------------------------------------------------------- Setup

  @override
  void initState() {
    super.initState();

    if (_guest) {
      _loadingHistory = false;
      _loadingRotation = false;
      _loadingWeakAreas = false;
      return;
    }

    _plan.refresh();
    _plan.subscriptionJustEnded.addListener(_onSubscriptionJustEnded);
    _folderStore.addListener(_onStoreChanged);

    _loadHistory();
    _folderStore.load();
    _loadDrafts();
    _loadTodayMode();

    _recording.finishedSignal.addListener(_drainFinishedRecordings);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _drainFinishedRecordings());
  }

  @override
  void dispose() {
    if (!_guest) {
      _plan.subscriptionJustEnded.removeListener(_onSubscriptionJustEnded);
      _recording.finishedSignal.removeListener(_drainFinishedRecordings);
      _folderStore.removeListener(_onStoreChanged);
    }
    _folderStore.dispose();
    _setsNotifier.dispose();
    _createProgress.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onStoreChanged() {
    if (mounted) setState(() {});
  }

  void _onSubscriptionJustEnded() {
    if (!_plan.subscriptionJustEnded.value || !mounted) return;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      await Navigator.push(
        context,
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (_) => const SubscriptionEndedScreen(),
        ),
      );
      _plan.acknowledgeSubscriptionEnded();
    });
  }

  /// Called by the shell after Analysis / Settings close.
  Future<void> reloadWeakAreas() => _loadWeakAreas();

  // ---------------------------------------------------------------- Loading

  Future<void> _loadTodayMode() async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getString(_kTodayModeKey);
    if (!mounted) return;
    if (stored == 'practice' || stored == 'review') {
      setState(() => _todayMode = stored!);
    }
  }

  Future<void> _flipTodayMode() async {
    final next = _todayMode == 'practice' ? 'review' : 'practice';
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kTodayModeKey, next);
    if (!mounted) return;
    setState(() => _todayMode = next);
  }

  void _syncNotifier() {
    _setsNotifier.value = List.unmodifiable(_studySets);
  }

  Future<void> _loadHistory() async {
    final entries = await _history.forModule(_moduleCode);
    if (!mounted) return;

    setState(() {
      _serverSets = entries;
      final serverIds = entries.map((e) => e.noteId).toSet();
      _localSets.removeWhere((id, _) => serverIds.contains(id));
      _loadingHistory = false;
    });
    _syncNotifier();

    await _loadRotation();
    await _loadWeakAreas();
  }

  Future<void> _loadRotation() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      if (!mounted) return;
      setState(() => _loadingRotation = false);
      return;
    }
    try {
      final state =
      await _rotationService.resolve(uid: uid, notes: _studySets);
      if (!mounted) return;
      setState(() {
        _rotation = state;
        _loadingRotation = false;
      });
    } catch (e) {
      debugPrint('Rotation resolve failed: $e');
      if (!mounted) return;
      setState(() => _loadingRotation = false);
    }
  }

  Future<void> _loadWeakAreas() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      if (!mounted) return;
      setState(() => _loadingWeakAreas = false);
      return;
    }
    final areas = await _weakAreasService.listUnresolved(uid);
    if (!mounted) return;
    setState(() {
      _weakAreas = areas;
      _loadingWeakAreas = false;
    });
  }

  // ----------------------------------------------------------------- Drafts

  String _draftOwnerKey(String id) => '$_kDraftOwnerPrefix$id';

  Future<String?> _draftOwner(String id) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_draftOwnerKey(id));
  }

  Future<void> _tagDraftOwner(String id, String uid) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_draftOwnerKey(id), uid);
  }

  Future<void> _untagDraftOwner(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_draftOwnerKey(id));
  }

  Future<void> _cleanupDraft(String draftId) async {
    try {
      await _drafts.delete(draftId);
      await _untagDraftOwner(draftId);
    } catch (e) {
      debugPrint('Cleanup draft failed: $e');
    }
    if (mounted) await _loadDrafts();
  }

  Future<void> _loadDrafts() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      if (mounted) setState(() => _savedUploads = []);
      return;
    }

    List<SavedUpload> all;
    try {
      all = await _drafts.list();
    } catch (e) {
      debugPrint('Loading drafts failed: $e');
      if (mounted) setState(() => _savedUploads = []);
      return;
    }

    final mine = <SavedUpload>[];
    for (final d in all) {
      final owner = await _draftOwner(d.id);
      if (owner == uid) {
        mine.add(d);
      } else if (owner == null) {
        // Untagged draft: can't tell whose it is, so discard it (privacy).
        try {
          await _drafts.delete(d.id);
        } catch (e) {
          debugPrint('Discarding legacy draft failed: $e');
        }
      }
    }
    if (mounted) setState(() => _savedUploads = mine);
  }

  Future<void> _openSavedUpload(SavedUpload d) async {
    final folderId =
    d.folderId != null && _folderStore.byId(d.folderId!) != null
        ? d.folderId
        : null;
    await _reviewAndCreate(
      d.sources,
      folderId: folderId,
      draftId: d.id,
      initialTitle: d.title,
    );
    if (mounted) _loadDrafts();
  }

  Future<void> _confirmDeleteSaved(SavedUpload d) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete saved upload?'),
        content: const Text(
            "The saved files will be removed from this browser. This can't be undone."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (ok != true) return;
    await _cleanupDraft(d.id);
  }

  // ------------------------------------------------------------ Small helpers

  void _snack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  String _timeAgo(DateTime at) {
    final diff = DateTime.now().difference(at);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return '${diff.inDays}d ago';
  }

  IconData _iconFor(NoteHistoryEntry entry) {
    final name = entry.sourceFileName;
    if (name.startsWith('Recording')) return Icons.mic_none_rounded;
    final ext = name.contains('.') ? name.split('.').last.toLowerCase() : '';
    switch (ext) {
      case 'pdf':
        return Icons.picture_as_pdf_outlined;
      case 'pptx':
        return Icons.slideshow_outlined;
      case 'docx':
        return Icons.description_outlined;
      default:
        return Icons.auto_stories_rounded;
    }
  }

  bool _filesPassCountLimit(int count) {
    final limits = _plan.limits;
    if (limits.unlimitedFiles) return true;
    if (count <= limits.filesPerUpload) return true;
    _snack(
      'Your ${limits.planId} plan allows up to '
          '${limits.filesPerUpload} files per upload. You picked $count.',
    );
    return false;
  }

  Future<NoteSource?> _platformFileToSource(PlatformFile f) async {
    if (kIsWeb) {
      try {
        final bytes = await f.readAsBytes();
        if (bytes.isEmpty) return null;
        return NoteSource.file(bytes: bytes, name: f.name);
      } catch (e) {
        debugPrint('Reading file bytes failed: $e');
        return null;
      }
    }
    return NoteSource.file(path: f.path, name: f.name);
  }

  Future<NoteSource?> _photoToSource(XFile photo, String name) async {
    if (kIsWeb) {
      try {
        final bytes = await photo.readAsBytes();
        if (bytes.isEmpty) return null;
        return NoteSource.photo(bytes: bytes, name: name);
      } catch (e) {
        debugPrint('Reading photo bytes failed: $e');
        return null;
      }
    }
    return NoteSource.photo(path: photo.path, name: name);
  }

  void _setPreparing(bool value) {
    if (!mounted) return;
    setState(() => _preparingUpload = value);
  }

  // ------------------------------------------------------- Creating notes

  Future<void> _reviewAndCreate(
      List<NoteSource> sources, {
        String? folderId,
        String? draftId,
        String? initialTitle,
      }) async {
    if (sources.isEmpty || !mounted) return;

    var activeDraftId = draftId;

    Future<NoteGenerationResult> gatedCreate(
        NoteGenerationRequest request) async {
      final limits = _plan.limits;
      final remaining = await _quota.remaining(limits);

      if (remaining <= 0) {
        String? savedId;
        try {
          savedId = await _drafts.save(
            draftId: activeDraftId,
            sources: request.sources,
            title: request.title,
            folderId: folderId,
          );
          activeDraftId = savedId;
          if (savedId != null) {
            final uid = FirebaseAuth.instance.currentUser?.uid;
            if (uid != null) await _tagDraftOwner(savedId, uid);
          }
        } catch (e) {
          debugPrint('Saving upload failed: $e');
        }
        await _loadDrafts();

        throw UploadLimitException(
          planId: limits.planId,
          windowLabel: limits.windowLabel,
          uploadsPerWindow: limits.uploadsPerWindow,
          savedForLater: savedId != null,
        );
      }

      return _flow.create(request);
    }

    _setPreparing(false);

    final result = await Navigator.push<NoteGenerationResult>(
      context,
      MaterialPageRoute(
        builder: (_) => CreateNotesScreen(
          initialSources: sources,
          initialTitle: initialTitle,
          isDraft: draftId != null,
          onCreate: gatedCreate,
          onRetryWithClarification:
              (request, pending, clarText, supportFile) {
            return _flow.retryWithClarification(
              pending: pending,
              clarificationText: clarText,
              supportFile: supportFile,
            );
          },
          notice: _reviewNotice,
          progress: _createProgress,
        ),
      ),
    );

    if (!mounted) return;

    final created = _flow.created;
    _flow.created = null;

    if (result == null) return;

    if (created == null) {
      _snack(result.message ?? 'Notes created.');
      return;
    }

    final entry = NoteHistoryEntry(
      noteId: created.noteId,
      moduleCode: _moduleCode,
      moduleTitle: _moduleTitle,
      sourceFileName: created.displayName,
      storagePath: created.storagePath,
      parts: [List<String>.of(created.part.notes)],
      hasMore: created.part.hasMore,
      progressPercent: created.part.progressPercent,
      createdAt: DateTime.now(),
    );

    setState(() => _localSets[entry.noteId] = entry);
    if (folderId != null && _folderStore.byId(folderId) != null) {
      _folderStore.addNote(folderId, entry.noteId);
    }
    _syncNotifier();

    final readerClosed = _openStudySet(entry, instant: true);

    unawaited(_quota.recordUpload(planId: _plan.limits.planId));
    final finishedDraft = activeDraftId;
    if (finishedDraft != null) unawaited(_cleanupDraft(finishedDraft));
    unawaited(_loadHistory());

    await readerClosed;
  }

  Future<void> _openStudySet(
      NoteHistoryEntry entry, {
        bool instant = false,
      }) async {
    final Widget reader = NotesReaderScreen(
      title: entry.sourceFileName,
      moduleCode: _moduleCode,
      moduleTitle: _moduleTitle,
      noteId: entry.noteId,
      storagePath: entry.storagePath.isEmpty ? null : entry.storagePath,
      parts: entry.parts,
      hasMore: entry.hasMore,
      initialProgressPercent: entry.progressPercent,
      subject: entry.subject,
      accent: WebPalette.indigo,
      onChanged: (parts, hasMore) {
        final local = _localSets[entry.noteId];
        if (local == null) return;
        _localSets[entry.noteId] = NoteHistoryEntry(
          noteId: local.noteId,
          moduleCode: local.moduleCode,
          moduleTitle: local.moduleTitle,
          sourceFileName: local.sourceFileName,
          storagePath: local.storagePath,
          parts: parts.map((p) => List<String>.of(p)).toList(),
          hasMore: hasMore,
          progressPercent: local.progressPercent,
          createdAt: local.createdAt,
        );
        _syncNotifier();
      },
    );

    if (instant) {
      await Navigator.push<void>(
        context,
        PageRouteBuilder<void>(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: const Duration(milliseconds: 180),
          pageBuilder: (_, __, ___) => reader,
        ),
      );
    } else {
      await Navigator.push<void>(
        context,
        MaterialPageRoute(builder: (_) => reader),
      );
    }

    if (!mounted) return;
    _loadHistory();
  }

  // ------------------------------------------------------------ Add material

  /// Shows the Add Study Material modal. Guests are asked to sign in first.
  Future<void> _addMaterial({String? folderId}) async {
    if (_guest) {
      widget.onNeedSignIn();
      return;
    }
    final kind = await showWebAddMaterial(context);
    if (kind == null || !mounted) return;

    switch (kind) {
      case WebAddKind.record:
        _recordingFolderId = folderId;
        RecordingScreen.launch(context);
      case WebAddKind.photos:
        await _pickPhotos(folderId);
      case WebAddKind.file:
        await _pickFile(folderId);
      case WebAddKind.text:
        await _enterText(folderId);
      case WebAddKind.link:
        await _enterLink(folderId);
    }
  }

  Future<void> _drainFinishedRecordings() async {
    if (_draining || !mounted) return;
    _draining = true;
    try {
      var done = _recording.takeFinished();
      if (done.isNotEmpty) {
        final folderId = _recordingFolderId;
        _recordingFolderId = null;
        while (done.isNotEmpty && mounted) {
          for (final r in done) {
            if (!mounted) break;
            await _reviewAndCreate(
              [NoteSource.recording(r)],
              folderId: folderId,
            );
          }
          done = _recording.takeFinished();
        }
      }
    } finally {
      _draining = false;
    }
  }

  Future<void> _pickPhotos(String? folderId) async {
    _setPreparing(true);
    try {
      final images = await _imagePicker.pickMultiImage(
        maxWidth: 2200,
        maxHeight: 2200,
        imageQuality: 85,
      );
      if (images.isEmpty || !mounted) return;
      if (!_filesPassCountLimit(images.length)) return;

      final sources = <NoteSource>[];
      for (final i in images) {
        final s = await _photoToSource(i, i.name);
        if (s != null) sources.add(s);
      }
      if (sources.isEmpty) {
        _snack("Couldn't read those photos. Please try again.");
        return;
      }
      await _reviewAndCreate(sources, folderId: folderId);
    } on PlatformException catch (e) {
      _snack("Couldn't open your photos: ${e.message ?? e.code}");
    } catch (e) {
      _snack("Couldn't open your photos: $e");
    } finally {
      _setPreparing(false);
    }
  }

  Future<void> _pickFile(String? folderId) async {
    _setPreparing(true);
    try {
      final picked = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: _documentExtensions,
      );
      if (picked.isEmpty || !mounted) return;
      if (!_filesPassCountLimit(picked.length)) return;

      final sources = <NoteSource>[];
      for (final f in picked) {
        final s = await _platformFileToSource(f);
        if (s != null) sources.add(s);
      }
      if (sources.isEmpty) {
        _snack("Couldn't read that file. Please try again.");
        return;
      }
      await _reviewAndCreate(sources, folderId: folderId);
    } catch (e) {
      _snack("Couldn't open the file picker: $e");
    } finally {
      _setPreparing(false);
    }
  }

  Future<void> _enterText(String? folderId) async {
    final text = await showWebTextEntry(context);
    if (text == null || text.isEmpty || !mounted) return;
    await _reviewAndCreate([NoteSource.text(text)], folderId: folderId);
  }

  Future<void> _enterLink(String? folderId) async {
    final raw = await showWebLinkEntry(context);
    if (raw == null || raw.isEmpty || !mounted) return;

    final source = NoteSource.tryLink(raw);
    if (source == null) {
      _snack("That doesn't look like a valid link.");
      return;
    }
    await _reviewAndCreate([source], folderId: folderId);
  }

  // -------------------------------------------------------- Rename / delete

  Future<void> _renameNote(NoteHistoryEntry entry) async {
    final controller = TextEditingController(text: entry.sourceFileName);

    final newName = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Rename notes'),
        content: SizedBox(
          width: 380,
          child: TextField(
            controller: controller,
            autofocus: true,
            maxLength: 80,
            decoration: const InputDecoration(
              hintText: 'New name',
              counterText: '',
              border: OutlineInputBorder(),
            ),
            onSubmitted: (v) {
              final n = v.trim();
              if (n.isNotEmpty) Navigator.pop(ctx, n);
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final n = controller.text.trim();
              if (n.isEmpty) return;
              Navigator.pop(ctx, n);
            },
            style:
            ElevatedButton.styleFrom(backgroundColor: WebPalette.indigo),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    if (newName == null || newName == entry.sourceFileName) return;

    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('generated_notes')
          .doc(entry.noteId)
          .update({'sourceFileName': newName});

      final local = _localSets[entry.noteId];
      if (local != null) {
        _localSets[entry.noteId] = NoteHistoryEntry(
          noteId: local.noteId,
          moduleCode: local.moduleCode,
          moduleTitle: local.moduleTitle,
          sourceFileName: newName,
          storagePath: local.storagePath,
          parts: local.parts,
          hasMore: local.hasMore,
          progressPercent: local.progressPercent,
          createdAt: local.createdAt,
        );
        _syncNotifier();
      }

      await _loadHistory();
      _snack('Renamed to "$newName".');
    } catch (e) {
      debugPrint('Rename failed: $e');
      _snack("Couldn't rename those notes. Please try again.");
    }
  }

  Future<void> _confirmDelete(NoteHistoryEntry entry) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Delete these notes?'),
        content: Text(
          '"${entry.sourceFileName}" and everything generated from it '
              "will be permanently deleted.\n\nThis can't be undone.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text(
              'Delete',
              style:
              TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    final deleted = await _history.delete(entry.noteId);
    if (!mounted) return;
    if (!deleted) {
      _snack("Those notes couldn't be deleted.");
      return;
    }

    _localSets.remove(entry.noteId);
    _folderStore.removeNoteEverywhere(entry.noteId);
    await _loadHistory();
  }

  // ---------------------------------------------------------------- Folders

  Future<StudyFolder?> _showFolderDialog({StudyFolder? existing}) async {
    final controller = TextEditingController(text: existing?.name ?? '');
    Color selected = existing?.color ?? _folderColors.first.color;
    final isEdit = existing != null;

    return showDialog<StudyFolder>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialog) => AlertDialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(isEdit ? 'Edit Folder' : 'New Folder'),
          content: SizedBox(
            width: 380,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: controller,
                  autofocus: true,
                  decoration: const InputDecoration(hintText: 'Folder name'),
                ),
                const SizedBox(height: 18),
                const Text('Colour',
                    style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: _folderColors.map((c) {
                    final on = c.color.toARGB32() == selected.toARGB32();
                    return GestureDetector(
                      onTap: () => setDialog(() => selected = c.color),
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: c.color,
                          shape: BoxShape.circle,
                          border: on
                              ? Border.all(color: Colors.black87, width: 2.5)
                              : null,
                        ),
                        child: on
                            ? const Icon(Icons.check,
                            color: Colors.white, size: 18)
                            : null,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final name = controller.text.trim();
                if (name.isEmpty) return;
                Navigator.pop(
                  ctx,
                  StudyFolder(
                    id: existing?.id ?? _newFolderId(),
                    name: name,
                    colorValue: selected.toARGB32(),
                    noteIds: existing?.noteIds ?? const {},
                    createdAt: existing?.createdAt ?? DateTime.now(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: WebPalette.indigo),
              child: Text(isEdit ? 'Save' : 'Create',
                  style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _createFolder() async {
    if (_guest) {
      widget.onNeedSignIn();
      return;
    }
    final result = await _showFolderDialog();
    if (result == null) return;
    _folderStore.add(result);
  }

  Future<void> _editFolder(StudyFolder folder) async {
    final updated = await _showFolderDialog(existing: folder);
    if (updated == null) return;
    _folderStore.update(updated);
  }

  Future<void> _confirmDeleteFolder(StudyFolder folder) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete this folder?'),
        content: Text(
          '"${folder.name}" will be removed. The notes inside it will stay in '
              'your library.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    _folderStore.delete(folder.id);
  }

  Future<void> _openFolder(String folderId) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (_) => _WebFolderPage(
          folderId: folderId,
          store: _folderStore,
          allSets: _setsNotifier,
          onAddNew: (id) => _addMaterial(folderId: id),
          onOpenNote: _openStudySet,
          onRename: _renameNote,
          iconFor: _iconFor,
          timeAgo: _timeAgo,
        ),
      ),
    );
  }

  // --------------------------------------------------------- Today's task

  Future<void> _openPractice() async {
    final entry = _rotation?.note;
    if (entry == null) return;
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    await _rotationService.touch(uid: uid, noteId: entry.noteId);
    if (!mounted) return;

    final completed = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => PracticeScreen(
          noteId: entry.noteId,
          sourceFileName: entry.sourceFileName,
          moduleCode: _moduleCode,
          moduleTitle: _moduleTitle,
        ),
      ),
    );
    if (!mounted) return;

    if (completed == true) {
      await _rotationService.markCompleted(uid: uid, noteId: entry.noteId);
      await _loadRotation();
      await _flipTodayMode();
    }
    await _loadWeakAreas();
  }

  Future<void> _openReview(WeakArea area) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    final resolved = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => ReviewWeakAreaScreen(area: area, uid: uid),
      ),
    );
    if (!mounted) return;
    if (resolved == true) {
      await _loadWeakAreas();
      await _flipTodayMode();
    }
  }

  // ------------------------------------------------------------------ Search

  List<NoteHistoryEntry> _matching(List<NoteHistoryEntry> source) {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return source;
    return source.where((e) {
      if (e.sourceFileName.toLowerCase().contains(q)) return true;
      for (final part in e.parts) {
        for (final line in part) {
          if (line.toLowerCase().contains(q)) return true;
        }
      }
      return false;
    }).toList();
  }

  // ------------------------------------------------------------------ Build

  @override
  Widget build(BuildContext context) {
    final p = WebPalette.of(context);

    final searching = _query.trim().isNotEmpty;
    final notes =
    searching ? _matching(_studySets) : _unfiledSets;
    final folders = _folderStore.folders;
    final hasNotes = _studySets.isNotEmpty;

    final showTask = !_guest &&
        hasNotes &&
        !_loadingRotation &&
        !_loadingWeakAreas &&
        ((_rotation != null &&
            _rotation!.kind != PracticeRotationKind.noUploads) ||
            _weakAreas.isNotEmpty);

    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            if (_guest) return;
            await Future.wait([
              _loadHistory(),
              _folderStore.load(),
              _plan.refresh(),
              _loadDrafts(),
            ]);
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 110),
            child: Center(
              child: ConstrainedBox(
                constraints:
                const BoxConstraints(maxWidth: WebConfig.contentMaxWidth),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _header(p),
                    const SizedBox(height: 18),
                    if (_showHero) ...[
                      _hero(),
                      const SizedBox(height: 22),
                    ],
                    _searchBar(p),
                    const SizedBox(height: 26),
                    _heading('Folders', p),
                    const SizedBox(height: 14),
                    _folderGrid(p, folders),
                    if (showTask) ...[
                      const SizedBox(height: 26),
                      _todaysTask(p),
                    ],
                    if (_savedUploads.isNotEmpty) ...[
                      const SizedBox(height: 26),
                      _heading('Saved uploads', p),
                      const SizedBox(height: 6),
                      Text(
                        'Your material is safe. Create notes from it once you '
                            'upgrade or your next upload window starts.',
                        style: TextStyle(
                            fontSize: 13, color: p.subtitle, height: 1.4),
                      ),
                      const SizedBox(height: 14),
                      _grid([
                        for (final d in _savedUploads) _savedTile(p, d),
                      ]),
                    ],
                    const SizedBox(height: 26),
                    _heading(searching ? 'Search results' : 'Your Notes', p),
                    const SizedBox(height: 14),
                    _notesSection(p, notes, searching),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Add-material button (bottom right, like the mock-up).
        Positioned(
          right: 28,
          bottom: 26,
          child: FloatingActionButton(
            tooltip: 'Add study material',
            onPressed: () => _addMaterial(),
            backgroundColor: WebPalette.indigo,
            child: const Icon(Icons.add, color: Colors.white, size: 30),
          ),
        ),

        if (_preparingUpload)
          Positioned.fill(
            child: ColoredBox(
              color: Colors.black.withValues(alpha: 0.35),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: p.card,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(color: WebPalette.indigo),
                      SizedBox(height: 14),
                      Text('Preparing your upload...',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _header(WebPalette p) {
    return Row(
      children: [
        Expanded(
          child: ValueListenableBuilder<String>(
            valueListenable: PreferredNameNotifier.value,
            builder: (context, name, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome,',
                    style: TextStyle(fontSize: 13, color: p.subtitle)),
                Text(
                  _guest ? 'Guest' : name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: p.text,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (_guest)
          ElevatedButton(
            onPressed: widget.onNeedSignIn,
            style: ElevatedButton.styleFrom(
              backgroundColor: WebPalette.indigo,
              foregroundColor: Colors.white,
              elevation: 0,
              padding:
              const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child: const Text('Sign in/up',
                style: TextStyle(fontWeight: FontWeight.w700)),
          ),
      ],
    );
  }

  Widget _heading(String text, WebPalette p) => Text(
    text,
    style: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w800,
      color: p.text,
    ),
  );

  BoxDecoration _cardDecoration(WebPalette p, {Color? border}) => BoxDecoration(
    color: p.card,
    borderRadius: BorderRadius.circular(16),
    border: border == null ? null : Border.all(color: border),
    boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0x0F000000))],
  );

  /// Responsive grid of tiles: as many 250-320px columns as fit.
  Widget _grid(List<Widget> children) {
    return LayoutBuilder(
      builder: (context, box) {
        const gap = 14.0;
        final cols = (box.maxWidth / 290).floor().clamp(1, 4);
        final width = (box.maxWidth - gap * (cols - 1)) / cols;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final c in children) SizedBox(width: width, child: c),
          ],
        );
      },
    );
  }

  Widget _searchBar(WebPalette p) {
    return Container(
      decoration: BoxDecoration(
        color: p.card,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(blurRadius: 12, color: Color(0x12000000))],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Icon(Icons.search, color: p.subtitle),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: _searchController,
              enabled: !_guest,
              onChanged: (v) => setState(() => _query = v),
              style: TextStyle(color: p.text),
              decoration: InputDecoration(
                hintText: 'Search by file name or keyword inside notes...',
                hintStyle: TextStyle(color: p.subtitle),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
          if (_query.isNotEmpty)
            IconButton(
              tooltip: 'Clear',
              icon: Icon(Icons.close_rounded, color: p.subtitle, size: 20),
              onPressed: () {
                _searchController.clear();
                setState(() => _query = '');
              },
            ),
        ],
      ),
    );
  }

  Widget _hero() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(gradient: WebPalette.gradient),
        child: Stack(
          children: [
            Positioned(
              top: -40,
              right: -30,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.08),
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              left: -20,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.06),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 540),
                    child: const Text(
                      'Turn lecture slides, notes, or recordings into clear, '
                          'well-structured study material, or simply ask a '
                          'question and get instant answers.',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.5, height: 1.45),
                    ),
                  ),
                  const SizedBox(height: 22),
                  ElevatedButton(
                    onPressed: () => _addMaterial(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: WebPalette.deepIndigo,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Get Started',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_forward, size: 18),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _folderGrid(WebPalette p, List<StudyFolder> folders) {
    final create = InkWell(
      borderRadius: BorderRadius.circular(18),
      hoverColor: WebPalette.indigo.withValues(alpha: 0.06),
      onTap: _createFolder,
      child: SizedBox(
        height: 100,
        child: _WebDashedBox(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.create_new_folder_outlined,
                  color: WebPalette.indigo, size: 28),
              SizedBox(height: 8),
              Text('Create Folder',
                  style: TextStyle(
                      color: WebPalette.indigo, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );

    return _grid([
      create,
      for (final f in folders) _folderTile(p, f),
    ]);
  }

  Widget _folderTile(WebPalette p, StudyFolder folder) {
    final count = folder.noteIds.length;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _openFolder(folder.id),
      child: Container(
        height: 100,
        padding: const EdgeInsets.fromLTRB(14, 12, 4, 12),
        decoration: _cardDecoration(p),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: folder.color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.folder_rounded, color: folder.color, size: 22),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    folder.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: p.text, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '$count ${count == 1 ? 'note' : 'notes'}',
                    style: TextStyle(fontSize: 12, color: p.subtitle),
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_vert, color: p.subtitle, size: 20),
              onSelected: (v) {
                if (v == 'edit') _editFolder(folder);
                if (v == 'delete') _confirmDeleteFolder(folder);
              },
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'edit', child: Text('Edit')),
                PopupMenuItem(value: 'delete', child: Text('Delete')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _notesSection(
      WebPalette p, List<NoteHistoryEntry> notes, bool searching) {
    if (_guest) {
      return _emptyCard(
        p,
        'No notes yet. Tap Get Started above to add your first one.',
      );
    }
    if (_loadingHistory) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Center(
            child: CircularProgressIndicator(color: WebPalette.indigo)),
      );
    }
    if (_studySets.isEmpty) {
      return _emptyCard(
        p,
        'No notes yet. Tap Get Started above to add your first one.',
      );
    }
    if (notes.isEmpty) {
      return _emptyCard(
        p,
        searching
            ? 'No notes match "${_query.trim()}".'
            : 'All of your notes are tucked into folders. Open a folder to '
            'see them.',
      );
    }
    return _grid([for (final n in notes) _noteTile(p, n)]);
  }

  Widget _emptyCard(WebPalette p, String message) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: _cardDecoration(p),
      child: Text(message, style: TextStyle(color: p.subtitle)),
    );
  }

  Widget _noteTile(WebPalette p, NoteHistoryEntry entry) {
    final parts = entry.parts.length;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _openStudySet(entry),
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 12, 4, 12),
        decoration: _cardDecoration(p),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: WebPalette.indigo.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(_iconFor(entry), color: WebPalette.indigo, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.sourceFileName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: p.text, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '$parts ${parts == 1 ? 'part' : 'parts'}'
                        '${entry.hasMore ? ' · more to generate' : ''}'
                        ' · ${_timeAgo(entry.createdAt)}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: p.subtitle),
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_vert, color: p.subtitle, size: 20),
              onSelected: (v) {
                if (v == 'rename') _renameNote(entry);
                if (v == 'delete') _confirmDelete(entry);
              },
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'rename', child: Text('Rename')),
                PopupMenuItem(value: 'delete', child: Text('Delete')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _savedTile(WebPalette p, SavedUpload d) {
    const amber = Color(0xffF59E0B);
    final count = d.sources.length;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _openSavedUpload(d),
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 12, 4, 12),
        decoration: _cardDecoration(p, border: amber.withValues(alpha: 0.4)),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: amber.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.lock_outline_rounded,
                  color: amber, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    d.displayName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: p.text, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '$count ${count == 1 ? 'item' : 'items'} · saved '
                        '${_timeAgo(d.createdAt)}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: p.subtitle),
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_vert, color: p.subtitle, size: 20),
              onSelected: (v) {
                if (v == 'delete') _confirmDeleteSaved(d);
              },
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'delete', child: Text('Delete')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------- Today's task

  Widget _todaysTask(WebPalette p) {
    if (_todayMode == 'review' && _weakAreas.isNotEmpty) {
      final count = _weakAreas.length;
      final newest = _weakAreas.first;
      return _taskCard(
        heading: "Today's Task",
        label: 'REVIEW NEEDED',
        title:
        count == 1 ? 'One question to review' : '$count questions to review',
        body: 'From "${newest.sourceFileName}"'
            '${count > 1 ? " and ${count - 1} more" : ''}.',
        actionLabel: 'Review',
        actionIcon: Icons.refresh_rounded,
        onAction: () => _openReview(newest),
        sideIcon: Icons.bar_chart_rounded,
        sideTooltip: 'See all',
        onSide: widget.onOpenAnalysis,
        p: p,
      );
    }

    final state = _rotation;
    if (state == null) return const SizedBox.shrink();

    // The "all done" card stays on the mobile screen for now; on web the
    // section simply hides until there is something to do.
    if (state.kind == PracticeRotationKind.allDone) {
      return const SizedBox.shrink();
    }

    final entry = state.note;
    if (entry == null) return const SizedBox.shrink();

    return _taskCard(
      heading: "Today's Task",
      label: 'PRACTICE FROM YOUR NOTES',
      title: entry.sourceFileName,
      body: '5 exam-style questions at a time, marked by AI. '
          'Answer them all before you unlock the next set.',
      actionLabel: 'Practice',
      actionIcon: Icons.play_arrow_rounded,
      onAction: _openPractice,
      p: p,
    );
  }

  Widget _taskCard({
    required String heading,
    required String label,
    required String title,
    required String body,
    required String actionLabel,
    required IconData actionIcon,
    required VoidCallback onAction,
    IconData? sideIcon,
    String? sideTooltip,
    VoidCallback? onSide,
    required WebPalette p,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _heading(heading, p),
        const SizedBox(height: 14),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: WebPalette.gradient,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 16,
                color: WebPalette.indigo.withValues(alpha: 0.25),
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.white70, fontSize: 13.5, height: 1.45),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: onAction,
                    icon: Icon(actionIcon, size: 20),
                    label: Text(actionLabel,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: WebPalette.deepIndigo,
                      elevation: 0,
                      minimumSize: const Size(140, 46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  if (sideIcon != null) ...[
                    const SizedBox(width: 10),
                    IconButton(
                      tooltip: sideTooltip,
                      onPressed: onSide,
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white.withValues(alpha: 0.18),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(46, 46),
                      ),
                      icon: Icon(sideIcon),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ===========================================================================
// Folder page (web version of the mobile folder detail screen)
// ===========================================================================

class _WebFolderPage extends StatelessWidget {
  final String folderId;
  final FolderStore store;
  final ValueListenable<List<NoteHistoryEntry>> allSets;
  final void Function(String folderId) onAddNew;
  final void Function(NoteHistoryEntry entry) onOpenNote;
  final void Function(NoteHistoryEntry entry) onRename;
  final IconData Function(NoteHistoryEntry entry) iconFor;
  final String Function(DateTime at) timeAgo;

  const _WebFolderPage({
    required this.folderId,
    required this.store,
    required this.allSets,
    required this.onAddNew,
    required this.onOpenNote,
    required this.onRename,
    required this.iconFor,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    final p = WebPalette.of(context);

    return AnimatedBuilder(
      animation: Listenable.merge([store, allSets]),
      builder: (context, _) {
        final folder = store.byId(folderId);
        if (folder == null) {
          return Scaffold(
            backgroundColor: p.bg,
            appBar: AppBar(
                backgroundColor: p.card,
                foregroundColor: p.text,
                elevation: 0),
            body: const Center(child: Text('This folder no longer exists.')),
          );
        }

        final notes = allSets.value
            .where((e) => folder.noteIds.contains(e.noteId))
            .toList()
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        final unfiled = allSets.value
            .where((e) => !store.allFolderedNoteIds.contains(e.noteId))
            .toList();

        return Scaffold(
          backgroundColor: p.bg,
          appBar: AppBar(
            backgroundColor: p.card,
            foregroundColor: p.text,
            elevation: 0,
            title: Row(
              children: [
                Icon(Icons.folder_rounded, color: folder.color, size: 22),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    folder.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: p.text, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                tooltip: 'Add from existing uploads',
                icon: const Icon(Icons.library_add_outlined),
                onPressed: unfiled.isEmpty
                    ? null
                    : () => _pickExisting(context, folder, unfiled, p),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => onAddNew(folder.id),
            backgroundColor: folder.color,
            child: const Icon(Icons.add, color: Colors.white, size: 28),
          ),
          body: notes.isEmpty
              ? Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                'This folder is empty. Tap + to add material, or use the '
                    'top-right button to move existing notes in.',
                textAlign: TextAlign.center,
                style: TextStyle(color: p.subtitle, height: 1.5),
              ),
            ),
          )
              : Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: WebConfig.contentMaxWidth),
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(24, 20, 24, 100),
                itemCount: notes.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, i) {
                  final n = notes[i];
                  return InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => onOpenNote(n),
                    child: Container(
                      padding:
                      const EdgeInsets.fromLTRB(14, 12, 4, 12),
                      decoration: BoxDecoration(
                        color: p.card,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 10, color: Color(0x0F000000))
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(iconFor(n),
                              color: WebPalette.indigo, size: 22),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(n.sourceFileName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: p.text,
                                        fontWeight: FontWeight.w700)),
                                Text(timeAgo(n.createdAt),
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: p.subtitle)),
                              ],
                            ),
                          ),
                          PopupMenuButton<String>(
                            icon: Icon(Icons.more_vert,
                                color: p.subtitle, size: 20),
                            onSelected: (v) {
                              if (v == 'rename') onRename(n);
                              if (v == 'remove') {
                                store.removeNote(folder.id, n.noteId);
                              }
                            },
                            itemBuilder: (_) => const [
                              PopupMenuItem(
                                  value: 'rename', child: Text('Rename')),
                              PopupMenuItem(
                                  value: 'remove',
                                  child: Text('Remove from folder')),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void _pickExisting(BuildContext context, StudyFolder folder,
      List<NoteHistoryEntry> candidates, WebPalette p) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add to this folder'),
        content: SizedBox(
          width: 420,
          child: ListView(
            shrinkWrap: true,
            children: [
              for (final e in candidates)
                ListTile(
                  leading: Icon(iconFor(e), color: WebPalette.indigo),
                  title: Text(e.sourceFileName,
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                  onTap: () {
                    store.addNote(folder.id, e.noteId);
                    Navigator.pop(ctx);
                  },
                ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

/// Dashed rounded border used by the "Create Folder" card.
class _WebDashedBox extends StatelessWidget {
  final Widget child;

  const _WebDashedBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(),
      child: Center(child: child),
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = WebPalette.indigo.withValues(alpha: 0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Offset.zero & size,
        const Radius.circular(18),
      ));

    for (final metric in path.computeMetrics()) {
      double d = 0;
      while (d < metric.length) {
        canvas.drawPath(metric.extractPath(d, d + 7), paint);
        d += 12;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}