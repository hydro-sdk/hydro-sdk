import 'package:hydro_sdk/buildStub.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
    stubs: thunks,
      args: [],
      baseUrl:
          "https://github.com/chgibb/hydro-sdk/raw/master/dist/counter.hc"));
}
