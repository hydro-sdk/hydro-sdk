import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadCenter(l.HydroTable table) {
  table["center"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Center(
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
      )
    ];
  });
}
