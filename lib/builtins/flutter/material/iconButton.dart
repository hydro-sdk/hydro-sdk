import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/closure.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadIconButton({@required HydroState luaState, @required HydroTable table}) {
  table["iconButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      IconButton(
        icon: maybeUnwrapAndBuildArgument<Widget>(args[0]["icon"],
            parentState: luaState),
        tooltip: args[0]["tooltip"],
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
