import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart' as l;
import 'package:flutter/material.dart';

loadGestureDetector(l.HydroTable table) {
  table["gestureDetector"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      GestureDetector(
        behavior: HitTestBehavior.values
            .firstWhere((x) => x.index == args[0]["behavior"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.dispatch([]);
        },
      )
    ];
  });
}
