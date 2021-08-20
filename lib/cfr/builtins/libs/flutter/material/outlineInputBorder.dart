import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadOutlineInputBorder(
    {required HydroState luaState, required HydroTable table}) {
  table["outlineInputBorder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      OutlineInputBorder(
        borderSide: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(
            args[0]["borderSide"],
            parentState: luaState),
        borderRadius: maybeUnBoxAndBuildArgument<BorderRadius, dynamic>(
            args[0]["borderRadius"],
            parentState: luaState),
        gapPadding: args[0]["gapPadding"]?.toDouble(),
      )
    ];
  });
}
