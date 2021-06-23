import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadTextSelection(
    {required HydroState luaState, required HydroTable table}) {
  table["textSelection"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextSelection(
        baseOffset: args[0]["baseOffset"],
        extentOffset: args[0]["extentOffset"],
        affinity: maybeUnBoxEnum(
            values: TextAffinity.values, boxedEnum: args[0]["affinity"]),
        isDirectional: args[0]["isDirectional"],
      )
    ];
  });
}
