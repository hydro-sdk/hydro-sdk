import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFunction extends VMManagedBox<Function> {
  VMManagedFunction(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Function vmObject;
}

void loadFunction({required HydroState hydroState, required HydroTable table}) {
  table['functionApply'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Function.apply(
          maybeUnBoxAndBuildArgument<Function, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<dynamic>?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Map<Symbol, dynamic>?, Symbol>(
              luaCallerArguments[3],
              parentState: hydroState)),
    ];
  });
  registerBoxer<Function>(boxer: (
      {required Function vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFunction(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
