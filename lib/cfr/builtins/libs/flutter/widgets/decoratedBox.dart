import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadDecoratedBox(
    {@required HydroState luaState, @required HydroTable table}) {
  table["decoratedBox"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      DecoratedBox(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        decoration: maybeUnBoxAndBuildArgument<Decoration>(
            args[0]["decoration"],
            parentState: luaState),
        position: maybeUnBoxEnum<DecorationPosition>(
            values: DecorationPosition.values, boxedEnum: args[0]["position"]),
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
