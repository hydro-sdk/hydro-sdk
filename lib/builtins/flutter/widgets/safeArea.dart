import 'package:flua/hydroState.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadSafeArea({@required HydroState luaState, @required HydroTable table}) {
  table["safeArea"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      SafeArea(
        top: args[0]["top"],
        bottom: args[0]["bottom"],
        left: args[0]["left"],
        right: args[0]["right"],
        maintainBottomViewPadding: args[0]["maintainBottomViewPadding"],
        minimum: args[0]["minimum"],
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
