import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/closure.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadFlatButton({@required HydroState luaState, @required HydroTable table}) {
  table["flatButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FlatButton(
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
