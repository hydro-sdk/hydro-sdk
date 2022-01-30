import 'dart:core';

import 'package:flutter/src/gestures/arena.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGestureArenaMember extends VMManagedBox<GestureArenaMember> {
  VMManagedGestureArenaMember(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['acceptGesture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.acceptGesture(luaCallerArguments[1]);
      return [];
    });
    table['rejectGesture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rejectGesture(luaCallerArguments[1]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final GestureArenaMember vmObject;
}

void loadGestureArenaMember(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<GestureArenaMember>(boxer: (
      {required GestureArenaMember vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGestureArenaMember(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
