import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadSizeTransition(
    {required HydroState luaState, required HydroTable table}) {
  table["sizeTransition"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SizeTransition(
        sizeFactor: maybeUnBoxAndBuildArgument<Animation<double>, dynamic>(
            args[0]["sizeFactor"],
            parentState: luaState),
        axis: Axis.values.firstWhere((x) => x.index == args[0]["axis"]),
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      ),
    ];
  });
}
