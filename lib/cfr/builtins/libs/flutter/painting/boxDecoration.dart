import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadBoxDecoration(
    {required HydroState luaState, required HydroTable table}) {
  table["boxDecoration"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BoxDecoration(
          color: maybeUnBoxAndBuildArgument<Widget>(args[0]["color"],
              parentState: luaState),
          borderRadius: maybeUnBoxAndBuildArgument<BorderRadiusGeometry>(
              args[0]["borderRadius"],
              parentState: luaState),
          shape: maybeUnBoxEnum<BoxShape>(
              values: BoxShape.values, boxedEnum: args[0]["shape"])!,
          gradient: maybeUnBoxAndBuildArgument<Gradient>(args[0]["gradient"],
              parentState: luaState)),
    ];
  });
}
