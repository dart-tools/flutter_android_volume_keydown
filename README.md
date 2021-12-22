# flutter_android_volume_keydown

A simple flutter plugin for Android that listens to the volume down button. It blocks the button from lowering the volume while listening for events.

# How to use

Using the plugin is very simple:

- Add flutter_android_volume_keydown to your pubspec.yaml
- Change your MainActivity.java or MainActivity.kt to extend FlutterAndroidVolumeKeydownActivity
- Implement a simple listener:

```dart
var subscription = FlutterAndroidVolumeKeydown.stream.listen((event) {
      print("Volume Keydown received");
    });
```

To stop listening:

```dart
subscription?.cancel();
```

While listening the Volume Keydown events are not handled by Android, when you stop listening the button resumes its normal functionality again.