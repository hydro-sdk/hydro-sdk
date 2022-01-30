import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedOffsetPair extends VMManagedBox<OffsetPair> {
  VMManagedOffsetPair(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['local'] = maybeBoxObject<Offset>(
        object: vmObject.local, hydroState: hydroState, table: HydroTable());
    table['global'] = maybeBoxObject<Offset>(
        object: vmObject.global, hydroState: hydroState, table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final OffsetPair vmObject;
}

class RTManagedOffsetPair extends OffsetPair implements Box<OffsetPair> {
  RTManagedOffsetPair(
      {required Offset global,
      required Offset local,
      required this.table,
      required this.hydroState})
      : super(global: global, local: local) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['local'] = maybeBoxObject<Offset>(
        object: this.local, hydroState: hydroState, table: HydroTable());
    table['global'] = maybeBoxObject<Offset>(
        object: this.global, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  OffsetPair unwrap() => this;
  OffsetPair get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadOffsetPair(
    {required HydroState hydroState, required HydroTable table}) {
  table['offsetPair'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedOffsetPair(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          global: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['global']
                  : null,
              parentState: hydroState),
          local: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['local']
                  : null,
              parentState: hydroState))
    ];
  });
  table['offsetPairFromEventPosition'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<OffsetPair>(
          object: OffsetPair.fromEventPosition(
              maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['offsetPairFromEventDelta'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<OffsetPair>(
          object: OffsetPair.fromEventDelta(
              maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<OffsetPair>(boxer: (
      {required OffsetPair vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedOffsetPair(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
