import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/drag_details.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDragDownDetails extends VMManagedBox<DragDownDetails> {
  VMManagedDragDownDetails(
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DragDownDetails vmObject;
}

class RTManagedDragDownDetails extends DragDownDetails
    implements Box<DragDownDetails> {
  RTManagedDragDownDetails(
      {required Offset globalPosition,
      Offset? localPosition,
      required this.table,
      required this.hydroState})
      : super(globalPosition: globalPosition, localPosition: localPosition) {
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
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DragDownDetails unwrap() => this;
  DragDownDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDragDownDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['dragDownDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDragDownDetails(
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
              parentState: hydroState))
    ];
  });
  registerBoxer<DragDownDetails>(boxer: (
      {required DragDownDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDragDownDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
