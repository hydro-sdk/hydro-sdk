import 'package:flutter/src/gestures/arena.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGestureArenaEntry extends VMManagedBox<GestureArenaEntry> {
  VMManagedGestureArenaEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resolve(maybeUnBoxEnum(
          values: GestureDisposition.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final GestureArenaEntry vmObject;
}

void loadGestureArenaEntry(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<GestureArenaEntry>(boxer: (
      {required GestureArenaEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGestureArenaEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
