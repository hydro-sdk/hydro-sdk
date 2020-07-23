import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadOutlineInputBorder(
    {@required HydroState luaState, @required HydroTable table}) {
  table["outlineInputBorder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      OutlineInputBorder(
        borderSide: maybeUnBoxAndBuildArgument<BorderSide>(
            args[0]["borderSide"],
            parentState: luaState),
        borderRadius: maybeUnBoxAndBuildArgument<BorderRadius>(
            args[0]["borderRadius"],
            parentState: luaState),
        gapPadding: args[0]["gapPadding"]?.toDouble(),
      )
    ];
  });
}
