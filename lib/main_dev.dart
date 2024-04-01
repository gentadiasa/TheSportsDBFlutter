import 'package:flutter/material.dart';
import 'package:coding_challenge_bri/app/config/app_config.dart';
import 'package:coding_challenge_bri/app.dart';

bool _isDebugMode() {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() {
  final debug = _isDebugMode();
  AppConfig.appFlavor = debug ? Flavor.devDebug : Flavor.devRelease;
  runApp(const MyApp());
}
