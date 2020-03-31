import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadAnimatedList({@required LuaState luaState, @required HydroTable table}) {
  table["animatedList"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedList(
        key: maybeUnwrapAndBuildArgument(args[0]["key"], parentState: luaState),
        initialItemCount: maybeUnwrapAndBuildArgument(
            args[0]["initialItemCount"],
            parentState: luaState),
        itemBuilder: (BuildContext context, int num, Animation anim) {
          Closure closure = args[0]["itemBuilder"];
          return maybeUnwrapAndBuildArgument(
              closure.dispatch([null, context, num, anim],
                  parentState: luaState)[0],
              parentState: luaState);
        },
      )
    ];
  });
}
