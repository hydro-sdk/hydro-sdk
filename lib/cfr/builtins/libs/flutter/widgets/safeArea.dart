import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadSafeArea({required HydroState luaState, required HydroTable table}) {
  table["safeArea"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SafeArea(
        top: args[0]["top"],
        bottom: args[0]["bottom"],
        left: args[0]["left"],
        right: args[0]["right"],
        maintainBottomViewPadding: args[0]["maintainBottomViewPadding"],
        minimum: args[0]["minimum"],
        child: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
