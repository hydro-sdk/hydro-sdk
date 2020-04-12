import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadAnimatedList({@required HydroState luaState, @required HydroTable table}) {
  table["animatedList"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedList(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        initialItemCount: maybeUnwrapAndBuildArgument<Widget>(
            args[0]["initialItemCount"],
            parentState: luaState),
        itemBuilder: (BuildContext context, int num, Animation anim) {
          Closure closure = args[0]["itemBuilder"];
          return maybeUnwrapAndBuildArgument<Widget>(
              closure.dispatch([null, context, num, anim],
                  parentState: luaState)[0],
              parentState: luaState);
        },
      )
    ];
  });
}
