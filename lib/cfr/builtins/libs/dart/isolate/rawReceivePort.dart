import 'dart:core';
import 'dart:isolate';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRawReceivePort extends VMManagedBox<RawReceivePort> {
  VMManagedRawReceivePort(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['setHandler'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handler = (maybeUnBoxAndBuildArgument<Function?>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close();
      return [];
    });
    table['getSendPort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SendPort>(
            object: vmObject.sendPort,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RawReceivePort vmObject;
}

void loadRawReceivePort(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<RawReceivePort>(boxer: (
      {required RawReceivePort vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRawReceivePort(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
