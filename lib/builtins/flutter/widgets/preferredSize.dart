import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadPreferredSize(l.HydroTable table) {
  table["preferredSize"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PreferredSize(
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        preferredSize: maybeUnwrapAndBuildArgument(args[0]["preferredSize"]),
        key: maybeUnwrapAndBuildArgument(args[0]["key"]),
      )
    ];
  });
}
