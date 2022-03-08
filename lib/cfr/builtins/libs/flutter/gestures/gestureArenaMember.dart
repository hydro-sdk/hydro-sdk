import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/arena.dart' as _be6e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureArenaMember
    extends _36c2.VMManagedBox<_be6e.GestureArenaMember> {
  VMManagedGestureArenaMember(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['acceptGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.acceptGesture(luaCallerArguments[1]);
      return [];
    });
    table['rejectGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rejectGesture(luaCallerArguments[1]);
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _be6e.GestureArenaMember vmObject;
}

void loadGestureArenaMember(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_be6e.GestureArenaMember>(boxer: (
      {required _be6e.GestureArenaMember vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedGestureArenaMember(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
