import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadBoxConstraints(
    {required HydroState luaState, required HydroTable table}) {
  table["boxConstraints"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BoxConstraints(
        minWidth: args[0]["minWidth"],
        maxWidth: args[0]["maxWidth"],
        minHeight: args[0]["minHeight"],
        maxHeight: args[0]["maxHeight"],
      )
    ];
  });
}
