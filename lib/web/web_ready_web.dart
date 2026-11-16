import 'dart:js_interop';

@JS('keplerReady')
external void _keplerReady();

void signalWebReady() {
  try {
    _keplerReady();
  } catch (_) {}
}
