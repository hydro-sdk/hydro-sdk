import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadMaterialPageRoute(
    {required HydroState luaState, required HydroTable table}) {
  table["materialPageRoute"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      MaterialPageRoute(
          builder: (BuildContext context) {
            Closure closure = args[0]["builder"];
            var res =
                closure.dispatch([null, context], parentState: luaState)[0];
            return maybeUnBoxAndBuildArgument<Widget, dynamic>(res,
                parentState: luaState);
          },
          maintainState: args[0]["maintainState"],
          fullscreenDialog: args[0]["fullscreenDialog"])
    ];
  });
}
