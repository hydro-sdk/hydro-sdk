import 'package:flutter/cupertino.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoApp(
    {required HydroState luaState, required HydroTable table}) {
  table["cupertinoApp"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoApp(
        initialRoute: args[0]["initialRoute"],
        home: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["home"],
            parentState: luaState),
        title: args[0]["title"],
      )
    ];
  });
}
