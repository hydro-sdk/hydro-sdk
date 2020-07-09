import 'dart:async';

import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
      thunks: thunks,
      args: [],
      baseUrl: "http://localhost:5000/test/widget/changeNotifier-1.ts.hc"));
}
