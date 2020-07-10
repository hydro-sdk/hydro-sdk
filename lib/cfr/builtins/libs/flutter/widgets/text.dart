import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadText({@required HydroState luaState, @required HydroTable table}) {
  table["text"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Text(
        args[0],
        key: args[1] != null
            ? maybeUnBoxAndBuildArgument<Widget>(args[1]["key"],
                parentState: luaState)
            : null,
        style: args[1] != null
            ? maybeUnBoxAndBuildArgument<Widget>(args[1]["style"],
                parentState: luaState)
            : null,
      )
    ];
  });
}
