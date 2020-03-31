import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/vm/closure.dart';
import 'package:flutter/material.dart';

loadPopupMenuButton({@required LuaState luaState, @required HydroTable table}) {
  table["popupMenuButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PopupMenuButton(
        onSelected: (dynamic arg) {
          Closure closure = args[0]["onSelected"];
          return closure.dispatch([args[0], arg], parentState: luaState);
        },
        itemBuilder: (BuildContext context) {
          Closure closure = args[0]["itemBuilder"];
          HydroTable closureRes =
              closure.dispatch([context], parentState: luaState)[0];
          return maybeUnwrapAndBuildArgument(closureRes, parentState: luaState)
              .map((x) => x.build(context))
              .toList()
              .cast<PopupMenuItem<dynamic>>();
        },
      )
    ];
  });
}
