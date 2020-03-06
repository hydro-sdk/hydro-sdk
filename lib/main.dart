import 'package:flua/runFromBundle.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromBundle(path: "assets/examples/basic-app-bar.lc"));
}
