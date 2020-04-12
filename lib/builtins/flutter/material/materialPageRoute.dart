import 'package:flua/hydroState.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/material.dart';

loadMaterialPageRoute(
    {@required HydroState luaState, @required HydroTable table}) {
  table["materialPageRoute"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      MaterialPageRoute(
          builder: (BuildContext context) {
            Closure closure = args[0]["builder"];
            var res =
                closure.dispatch([null, context], parentState: luaState)[0];
            return maybeUnwrapAndBuildArgument<Widget>(res,
                parentState: luaState);
          },
          maintainState: args[0]["maintainState"],
          fullscreenDialog: args[0]["fullscreenDialog"])
    ];
  });
}
