import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadTextAlignVertical(
    {required HydroState luaState, required HydroTable table}) {
  table["textAlignVertical"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextAlignVertical(y: args[0]["y"]),
    ];
  });
}
