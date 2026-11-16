import 'package:flutter/foundation.dart';

import '../models/note_source.dart';
import '../screens/recording_transcript_screen.dart';
import 'notes_job_service.dart';

enum TranscriptStatus { working, done, failed }

/// Where one recording's speech-to-text has got to.
class RecordingTranscriptState {
  final TranscriptStatus status;

  /// What to tell the student while it works ("Uploading... 40%").
  final String progress;

  /// The sections (filled when [status] is done).
  final List<TranscriptSectionView> sections;

  /// Where the audio was uploaded, once it has been. Creating notes reuses
  /// it instead of uploading again.
  final String? storagePath;

  /// The finished transcript job, once there is one. Creating notes reuses
  /// it instead of transcribing (and paying) again.
  final String? jobId;

  final String? error;

  const RecordingTranscriptState({
    required this.status,
    this.progress = '',
    this.sections = const [],
    this.storagePath,
    this.jobId,
    this.error,
  });
}

/// Turns a freshly stopped recording into readable text straight away, so the
/// student sees what Kepler heard on the Create Notes screen without having
/// to create notes first. Keyed by [NoteSource.id].
class RecordingTranscriber extends ChangeNotifier {
  RecordingTranscriber._();
  static final RecordingTranscriber instance = RecordingTranscriber._();

  final NotesJobService _jobs = NotesJobService();
  final Map<String, RecordingTranscriptState> _states = {};

  RecordingTranscriptState? stateOf(String sourceId) => _states[sourceId];

  /// Starts transcribing [source] unless that is already running or done.
  /// Pass [retry] to try again after a failure (the audio isn't re-uploaded
  /// if the first upload worked).
  Future<void> start(NoteSource source, {bool retry = false}) async {
    if (source.recording == null) return;

    final existing = _states[source.id];
    if (existing != null && existing.status != TranscriptStatus.failed) return;
    if (existing != null && !retry) return;

    var uploaded = existing?.storagePath;

    void set(RecordingTranscriptState s) {
      _states[source.id] = s;
      notifyListeners();
    }

    set(RecordingTranscriptState(
      status: TranscriptStatus.working,
      progress: 'Getting your recording ready...',
      storagePath: uploaded,
    ));

    try {
      final result = await _jobs.transcribeRecording(
        source: source,
        alreadyUploadedPath: uploaded,
        onUploaded: (path) => uploaded = path,
        onProgress: (message) => set(RecordingTranscriptState(
          status: TranscriptStatus.working,
          progress: message,
          storagePath: uploaded,
        )),
      );
      set(RecordingTranscriptState(
        status: TranscriptStatus.done,
        sections: result.sections,
        storagePath: result.storagePath,
        jobId: result.jobId,
      ));
    } on NotesJobException catch (e) {
      set(RecordingTranscriptState(
        status: TranscriptStatus.failed,
        error: e.message,
        storagePath: uploaded,
      ));
    } catch (e) {
      debugPrint('Transcribing failed: $e');
      set(RecordingTranscriptState(
        status: TranscriptStatus.failed,
        error: "We couldn't transcribe this recording. Please try again.",
        storagePath: uploaded,
      ));
    }
  }

  /// Forget a recording the student removed or discarded.
  void forget(String sourceId) {
    if (_states.remove(sourceId) != null) notifyListeners();
  }
}