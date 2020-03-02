
import 'package:flua/runFromBundle.dart';
import 'package:flutter/material.dart';

void main(String path) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromBundle(path: path));
}
