# flutter_android_volume_keydown

A simple flutter plugin for Android that listens to the volume up down button. It blocks the buttons from changing the volume while listening for events.

# How to use

Using the plugin is very simple:

- Add flutter_android_volume_keydown to your pubspec.yaml
- Change your MainActivity.java or MainActivity.kt to extend FlutterAndroidVolumeKeydownActivity
- Implement a simple listener:

```dart
var subscription = FlutterAndroidVolumeKeydown.stream.listen((event) {
      if (event == HardwareButton.volume_down) {
        print("Volume down received");
      } else if (event == HardwareButton.volume_up) {
        print("Volume up received");
      }
    });
```

To stop listening:

```dart
subscription?.cancel();
```

While listening the Volume button events are not handled by Android, when you stop listening the buttons resume their normal functionality again.