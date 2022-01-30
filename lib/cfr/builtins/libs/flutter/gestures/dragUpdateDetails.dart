import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/drag_details.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDragUpdateDetails extends VMManagedBox<DragUpdateDetails> {
  VMManagedDragUpdateDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['sourceTimeStamp'] = maybeBoxObject<Duration?>(
        object: vmObject.sourceTimeStamp,
        hydroState: hydroState,
        table: HydroTable());
    table['delta'] = maybeBoxObject<Offset>(
        object: vmObject.delta, hydroState: hydroState, table: HydroTable());
    table['primaryDelta'] = vmObject.primaryDelta;
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: vmObject.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DragUpdateDetails vmObject;
}

class RTManagedDragUpdateDetails extends DragUpdateDetails
    implements Box<DragUpdateDetails> {
  RTManagedDragUpdateDetails(
      {required Offset delta,
      Offset? localPosition,
      double? primaryDelta,
      Duration? sourceTimeStamp,
      required Offset globalPosition,
      required this.table,
      required this.hydroState})
      : super(
            delta: delta,
            localPosition: localPosition,
            primaryDelta: primaryDelta,
            sourceTimeStamp: sourceTimeStamp,
            globalPosition: globalPosition) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['sourceTimeStamp'] = maybeBoxObject<Duration?>(
        object: this.sourceTimeStamp,
        hydroState: hydroState,
        table: HydroTable());
    table['delta'] = maybeBoxObject<Offset>(
        object: this.delta, hydroState: hydroState, table: HydroTable());
    table['primaryDelta'] = this.primaryDelta;
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: this.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DragUpdateDetails unwrap() => this;
  DragUpdateDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDragUpdateDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['dragUpdateDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDragUpdateDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          delta: maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['delta'] : null,
              parentState: hydroState),
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState),
          primaryDelta: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['primaryDelta']
              : null?.toDouble(),
          sourceTimeStamp: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['sourceTimeStamp']
                  : null,
              parentState: hydroState),
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['globalPosition'] : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<DragUpdateDetails>(boxer: (
      {required DragUpdateDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDragUpdateDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
