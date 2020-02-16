import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/maybeUnwrapAndBuildArgument.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadMaterialApp(l.Table table) {
  table["materialApp"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      MaterialApp(
        initialRoute: args[0]["initialRoute"],
        home: maybeUnwrapAndBuildArgument(args[0]["home"]),
      )
    ];
  });
}

