import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadIcon({required HydroState luaState, required HydroTable table}) {
  table["icon"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Icon(
          maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0],
              parentState: luaState),
          size: args.length >= 2 && args[1] != null && args[1]["size"] != null
              ? args[1]["size"].toDouble()
              : null,
          color: args.length >= 2 && args[1] != null
              ? maybeUnBoxAndBuildArgument<Widget, dynamic>(args[1]["color"],
                  parentState: luaState)
              : null)
    ];
  });
}
