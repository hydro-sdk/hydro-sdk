import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadToolbarOptions(
    {required HydroState luaState, required HydroTable table}) {
  table["toolbarOptions"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      ToolbarOptions(
        copy: args[0]["copy"],
        cut: args[0]["cut"],
        paste: args[0]["paste"],
        selectAll: args[0]["selectAll"],
      )
    ];
  });
}
