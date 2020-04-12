import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/context.dart';
import 'package:hydro_sdk/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:flutter/material.dart';

loadPopupMenuItem({@required HydroState luaState, @required HydroTable table}) {
  table["popupMenuItem"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PopupMenuItem(
        value: args[0]["value"],
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
