import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadScaffold({required HydroState luaState, required HydroTable table}) {
  table["scaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Scaffold(
        appBar: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["appBar"],
            parentState: luaState),
        body: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["body"],
            parentState: luaState),
        floatingActionButton: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["floatingActionButton"],
            parentState: luaState),
        backgroundColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["backgroundColor"],
            parentState: luaState),
      )
    ];
  });
}
