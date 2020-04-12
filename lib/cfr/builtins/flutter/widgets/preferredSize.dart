import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadPreferredSize({@required HydroState luaState, @required HydroTable table}) {
  table["preferredSize"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      PreferredSize(
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
        preferredSize: maybeUnwrapAndBuildArgument<Widget>(
            args[0]["preferredSize"],
            parentState: luaState),
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
      )
    ];
  });
}
