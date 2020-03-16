import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
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
