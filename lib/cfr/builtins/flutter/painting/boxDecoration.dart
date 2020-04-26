import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadBoxDecoration(
    {@required HydroState luaState, @required HydroTable table}) {
  table["boxDecoration"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BoxDecoration(
          color: maybeUnwrapAndBuildArgument<Widget>(args[0]["color"],
              parentState: luaState),
          borderRadius: maybeUnwrapAndBuildArgument<BorderRadiusGeometry>(
              args[0]["borderRadius"],
              parentState: luaState),
          shape: maybeUnwrapEnum<BoxShape>(
              values: BoxShape.values, boxedEnum: args[0]["shape"]),
          gradient: maybeUnwrapAndBuildArgument<Gradient>(args[0]["gradient"],
              parentState: luaState)),
    ];
  });
}
