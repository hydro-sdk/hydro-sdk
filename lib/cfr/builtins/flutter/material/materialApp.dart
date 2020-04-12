import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadMaterialApp({@required HydroState luaState, @required HydroTable table}) {
  table["materialApp"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      MaterialApp(
        initialRoute: args[0]["initialRoute"],
        home: maybeUnwrapAndBuildArgument<Widget>(args[0]["home"],
            parentState: luaState),
        title: args[0]["title"],
      )
    ];
  });
}
