import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadHero({required HydroState luaState, required HydroTable table}) {
  table["hero"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Hero(
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        tag: args[0]["tag"],
        transitionOnUserGestures: args[0]["transitionOnUserGestures"],
      )
    ];
  });
}
