import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadFlexible({@required HydroState luaState, @required HydroTable table}) {
  table["flexible"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Flexible(
        key: maybeUnBoxAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        flex: args[0]["flex"],
        fit: maybeUnBoxEnum<FlexFit>(
            values: FlexFit.values, boxedEnum: args[0]["fit"]),
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
