import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadFittedBox({required HydroState luaState, required HydroTable table}) {
  table["fittedBox"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FittedBox(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        fit: maybeUnBoxEnum(values: BoxFit.values, boxedEnum: args[0]["fit"]),
        alignment: maybeUnBoxAndBuildArgument<Alignment, dynamic>(
            args[0]["alignment"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
