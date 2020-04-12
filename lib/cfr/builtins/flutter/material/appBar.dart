import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadAppBar({@required HydroState luaState, @required HydroTable table}) {
  table["appBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AppBar(
        title: maybeUnwrapAndBuildArgument<Widget>(args[0]["title"],
            parentState: luaState),
        leading: maybeUnwrapAndBuildArgument<Widget>(args[0]["leading"],
            parentState: luaState),
        actions: maybeUnwrapAndBuildArgument<Widget>(args[0]["actions"],
            parentState: luaState),
        bottom: maybeUnwrapAndBuildArgument<Widget>(args[0]["bottom"],
            parentState: luaState),
      )
    ];
  });
}
