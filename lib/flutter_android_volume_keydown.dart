import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAndroidVolumeKeydown {
  static const EventChannel _channel =
      EventChannel('dart-tools.dev/flutter_android_volume_keydown');
  static Stream<HardwareButton> stream = _channel
      .receiveBroadcastStream()
      .cast<bool>()
      .map((event) =>
          event ? HardwareButton.volume_down : HardwareButton.volume_up);
}

enum HardwareButton { volume_up, volume_down }
