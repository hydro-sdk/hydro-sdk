import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/runtimeTypeToGeneric.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/syntheticBox.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/widgets.dart';

void loadAlwaysStoppedAnimation(
    {@required HydroState luaState, @required HydroTable table}) {
  table["alwaysStoppedAnimation"] = makeLuaDartFunc(func: (List<dynamic> args) {
    AlwaysStoppedAnimation res = translateRTTIToAlwaysStoppedAnimation(
        luaState: luaState,
        runtimeType: RuntimeTypes.values.firstWhere(
            (x) => x.toString().split(".")[1] == args[0]["targetRuntimeType"]),
        value: maybeUnwrapAndBuildArgument(args[0]["value"],
            parentState: luaState));
    return [res];
  });
}
