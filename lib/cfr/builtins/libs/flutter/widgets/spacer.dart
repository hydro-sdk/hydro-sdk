import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadSpacer({required HydroState luaState, required HydroTable table}) {
  table["spacer"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      Spacer(
        key: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["key"],
            parentState: luaState),
        flex: args[0]["flex"],
      )
    ];
  });
}
