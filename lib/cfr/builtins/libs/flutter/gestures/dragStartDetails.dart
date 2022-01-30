import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/drag_details.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDragStartDetails extends VMManagedBox<DragStartDetails> {
  VMManagedDragStartDetails(
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
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: vmObject.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
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

  final DragStartDetails vmObject;
}

class RTManagedDragStartDetails extends DragStartDetails
    implements Box<DragStartDetails> {
  RTManagedDragStartDetails(
      {required Offset globalPosition,
      PointerDeviceKind? kind,
      Offset? localPosition,
      Duration? sourceTimeStamp,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            kind: kind,
            localPosition: localPosition,
            sourceTimeStamp: sourceTimeStamp) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['sourceTimeStamp'] = maybeBoxObject<Duration?>(
        object: this.sourceTimeStamp,
        hydroState: hydroState,
        table: HydroTable());
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: this.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DragStartDetails unwrap() => this;
  DragStartDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDragStartDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['dragStartDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDragStartDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          kind: maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['kind']
                  : null),
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState),
          sourceTimeStamp: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['sourceTimeStamp']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<DragStartDetails>(boxer: (
      {required DragStartDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDragStartDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
