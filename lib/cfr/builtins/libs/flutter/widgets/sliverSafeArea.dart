import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadSliverSafeArea(
    {@required HydroState luaState, @required HydroTable table}) {
  table["sliverSafeArea"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SliverSafeArea(
        left: args[0]["left"],
        top: args[0]["top"],
        right: args[0]["right"],
        bottom: args[0]["bottom"],
        minimum: maybeUnBoxAndBuildArgument<EdgeInsets>(args[0]["minimum"],
            parentState: luaState),
        sliver: maybeUnBoxAndBuildArgument<Widget>(args[0]["sliver"],
            parentState: luaState),
      )
    ];
  });
}
