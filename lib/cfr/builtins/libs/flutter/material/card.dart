import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadCard({@required HydroState luaState, @required HydroTable table}) {
  table["card"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Card(
          borderOnForeground: args[0]["borderOnForeground"],
          child: maybeUnBoxAndBuildArgument<Widget>(args[0]["child"],
              parentState: luaState),
          color: maybeUnBoxAndBuildArgument<Widget>(args[0]["color"],
              parentState: luaState))
    ];
  });
}
