import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadPadding({@required HydroState luaState, @required HydroTable table}) {
  table["padding"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Padding(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        padding: maybeUnwrapAndBuildArgument<Widget>(args[0]["padding"],
            parentState: luaState),
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
