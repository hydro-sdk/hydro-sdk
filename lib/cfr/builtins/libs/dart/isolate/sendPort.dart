import 'dart:core';
import 'dart:isolate';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSendPort extends VMManagedBox<SendPort> {
  VMManagedSendPort(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['send'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.send(maybeUnBoxAndBuildArgument<Object?>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SendPort vmObject;
}

void loadSendPort({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<SendPort>(boxer: (
      {required SendPort vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSendPort(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
