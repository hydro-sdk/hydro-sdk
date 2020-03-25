import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadAppBar(HydroTable table) {
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
