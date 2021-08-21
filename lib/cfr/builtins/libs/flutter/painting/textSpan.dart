import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadTextSpan({required HydroState luaState, required HydroTable table}) {
  table["textSpan"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextSpan(
          text: args[0]["text"],
          children: maybeUnBoxAndBuildArgument<InlineSpan, dynamic>(
              args[0]["children"],
              parentState: luaState),
          style: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
              args[0]["style"],
              parentState: luaState),
          semanticsLabel: args[0]["semanticsLabel"])
    ];
  });
}
