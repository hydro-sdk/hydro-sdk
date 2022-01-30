import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedIOSScrollViewFlingVelocityTracker
    extends VMManagedBox<IOSScrollViewFlingVelocityTracker> {
  VMManagedIOSScrollViewFlingVelocityTracker(
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
      return [
        maybeBoxObject<VelocityEstimate>(
            object: vmObject.getVelocityEstimate(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final IOSScrollViewFlingVelocityTracker vmObject;
}

class RTManagedIOSScrollViewFlingVelocityTracker
    extends IOSScrollViewFlingVelocityTracker
    implements Box<IOSScrollViewFlingVelocityTracker> {
  RTManagedIOSScrollViewFlingVelocityTracker(PointerDeviceKind kind$,
      {required this.table, required this.hydroState})
      : super(
          kind$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
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
        maybeBoxObject<VelocityEstimate>(
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
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  IOSScrollViewFlingVelocityTracker unwrap() => this;
  IOSScrollViewFlingVelocityTracker get vmObject => this;
  @override
  void addPosition(time, position) {
    Closure closure = table["addPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  VelocityEstimate getVelocityEstimate() {
    Closure closure = table["getVelocityEstimate"];
    return maybeUnBoxAndBuildArgument<VelocityEstimate, dynamic>(
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

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadIOSScrollViewFlingVelocityTracker(
    {required HydroState hydroState, required HydroTable table}) {
  table['iOSScrollViewFlingVelocityTracker'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedIOSScrollViewFlingVelocityTracker(
          maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments[1]),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<IOSScrollViewFlingVelocityTracker>(boxer: (
      {required IOSScrollViewFlingVelocityTracker vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIOSScrollViewFlingVelocityTracker(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
