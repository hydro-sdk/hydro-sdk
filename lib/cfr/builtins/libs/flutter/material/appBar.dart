import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadAppBar({@required HydroState luaState, @required HydroTable table}) {
  table["appBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AppBar(
        title: maybeUnBoxAndBuildArgument<Widget>(args[0]["title"],
            parentState: luaState),
        leading: maybeUnBoxAndBuildArgument<Widget>(args[0]["leading"],
            parentState: luaState),
        actions: maybeUnBoxAndBuildArgument<Widget>(args[0]["actions"],
            parentState: luaState),
        bottom: maybeUnBoxAndBuildArgument<Widget>(args[0]["bottom"],
            parentState: luaState),
      )
    ];
  });
}
