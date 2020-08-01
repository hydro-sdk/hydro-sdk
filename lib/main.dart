import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RunFromNetwork(
    thunks: thunks,
    args: [],
    baseUrl: "",
    filePath: "cupertinoButton-1.ts.hc",
  ));
  // WidgetsFlutterBinding.ensureInitialized();
  // runApp(CupertinoApp(
  //       home: Scaffold(
  //     body: Center(
  //       child: CupertinoButton(
  //         color: CupertinoColors.activeGreen,
  //         child: Icon(CupertinoIcons.book),
  //         onPressed: () => null,
  //       ),
  //     ),
  //   )));
}
