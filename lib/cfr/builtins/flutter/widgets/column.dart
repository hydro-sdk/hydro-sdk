import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadColumn({@required HydroState luaState, @required HydroTable table}) {
  table["column"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Column(
          mainAxisAlignment: maybeUnwrapEnum<MainAxisAlignment>(
              values: MainAxisAlignment.values,
              boxedEnum: args[0]["mainAxisAlignment"]),
          mainAxisSize: maybeUnwrapEnum<MainAxisSize>(
              values: MainAxisSize.values, boxedEnum: args[0]["mainAxisSize"]),
          crossAxisAlignment: maybeUnwrapEnum<CrossAxisAlignment>(
              values: CrossAxisAlignment.values,
              boxedEnum: args[0]["crossAxisAlignment"]),
          children: maybeUnwrapAndBuildArgument<Widget>(args[0]["children"],
              parentState: luaState))
    ];
  });
}
