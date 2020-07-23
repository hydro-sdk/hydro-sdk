import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadTextAlignVertical(
    {@required HydroState luaState, @required HydroTable table}) {
  table["textAlignVertical"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextAlignVertical(y: args[0]["y"]),
    ];
  });
}
