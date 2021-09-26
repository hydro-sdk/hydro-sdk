import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadStrutStyle({required HydroState luaState, required HydroTable table}) {
  table["strutStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      StrutStyle(
        fontFamily: args[0]["fontFamily"],
        fontFamilyFallback: maybeUnBoxAndBuildArgument<String, dynamic>(
            args[0]["fontFamilyFallback"],
            parentState: luaState),
        fontSize: args[0]["fontSize"],
        leading: args[0]["leading"],
        fontWeight: maybeUnBoxAndBuildArgument<FontWeight, dynamic>(
            args[0]["fontWeight"],
            parentState: luaState),
        fontStyle: maybeUnBoxAndBuildArgument<FontStyle, dynamic>(
            args[0]["fontStyle"],
            parentState: luaState),
        forceStrutHeight: args[0]["forceStrutHeight"],
        debugLabel: args[0]["debugLabel"],
        package: args[0]["package"],
      )
    ];
  });
}
