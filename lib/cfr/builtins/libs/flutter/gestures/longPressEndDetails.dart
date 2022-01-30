import 'dart:ui';

import 'package:flutter/src/gestures/long_press.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLongPressEndDetails extends VMManagedBox<LongPressEndDetails> {
  VMManagedLongPressEndDetails(
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
    table['velocity'] = maybeBoxObject<Velocity>(
        object: vmObject.velocity, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final LongPressEndDetails vmObject;
}

class RTManagedLongPressEndDetails extends LongPressEndDetails
    implements Box<LongPressEndDetails> {
  RTManagedLongPressEndDetails(
      {required Offset globalPosition,
      Offset? localPosition,
      required Velocity velocity,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            localPosition: localPosition,
            velocity: velocity) {
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
    table['velocity'] = maybeBoxObject<Velocity>(
        object: this.velocity, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  LongPressEndDetails unwrap() => this;
  LongPressEndDetails get vmObject => this;
}

void loadLongPressEndDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['longPressEndDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressEndDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState),
          velocity: maybeUnBoxAndBuildArgument<Velocity, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['velocity']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<LongPressEndDetails>(boxer: (
      {required LongPressEndDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLongPressEndDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
