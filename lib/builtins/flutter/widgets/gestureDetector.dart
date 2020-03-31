import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadGestureDetector({@required LuaState luaState, @required HydroTable table}) {
  table["gestureDetector"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      GestureDetector(
        behavior: HitTestBehavior.values
            .firstWhere((x) => x.index == args[0]["behavior"]),
        child: maybeUnwrapAndBuildArgument(args[0]["child"],
            parentState: luaState),
        onTap: () {
          Closure closure = args[0]["onTap"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
