import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadBorderRadius({
  required HydroTable table,
  required HydroState hydroState,
}) {
  table["borderRadiusOnly"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      BorderRadius.only(
        topLeft: maybeUnBoxAndBuildArgument<Radius, dynamic>(
          args[0]["topLeft"],
          parentState: hydroState,
        ),
        topRight: maybeUnBoxAndBuildArgument<Radius, dynamic>(
          args[0]["topRight"],
          parentState: hydroState,
        ),
        bottomLeft: maybeUnBoxAndBuildArgument<Radius, dynamic>(
          args[0]["bottomLeft"],
          parentState: hydroState,
        ),
        bottomRight: maybeUnBoxAndBuildArgument<Radius, dynamic>(
          args[0]["bottomRight"],
          parentState: hydroState,
        ),
      )
    ];
  });
}
