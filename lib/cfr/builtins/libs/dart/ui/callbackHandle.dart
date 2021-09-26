import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCallbackHandle extends VMManagedBox<CallbackHandle> {
  VMManagedCallbackHandle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toRawHandle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toRawHandle(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final CallbackHandle vmObject;
}

void loadCallbackHandle(
    {required HydroState hydroState, required HydroTable table}) {
  table['callbackHandleFromRawHandle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<CallbackHandle>(
          object: CallbackHandle.fromRawHandle(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<CallbackHandle>(boxer: (
      {required CallbackHandle vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCallbackHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
