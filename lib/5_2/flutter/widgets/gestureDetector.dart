import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/flutter/syntheticBox.dart';
import 'package:flua/5_2/table.dart' as l;
import 'package:flutter/material.dart';

loadGestureDetector(l.Table table) {
  table["gestureDetector"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      GestureDetector(
        behavior: HitTestBehavior.values
            .firstWhere((x) => x.index == args[0]["behavior"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"]),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.call([]);
        },
      )
    ];
  });
}
