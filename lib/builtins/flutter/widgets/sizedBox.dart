import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadSizedBox(HydroTable table) {
  table["sizedBox"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SizedBox(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        width: args[0]["width"]?.toDouble(),
        height: args[0]["height"]?.toDouble(),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
