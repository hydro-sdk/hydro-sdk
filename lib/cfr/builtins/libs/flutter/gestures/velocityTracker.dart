import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedVelocityTracker extends VMManagedBox<VelocityTracker> {
  VMManagedVelocityTracker(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['addPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPosition(
          maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getVelocityEstimate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getVelocityEstimate();
      if (returnValue != null) {
        return [
          maybeBoxObject<VelocityEstimate?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getVelocity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Velocity>(
            object: vmObject.getVelocity(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final VelocityTracker vmObject;
}

class RTManagedVelocityTracker extends VelocityTracker
    implements Box<VelocityTracker> {
  RTManagedVelocityTracker(PointerDeviceKind kind$,
      {required this.table, required this.hydroState})
      : super(
          kind$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == kind;
    });
    table['_dart_addPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPosition(
          maybeUnBoxAndBuildArgument<Duration, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getVelocityEstimate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<VelocityEstimate?>(
            object: super.getVelocityEstimate(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getVelocity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Velocity>(
            object: super.getVelocity(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  VelocityTracker unwrap() => this;
  VelocityTracker get vmObject => this;
  @override
  void addPosition(time, position) {
    Closure closure = table["addPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  VelocityEstimate? getVelocityEstimate() {
    Closure closure = table["getVelocityEstimate"];
    return maybeUnBoxAndBuildArgument<VelocityEstimate?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Velocity getVelocity() {
    Closure closure = table["getVelocity"];
    return maybeUnBoxAndBuildArgument<Velocity, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadVelocityTracker(
    {required HydroState hydroState, required HydroTable table}) {
  table['velocityTracker'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedVelocityTracker(
          maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments[1]),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<VelocityTracker>(boxer: (
      {required VelocityTracker vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedVelocityTracker(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
