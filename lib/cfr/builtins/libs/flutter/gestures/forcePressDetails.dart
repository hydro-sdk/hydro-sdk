import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/force_press.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedForcePressDetails extends VMManagedBox<ForcePressDetails> {
  VMManagedForcePressDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: vmObject.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['pressure'] = vmObject.pressure;
  }

  final HydroTable table;

  final HydroState hydroState;

  final ForcePressDetails vmObject;
}

class RTManagedForcePressDetails extends ForcePressDetails
    implements Box<ForcePressDetails> {
  RTManagedForcePressDetails(
      {Offset? localPosition,
      required Offset globalPosition,
      required double pressure,
      required this.table,
      required this.hydroState})
      : super(
            localPosition: localPosition,
            globalPosition: globalPosition,
            pressure: pressure) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: this.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['pressure'] = this.pressure;
  }

  final HydroTable table;

  final HydroState hydroState;

  ForcePressDetails unwrap() => this;
  ForcePressDetails get vmObject => this;
}

void loadForcePressDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['forcePressDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedForcePressDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState),
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          pressure: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pressure']
              : null?.toDouble())
    ];
  });
  registerBoxer<ForcePressDetails>(boxer: (
      {required ForcePressDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedForcePressDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
