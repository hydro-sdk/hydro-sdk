import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadClipRRect(
    {@required HydroState luaState, @required HydroTable table}) {
  table["clipRRect"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ClipRRect(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["ley"],
            parentState: luaState),
        borderRadius: maybeUnwrapAndBuildArgument<Widget>(
            args[0]["borderRadius"],
            parentState: luaState),
        clipBehavior: maybeUnwrapEnum<Clip>(
            values: Clip.values, boxedEnum: args[0]["clipBehavior"]),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
