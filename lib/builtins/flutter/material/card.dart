import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadCard(HydroTable table) {
  table["card"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Card(
          borderOnForeground: args[0]["borderOnForeground"],
          child: maybeUnwrapAndBuildArgument(args[0]["child"]),
          color: maybeUnwrapAndBuildArgument(args[0]["color"]))
    ];
  });
}
