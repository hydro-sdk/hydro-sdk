import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadRow({required HydroState luaState, required HydroTable table}) {
  table["row"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Row(
        key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
            parentState: luaState),
        mainAxisAlignment: maybeUnBoxEnum<MainAxisAlignment>(
            values: MainAxisAlignment.values,
            boxedEnum: args[0]["mainAxisAlignment"])!,
        mainAxisSize: maybeUnBoxEnum<MainAxisSize>(
            values: MainAxisSize.values, boxedEnum: args[0]["mainAxisSize"])!,
        crossAxisAlignment: maybeUnBoxEnum<CrossAxisAlignment>(
            values: CrossAxisAlignment.values,
            boxedEnum: args[0]["crossAxisAlignment"])!,
        textDirection: maybeUnBoxEnum<TextDirection>(
            values: TextDirection.values, boxedEnum: args[0]["textDirection"]),
        verticalDirection: maybeUnBoxEnum<VerticalDirection>(
            values: VerticalDirection.values,
            boxedEnum: args[0]["verticalDirection"])!,
        textBaseline: maybeUnBoxEnum<TextBaseline>(
            values: TextBaseline.values, boxedEnum: args[0]["textBaseline"]),
        children: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["children"],
            parentState: luaState),
      )
    ];
  });
}
