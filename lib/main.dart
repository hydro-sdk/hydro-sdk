import 'package:flua/runFromBundle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {
  enableFlutterDriverExtension();
  runApp(RunFromBundle(path: "assets/apps/animated-list.lc"));
}
