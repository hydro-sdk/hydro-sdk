import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/arena.dart' as _be6e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureArenaEntry
    extends _36c2.VMManagedBox<_be6e.GestureArenaEntry> {
  VMManagedGestureArenaEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resolve(_36c2.maybeUnBoxEnum(
          values: _be6e.GestureDisposition.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _be6e.GestureArenaEntry vmObject;
}

void loadGestureArenaEntry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_be6e.GestureArenaEntry>(boxer: (
      {required _be6e.GestureArenaEntry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedGestureArenaEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
