import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

loadExpanded({@required HydroState luaState, @required HydroTable table}) {
  table["expanded"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Expanded(
        key: maybeUnwrapAndBuildArgument<Widget>(args[0]["key"],
            parentState: luaState),
        flex: args[0]["flex"],
        child: maybeUnwrapAndBuildArgument<Widget>(args[0]["child"],
            parentState: luaState),
      )
    ];
  });
}
