import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/buildContext.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadAnimatedBuilder(
    {@required HydroState luaState, @required HydroTable table}) {
  table["animatedBuilder"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      AnimatedBuilder(
        animation: maybeUnBoxAndBuildArgument<ChangeNotifier>(
            args[0]["animation"],
            parentState: luaState),
        builder: (BuildContext context, Widget child) {
          Closure closure = args[0]["builder"];
          var res = maybeUnBoxAndBuildArgument<Widget>(
              closure.dispatch([
                VMManagedBuildContext(
                    vmObject: context,
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
