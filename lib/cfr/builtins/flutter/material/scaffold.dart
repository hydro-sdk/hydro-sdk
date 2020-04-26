import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadScaffold({@required HydroState luaState, @required HydroTable table}) {
  table["scaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Scaffold(
        appBar: maybeUnwrapAndBuildArgument<Widget>(args[0]["appBar"],
            parentState: luaState),
        body: maybeUnwrapAndBuildArgument<Widget>(args[0]["body"],
            parentState: luaState),
        floatingActionButton: maybeUnwrapAndBuildArgument<Widget>(
            args[0]["floatingActionButton"],
            parentState: luaState),
        backgroundColor: maybeUnwrapAndBuildArgument<Widget>(
            args[0]["backgroundColor"],
            parentState: luaState),
      )
    ];
  });
}
