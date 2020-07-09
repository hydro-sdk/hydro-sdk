import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/buildContext.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadAnimatedBuilder(
    {@required HydroState luaState, @required HydroTable table}) {
  table["animatedBuilder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedBuilder(
        animation: maybeUnwrapAndBuildArgument<ChangeNotifier>(
            args[0]["animation"],
            parentState: luaState),
        builder: (BuildContext context, Widget child) {
          Closure closure = args[0]["builder"];
          var res = maybeUnwrapAndBuildArgument<Widget>(
              closure.dispatch([
                VMManagedBuildContext(
                    context: context,
                    table: HydroTable(),
                    hydroState: luaState),
                args[0]["child"],
              ], parentState: luaState)[0],
              parentState: luaState);
          return res;
        },
      )
    ];
  });
}
