import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../models/lecture_video.dart';

class VideoService {
  final _col = FirebaseFirestore.instance.collection('videos');

  Stream<List<LectureVideo>> watchVideos() => _col.snapshots().map(
        (s) => s.docs.map((d) => LectureVideo.fromMap(d.id, d.data())).toList(),
  );

  Future<void> addFromLink({required String url, required String title, required String course}) async {
    final id = YoutubePlayerController.convertUrlToId(url);
    if (id == null) throw Exception('Invalid YouTube link');
    await _col.add(LectureVideo(id: '', youtubeId: id, title: title, course: course).toMap());
  }
}