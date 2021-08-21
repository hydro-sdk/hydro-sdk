import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCircularProgressIndicator(
    {required HydroState luaState, required HydroTable table}) {
  table["circularProgressIndicator"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    dynamic arg = args.length >= 1 && args[0] != null ? args[0] : null;
    // debugger();
    return [
      CircularProgressIndicator(
        key: arg != null
            ? maybeUnBoxAndBuildArgument<Key, dynamic>(arg["key"],
                parentState: luaState)
            : null,
        backgroundColor: arg != null
            ? maybeUnBoxAndBuildArgument<Color, dynamic>(arg["backgrounColor"],
                parentState: luaState)
            : null,
        value: arg != null ? args[0]["value"] : null,
        valueColor: arg != null
            ? maybeUnBoxAndBuildArgument<Animation<Color>, dynamic>(
                arg["valueColor"],
                parentState: luaState)
            : null,
        strokeWidth: arg != null ? arg["strokeWidth"]?.toDouble() : 4.0,
        semanticsLabel: arg != null ? arg["semanticsLabel"] : null,
        semanticsValue: arg != null ? arg["semanticsValue"] : null,
      )
    ];
  });
}
