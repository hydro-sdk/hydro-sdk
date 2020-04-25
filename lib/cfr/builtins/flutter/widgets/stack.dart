import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadStack({@required HydroState luaState, @required HydroTable table}) {
  table["stack"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Stack(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        textDirection: TextDirection.values.firstWhere(
            (x) => x.index == args[0]["textDirection"],
            orElse: () => null),
        fit: StackFit.values
            .firstWhere((x) => x.index == args[0]["fit"], orElse: () => null),
        overflow: Overflow.values.firstWhere(
            (x) => x.index == args[0]["overflow"],
            orElse: () => null),
        children: maybeUnwrapAndBuildArgument<Widget>(args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
