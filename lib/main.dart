import 'dart:async';

import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
      thunks: thunks, args: [], baseUrl: "http://10.0.2.2:5000/unityGallery.hc"));
}
