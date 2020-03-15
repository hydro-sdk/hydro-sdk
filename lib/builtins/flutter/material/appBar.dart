import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadAppBar(l.Table table) {
  table["appBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AppBar(
        title: maybeUnwrapAndBuildArgument(args[0]["title"]),
        leading: maybeUnwrapAndBuildArgument(args[0]["leading"]),
        actions: maybeUnwrapAndBuildArgument(args[0]["actions"]),
        bottom: maybeUnwrapAndBuildArgument(args[0]["bottom"]),
      )
    ];
  });
}
