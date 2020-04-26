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
        mainAxisAlignment: maybeUnwrapEnum<MainAxisAlignment>(
            values: MainAxisAlignment.values,
            boxedEnum: args[0]["mainAxisAlignment"]),
        mainAxisSize: maybeUnwrapEnum<MainAxisSize>(
            values: MainAxisSize.values, boxedEnum: args[0]["mainAxisSize"]),
        crossAxisAlignment: maybeUnwrapEnum<CrossAxisAlignment>(
            values: CrossAxisAlignment.values,
            boxedEnum: args[0]["crossAxisAlignment"]),
        textDirection: maybeUnwrapEnum<TextDirection>(
            values: TextDirection.values, boxedEnum: args[0]["textDirection"]),
        verticalDirection: maybeUnwrapEnum<VerticalDirection>(
            values: VerticalDirection.values,
            boxedEnum: args[0]["verticalDirection"]),
        textBaseline: maybeUnwrapEnum<TextBaseline>(
            values: TextBaseline.values, boxedEnum: args[0]["textBaseline"]),
        children: maybeUnwrapAndBuildArgument<Widget>(args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
