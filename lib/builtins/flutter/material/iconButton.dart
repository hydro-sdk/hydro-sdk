import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadIconButton(l.HydroTable table) {
  table["iconButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconButton(
        icon: maybeUnwrapAndBuildArgument(args[0]["icon"]),
        tooltip: args[0]["tooltip"],
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([]);
        },
      )
    ];
  });
}
