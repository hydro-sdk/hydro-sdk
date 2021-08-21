import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadClipRRect({required HydroState luaState, required HydroTable table}) {
  table["clipRRect"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ClipRRect(
        key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["ley"],
            parentState: luaState),
        borderRadius: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["borderRadius"],
            parentState: luaState),
        clipBehavior: maybeUnBoxEnum<Clip>(
            values: Clip.values, boxedEnum: args[0]["clipBehavior"])!,
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
