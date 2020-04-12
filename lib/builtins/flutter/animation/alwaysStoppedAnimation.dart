import 'dart:developer';

import 'package:flua/luastate.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/builtins/flutter/runtimeTypeToGeneric.dart';
import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/vm/table.dart';
import 'package:flutter/widgets.dart';

loadAlwaysStoppedAnimation(
    {@required LuaState luaState, @required HydroTable table}) {
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
