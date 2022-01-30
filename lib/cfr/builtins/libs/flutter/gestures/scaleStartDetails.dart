import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/scale.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedScaleStartDetails extends VMManagedBox<ScaleStartDetails> {
  VMManagedScaleStartDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['focalPoint'] = maybeBoxObject<Offset>(
        object: vmObject.focalPoint,
        hydroState: hydroState,
        table: HydroTable());
    table['localFocalPoint'] = maybeBoxObject<Offset>(
        object: vmObject.localFocalPoint,
        hydroState: hydroState,
        table: HydroTable());
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

  final ScaleStartDetails vmObject;
}

class RTManagedScaleStartDetails extends ScaleStartDetails
    implements Box<ScaleStartDetails> {
  RTManagedScaleStartDetails(
      {required Offset focalPoint,
      Offset? localFocalPoint,
      required int pointerCount,
      required this.table,
      required this.hydroState})
      : super(
            focalPoint: focalPoint,
            localFocalPoint: localFocalPoint,
            pointerCount: pointerCount) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['focalPoint'] = maybeBoxObject<Offset>(
        object: this.focalPoint, hydroState: hydroState, table: HydroTable());
    table['localFocalPoint'] = maybeBoxObject<Offset>(
        object: this.localFocalPoint,
        hydroState: hydroState,
        table: HydroTable());
    table['pointerCount'] = this.pointerCount;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ScaleStartDetails unwrap() => this;
  ScaleStartDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadScaleStartDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['scaleStartDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedScaleStartDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          focalPoint: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['focalPoint']
                  : null,
              parentState: hydroState),
          localFocalPoint: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localFocalPoint']
                  : null,
              parentState: hydroState),
          pointerCount: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pointerCount']
              : null)
    ];
  });
  registerBoxer<ScaleStartDetails>(boxer: (
      {required ScaleStartDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedScaleStartDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
