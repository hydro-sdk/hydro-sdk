import 'package:flutter/cupertino.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertinoPageScaffold(
    {@required HydroState luaState, @required HydroTable table}) {
  table["cupertinoPageScaffold"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoPageScaffold(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        navigationBar:
            maybeUnBoxAndBuildArgument<ObstructingPreferredSizeWidget>(
                args[0]["navigationBar"],
                parentState: luaState),
        backgroundColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["backgroundColor"],
            parentState: luaState),
        resizeToAvoidBottomInset: args[0]["resizeToAvoidBottomInset"],
        child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
