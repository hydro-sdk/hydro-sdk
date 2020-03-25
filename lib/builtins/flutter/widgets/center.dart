import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadCenter(HydroTable table) {
  table["center"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Center(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
