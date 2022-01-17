import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_android_volume_keydown/flutter_android_volume_keydown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamSubscription<HardwareButton>? subscription;
  @override
  void initState() {
    super.initState();
  }

  void startListening() {
    subscription = FlutterAndroidVolumeKeydown.stream.listen((event) {
      if (event == HardwareButton.volume_down) {
        print("Volume down received");
      } else if (event == HardwareButton.volume_up) {
        print("Volume up received");
      }
    });
  }

  void stopListening() {
    subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: startListening,
                  child: const Text("Start listening")),
              ElevatedButton(
                  onPressed: stopListening,
                  child: const Text("Stop listening")),
            ],
          ),
        ),
      ),
    );
  }
}
