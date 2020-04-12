import 'package:flua/hydroState.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
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
