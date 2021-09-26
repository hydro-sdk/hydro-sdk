import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadText({required HydroState luaState, required HydroTable table}) {
  table["text"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Text(
        args[0],
        key: args[1] != null
            ? maybeUnBoxAndBuildArgument<Widget, dynamic>(args[1]["key"],
                parentState: luaState)
            : null,
        style: args[1] != null
            ? maybeUnBoxAndBuildArgument<TextStyle, dynamic>(args[1]["style"],
                parentState: luaState)
            : null,
      )
    ];
  });
}
