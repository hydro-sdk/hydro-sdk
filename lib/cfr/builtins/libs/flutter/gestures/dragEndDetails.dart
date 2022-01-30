import 'dart:core';

import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDragEndDetails extends VMManagedBox<DragEndDetails> {
  VMManagedDragEndDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['velocity'] = maybeBoxObject<Velocity>(
        object: vmObject.velocity, hydroState: hydroState, table: HydroTable());
    table['primaryVelocity'] = vmObject.primaryVelocity;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DragEndDetails vmObject;
}

class RTManagedDragEndDetails extends DragEndDetails
    implements Box<DragEndDetails> {
  RTManagedDragEndDetails(
      {double? primaryVelocity,
      required Velocity velocity,
      required this.table,
      required this.hydroState})
      : super(primaryVelocity: primaryVelocity, velocity: velocity) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['velocity'] = maybeBoxObject<Velocity>(
        object: this.velocity, hydroState: hydroState, table: HydroTable());
    table['primaryVelocity'] = this.primaryVelocity;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DragEndDetails unwrap() => this;
  DragEndDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDragEndDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['dragEndDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDragEndDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          primaryVelocity: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['primaryVelocity']
              : null?.toDouble(),
          velocity: maybeUnBoxAndBuildArgument<Velocity, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['velocity']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<DragEndDetails>(boxer: (
      {required DragEndDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDragEndDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
