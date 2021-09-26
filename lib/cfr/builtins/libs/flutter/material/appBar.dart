import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadAppBar({required HydroState luaState, required HydroTable table}) {
  table["appBar"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AppBar(
        backgroundColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["backgroundColor"],
            parentState: luaState),
        title: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["title"],
            parentState: luaState),
        leading: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["leading"],
            parentState: luaState),
        actions: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["actions"],
            parentState: luaState),
        bottom: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["bottom"],
            parentState: luaState),
        elevation: args[0]["elevation"]?.toDouble(),
      )
    ];
  });
}
