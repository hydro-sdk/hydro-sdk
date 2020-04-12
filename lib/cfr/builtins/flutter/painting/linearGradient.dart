import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadLinearGradient({@required HydroState luaState, @required HydroTable table}) {
  table["linearGradient"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      LinearGradient(
          begin: maybeUnwrapAndBuildArgument<Alignment>(args[0]["begin"],
              parentState: luaState),
          end: maybeUnwrapAndBuildArgument<Alignment>(args[0]["end"],
              parentState: luaState),
          colors: maybeUnwrapAndBuildArgument<Color>(args[0]["colors"],
              parentState: luaState),
          tileMode:
              TileMode.values.firstWhere((x) => x.index == args[0]["tileMode"]))
    ];
  });
}
