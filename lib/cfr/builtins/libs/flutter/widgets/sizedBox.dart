import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadSizedBox({required HydroState luaState, required HydroTable table}) {
  table["sizedBox"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SizedBox(
        key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
            parentState: luaState),
        width: args[0]["width"]?.toDouble(),
        height: args[0]["height"]?.toDouble(),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
