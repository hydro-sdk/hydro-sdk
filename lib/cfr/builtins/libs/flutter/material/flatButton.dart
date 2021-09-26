import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadFlatButton({required HydroState luaState, required HydroTable table}) {
  table["flatButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FlatButton(
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
