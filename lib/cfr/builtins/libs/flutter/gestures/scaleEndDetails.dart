import 'dart:core';

import 'package:flutter/src/gestures/scale.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedScaleEndDetails extends VMManagedBox<ScaleEndDetails> {
  VMManagedScaleEndDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['velocity'] = maybeBoxObject<Velocity>(
        object: vmObject.velocity, hydroState: hydroState, table: HydroTable());
    table['pointerCount'] = vmObject.pointerCount;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ScaleEndDetails vmObject;
}

class RTManagedScaleEndDetails extends ScaleEndDetails
    implements Box<ScaleEndDetails> {
  RTManagedScaleEndDetails(
      {required int pointerCount,
      required Velocity velocity,
      required this.table,
      required this.hydroState})
      : super(pointerCount: pointerCount, velocity: velocity) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['velocity'] = maybeBoxObject<Velocity>(
        object: this.velocity, hydroState: hydroState, table: HydroTable());
    table['pointerCount'] = this.pointerCount;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ScaleEndDetails unwrap() => this;
  ScaleEndDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadScaleEndDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['scaleEndDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedScaleEndDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          pointerCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pointerCount']
              : null,
          velocity: maybeUnBoxAndBuildArgument<Velocity, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['velocity']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<ScaleEndDetails>(boxer: (
      {required ScaleEndDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedScaleEndDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
