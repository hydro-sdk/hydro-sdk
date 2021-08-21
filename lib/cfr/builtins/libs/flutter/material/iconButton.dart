import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadIconButton({required HydroState luaState, required HydroTable table}) {
  table["iconButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconButton(
        icon: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["icon"],
            parentState: luaState),
        tooltip: args[0]["tooltip"],
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
