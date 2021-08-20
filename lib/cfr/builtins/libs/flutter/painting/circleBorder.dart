import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCircleBorder(
    {required HydroState luaState, required HydroTable table}) {
  table["circleBorder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CircleBorder(
          side: maybeUnBoxAndBuildArgument<BorderSide, dynamic>(args[0]["side"],
              parentState: luaState))
    ];
  });
}
