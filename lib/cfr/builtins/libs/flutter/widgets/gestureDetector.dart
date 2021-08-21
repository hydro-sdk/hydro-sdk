import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadGestureDetector(
    {required HydroState luaState, required HydroTable table}) {
  table["gestureDetector"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      GestureDetector(
        behavior: HitTestBehavior.values
            .firstWhere((x) => x.index == args[0]["behavior"]),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
