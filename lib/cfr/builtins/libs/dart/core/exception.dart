import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedException extends VMManagedBox<Exception> {
  VMManagedException(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final Exception vmObject;
}

void loadException(
    {required HydroState hydroState, required HydroTable table}) {
  table['exception'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Exception>(
          object: Exception(luaCallerArguments[1]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  registerBoxer<Exception>(boxer: (
      {required Exception vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedException(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
