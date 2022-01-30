import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedVelocityEstimate extends VMManagedBox<VelocityEstimate> {
  VMManagedVelocityEstimate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['pixelsPerSecond'] = maybeBoxObject<Offset>(
        object: vmObject.pixelsPerSecond,
        hydroState: hydroState,
        table: HydroTable());
    table['confidence'] = vmObject.confidence;
    table['duration'] = maybeBoxObject<Duration>(
        object: vmObject.duration, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: vmObject.offset, hydroState: hydroState, table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final VelocityEstimate vmObject;
}

class RTManagedVelocityEstimate extends VelocityEstimate
    implements Box<VelocityEstimate> {
  RTManagedVelocityEstimate(
      {required double confidence,
      required Duration duration,
      required Offset offset,
      required Offset pixelsPerSecond,
      required this.table,
      required this.hydroState})
      : super(
            confidence: confidence,
            duration: duration,
            offset: offset,
            pixelsPerSecond: pixelsPerSecond) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['pixelsPerSecond'] = maybeBoxObject<Offset>(
        object: this.pixelsPerSecond,
        hydroState: hydroState,
        table: HydroTable());
    table['confidence'] = this.confidence;
    table['duration'] = maybeBoxObject<Duration>(
        object: this.duration, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: this.offset, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  VelocityEstimate unwrap() => this;
  VelocityEstimate get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadVelocityEstimate(
    {required HydroState hydroState, required HydroTable table}) {
  table['velocityEstimate'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedVelocityEstimate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          confidence: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['confidence']
              : null?.toDouble(),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState),
          pixelsPerSecond: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['pixelsPerSecond']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<VelocityEstimate>(boxer: (
      {required VelocityEstimate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedVelocityEstimate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
