import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadRow({@required HydroState luaState, @required HydroTable table}) {
  table["row"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Row(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        mainAxisAlignment: MainAxisAlignment.values
            .firstWhere((x) => x.index == args[0]["mainAxisAlignment"]),
        mainAxisSize: MainAxisSize.values
            .firstWhere((x) => x.index == args[0]["mainAxisSize"]),
        crossAxisAlignment: CrossAxisAlignment.values
            .firstWhere((x) => x.index == args[0]["crossAxisAlignment"]),
        textDirection: TextDirection.values.firstWhere(
            (x) => x.index == args[0]["textDirection"],
            orElse: () => null),
        verticalDirection: VerticalDirection.values
            .firstWhere((x) => x.index == args[0]["verticalDirection"]),
        textBaseline: TextBaseline.values.firstWhere(
            (x) => x.index == args[0]["textBaseline"],
            orElse: () => null),
        children: maybeUnwrapAndBuildArgument<Widget>(args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
