import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_root_jailbreak_detection/flutter_root_jailbreak_detection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? _isJailbreak;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    bool isJailbreak = await FlutterRootJailbreakDetection.isJailbreak;

    if (!mounted) return;

    setState(() {
      _isJailbreak = isJailbreak;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('is Jailbreak: $_isJailbreak'),
        ),
      ),
    );
  }
}
