import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../widgets/video_embed.dart';

/// Plays one video. The player has its own bar (play/pause, a seek slider
/// you can drag back and forward, fullscreen). The buttons under it add a
/// quick "back 10 seconds / play-pause / forward 10 seconds".
class VideoPlayerPage extends StatefulWidget {
  final String videoId;
  final String title;
  const VideoPlayerPage({
    super.key,
    required this.videoId,
    required this.title,
  });

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late final YoutubePlayerController _c;
  bool _failed = false;
  String _errorName = '';
  bool _playing = false;

  @override
  void initState() {
    super.initState();
    // On the web the page uses a plain browser iframe (see build), so the
    // package player is not created there.
    if (kIsWeb) return;
    _c = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        strictRelatedVideos: true,
        playsInline: true,
        // THE FIX for the grey screen on phones. YouTube refuses to play
        // an embed that does not say where it is embedded from (errors
        // 152/153). On the web the browser sends this itself, so it is only
        // set for iOS/Android.
        origin: kIsWeb ? null : 'https://www.youtube-nocookie.com',
      ),
    );
    _c.listen((v) {
      if (!mounted) return;
      final playing = v.playerState == PlayerState.playing;
      final failed = v.hasError;
      if (playing != _playing || failed != _failed) {
        setState(() {
          _playing = playing;
          if (failed) {
            _failed = true;
            _errorName = v.error.name;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    if (!kIsWeb) _c.close();
    super.dispose();
  }

  Future<void> _skip(double seconds) async {
    final now = await _c.currentTime;
    await _c.seekTo(
      seconds: (now + seconds).clamp(0, double.infinity).toDouble(),
      allowSeekAhead: true,
    );
  }

  void _togglePlay() {
    if (_playing) {
      _c.pauseVideo();
    } else {
      _c.playVideo();
    }
  }

  Future<void> _openOnYoutube() {
    return launchUrl(
      Uri.parse('https://www.youtube.com/watch?v=${widget.videoId}'),
      mode: LaunchMode.externalApplication,
    );
  }

  Widget _buildWeb(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title, maxLines: 1)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 960),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: buildWebVideoEmbed(widget.videoId),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: TextButton.icon(
              onPressed: _openOnYoutube,
              icon: const Icon(Icons.open_in_new, size: 18),
              label: const Text('Open on YouTube'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return _buildWeb(context);

    return YoutubePlayerScaffold(
      controller: _c,
      aspectRatio: 16 / 9,
      builder: (context, player) => Scaffold(
        appBar: AppBar(title: Text(widget.title, maxLines: 1)),
        body: ListView(
          children: [
            player,
            if (!_failed)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'Back 10 seconds',
                      iconSize: 34,
                      icon: const Icon(Icons.replay_10_rounded),
                      onPressed: () => _skip(-10),
                    ),
                    const SizedBox(width: 12),
                    IconButton.filled(
                      tooltip: _playing ? 'Pause' : 'Play',
                      iconSize: 38,
                      icon: Icon(_playing
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded),
                      onPressed: _togglePlay,
                    ),
                    const SizedBox(width: 12),
                    IconButton(
                      tooltip: 'Forward 10 seconds',
                      iconSize: 34,
                      icon: const Icon(Icons.forward_10_rounded),
                      onPressed: () => _skip(10),
                    ),
                  ],
                ),
              ),
            if (_failed)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "This video can't play inside the app"
                          "${_errorName.isEmpty ? '' : ' ($_errorName)'}.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: _openOnYoutube,
                      child: const Text('Open on YouTube'),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}