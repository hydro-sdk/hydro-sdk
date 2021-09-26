import 'package:flutter/widgets.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/runtimeTypeToGeneric.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedAlwaysStoppedAnimation<T>
    extends VMManagedBox<AlwaysStoppedAnimation<T>> {
  final HydroTable table;
  final HydroState hydroState;
  final AlwaysStoppedAnimation<T> vmObject;
  VMManagedAlwaysStoppedAnimation({
    required this.table,
    required this.hydroState,
    required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["value"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.value];
    });
  }
}

void loadAlwaysStoppedAnimation({
  required HydroState luaState,
  required HydroTable table,
}) {
  registerBoxer<AlwaysStoppedAnimation<Color>>(boxer: ({
    required AlwaysStoppedAnimation<Color> vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedAlwaysStoppedAnimation<Color>(
        vmObject: vmObject, table: table, hydroState: hydroState);
  });

  registerBoxer<AlwaysStoppedAnimation<double>>(boxer: (
      {required AlwaysStoppedAnimation<double> vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAlwaysStoppedAnimation<double>(
        vmObject: vmObject, table: table, hydroState: hydroState);
  });

  table["alwaysStoppedAnimation"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];
    var targetRuntimeType = RuntimeTypes.values.firstWhere(
        (x) => x.toString().split(".")[1] == args[2]["displayName"]);

    switch (targetRuntimeType) {
      case RuntimeTypes.AnimatedListState:
        return [];
      case RuntimeTypes.Color:
        return [
          maybeBoxObject<AlwaysStoppedAnimation<Color>>(
              object: AlwaysStoppedAnimation<Color>(
                  maybeUnBoxAndBuildArgument<Color, dynamic>(args[1],
                      parentState: luaState)),
              hydroState: luaState,
              table: caller)
        ];
      case RuntimeTypes.double:
        return [
          maybeBoxObject<AlwaysStoppedAnimation<double?>>(
              object: AlwaysStoppedAnimation<double?>(args[1]),
              hydroState: luaState,
              table: caller)
        ];
    }
  });
}
