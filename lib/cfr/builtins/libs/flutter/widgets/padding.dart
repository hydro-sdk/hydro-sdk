import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadPadding({@required HydroState luaState, @required HydroTable table}) {
  table["padding"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Padding(
        key: maybeUnBoxAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        padding: maybeUnBoxAndBuildArgument<Widget>(args[0]["padding"],
            parentState: luaState),
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
