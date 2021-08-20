import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadColumn({required HydroState luaState, required HydroTable table}) {
  table["column"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Column(
          mainAxisAlignment: maybeUnBoxEnum<MainAxisAlignment>(
              values: MainAxisAlignment.values,
              boxedEnum: args[0]["mainAxisAlignment"])!,
          mainAxisSize: maybeUnBoxEnum<MainAxisSize>(
              values: MainAxisSize.values, boxedEnum: args[0]["mainAxisSize"])!,
          crossAxisAlignment: maybeUnBoxEnum<CrossAxisAlignment>(
              values: CrossAxisAlignment.values,
              boxedEnum: args[0]["crossAxisAlignment"])!,
          children: maybeUnBoxAndBuildArgument<Widget, dynamic>(
              args[0]["children"],
              parentState: luaState))
    ];
  });
}
