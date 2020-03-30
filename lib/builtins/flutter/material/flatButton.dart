import 'package:flua/luastate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadFlatButton({@required LuaState luaState, @required HydroTable table}) {
  table["flatButton"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      FlatButton(
        child: maybeUnwrapAndBuildArgument(args[0]["child"],parentState: luaState),
        onPressed: () {
          Closure closure = args[0]["onPressed"];
          closure.dispatch([], parentState: luaState);
        },
      )
    ];
  });
}
