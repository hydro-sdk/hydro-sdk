import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedVelocity extends VMManagedBox<Velocity> {
  VMManagedVelocity(
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
    table['clampMagnitude'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Velocity>(
            object: vmObject.clampMagnitude(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Velocity vmObject;
}

class RTManagedVelocity extends Velocity implements Box<Velocity> {
  RTManagedVelocity(
      {required Offset pixelsPerSecond,
      required this.table,
      required this.hydroState})
      : super(pixelsPerSecond: pixelsPerSecond) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['pixelsPerSecond'] = maybeBoxObject<Offset>(
        object: this.pixelsPerSecond,
        hydroState: hydroState,
        table: HydroTable());
    table['_dart_clampMagnitude'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Velocity>(
            object: super.clampMagnitude(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Velocity unwrap() => this;
  Velocity get vmObject => this;
  @override
  Velocity clampMagnitude(minValue, maxValue) {
    Closure closure = table["clampMagnitude"];
    return maybeUnBoxAndBuildArgument<Velocity, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadVelocity({required HydroState hydroState, required HydroTable table}) {
  table['velocity'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedVelocity(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          pixelsPerSecond: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['pixelsPerSecond']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<Velocity>(boxer: (
      {required Velocity vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedVelocity(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
