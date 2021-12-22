import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAndroidVolumeKeydown {
  static const EventChannel _channel =
      EventChannel('dart-tools.dev/flutter_android_volume_keydown');
  static Stream<bool> stream = _channel.receiveBroadcastStream().cast<bool>();
}
