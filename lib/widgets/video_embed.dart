// Picks the right implementation: the real browser iframe on the web, and an
// empty stub everywhere else (phones use youtube_player_iframe instead).
export 'video_embed_stub.dart'
if (dart.library.js_interop) 'video_embed_web.dart';