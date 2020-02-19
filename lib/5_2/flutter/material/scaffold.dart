import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadScaffold(l.Table table) {
  table["scaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Scaffold(
        appBar: maybeUnwrapAndBuildArgument(args[0]["appBar"]),
        body: maybeUnwrapAndBuildArgument(args[0]["body"]),
        floatingActionButton:
            maybeUnwrapAndBuildArgument(args[0]["floatingActionButton"]),
      )
    ];
  });
}
