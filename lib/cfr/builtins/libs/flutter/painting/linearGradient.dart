import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadLinearGradient(
    {required HydroState luaState, required HydroTable table}) {
  table["linearGradient"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      LinearGradient(
          begin: maybeUnBoxAndBuildArgument<Alignment, dynamic>(
              args[0]["begin"],
              parentState: luaState),
          end: maybeUnBoxAndBuildArgument<Alignment, dynamic>(args[0]["end"],
              parentState: luaState),
          colors: maybeUnBoxAndBuildArgument<Color, dynamic>(args[0]["colors"],
              parentState: luaState),
          tileMode: maybeUnBoxEnum<TileMode>(
              values: TileMode.values, boxedEnum: args[0]["tileMode"])!)
    ];
  });
}
