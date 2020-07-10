import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/runtimeTypeToGeneric.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/widgets.dart';

void loadAlwaysStoppedAnimation(
    {@required HydroState luaState, @required HydroTable table}) {
  table["alwaysStoppedAnimation"] = makeLuaDartFunc(func: (List<dynamic> args) {
    AlwaysStoppedAnimation res = translateRTTIToAlwaysStoppedAnimation(
        luaState: luaState,
        runtimeType: RuntimeTypes.values.firstWhere((x) =>
            x.toString().split(".")[1] ==
            maybeUnBoxRuntimeType(
                managedObject: args[0],
                runtimeTypePropName: "targetRuntimeType")),
        value: maybeUnBoxAndBuildArgument(args[0]["value"],
            parentState: luaState));
    return [res];
  });
}
