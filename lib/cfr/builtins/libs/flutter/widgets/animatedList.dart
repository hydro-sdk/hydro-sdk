import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadAnimatedList(
    {required HydroState luaState, required HydroTable table}) {
  table["animatedList"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedList(
        key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
            parentState: luaState),
        initialItemCount: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["initialItemCount"],
            parentState: luaState),
        itemBuilder: (BuildContext context, int num, Animation<double> anim) {
          Closure closure = args[0]["itemBuilder"];
          return maybeUnBoxAndBuildArgument<Widget, dynamic>(
              closure.dispatch([
                null,
                context,
                num,
                maybeBoxObject<Animation<double>>(
                    object: anim, hydroState: luaState, table: HydroTable())
              ], parentState: luaState)[0],
              parentState: luaState);
        },
      )
    ];
  });
}
