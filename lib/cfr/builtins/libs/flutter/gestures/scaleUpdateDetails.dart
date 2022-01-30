import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/scale.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedScaleUpdateDetails extends VMManagedBox<ScaleUpdateDetails> {
  VMManagedScaleUpdateDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['focalPointDelta'] = maybeBoxObject<Offset>(
        object: vmObject.focalPointDelta,
        hydroState: hydroState,
        table: HydroTable());
    table['focalPoint'] = maybeBoxObject<Offset>(
        object: vmObject.focalPoint,
        hydroState: hydroState,
        table: HydroTable());
    table['localFocalPoint'] = maybeBoxObject<Offset>(
        object: vmObject.localFocalPoint,
        hydroState: hydroState,
        table: HydroTable());
    table['scale'] = vmObject.scale;
    table['horizontalScale'] = vmObject.horizontalScale;
    table['verticalScale'] = vmObject.verticalScale;
    table['rotation'] = vmObject.rotation;
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

  final ScaleUpdateDetails vmObject;
}

class RTManagedScaleUpdateDetails extends ScaleUpdateDetails
    implements Box<ScaleUpdateDetails> {
  RTManagedScaleUpdateDetails(
      {required Offset focalPoint,
      required Offset focalPointDelta,
      required double horizontalScale,
      Offset? localFocalPoint,
      required int pointerCount,
      required double rotation,
      required double scale,
      required double verticalScale,
      required this.table,
      required this.hydroState})
      : super(
            focalPoint: focalPoint,
            focalPointDelta: focalPointDelta,
            horizontalScale: horizontalScale,
            localFocalPoint: localFocalPoint,
            pointerCount: pointerCount,
            rotation: rotation,
            scale: scale,
            verticalScale: verticalScale) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['focalPointDelta'] = maybeBoxObject<Offset>(
        object: this.focalPointDelta,
        hydroState: hydroState,
        table: HydroTable());
    table['focalPoint'] = maybeBoxObject<Offset>(
        object: this.focalPoint, hydroState: hydroState, table: HydroTable());
    table['localFocalPoint'] = maybeBoxObject<Offset>(
        object: this.localFocalPoint,
        hydroState: hydroState,
        table: HydroTable());
    table['scale'] = this.scale;
    table['horizontalScale'] = this.horizontalScale;
    table['verticalScale'] = this.verticalScale;
    table['rotation'] = this.rotation;
    table['pointerCount'] = this.pointerCount;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ScaleUpdateDetails unwrap() => this;
  ScaleUpdateDetails get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadScaleUpdateDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['scaleUpdateDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedScaleUpdateDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          focalPoint: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['focalPoint']
                  : null,
              parentState: hydroState),
          focalPointDelta: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['focalPointDelta']
                  : null,
              parentState: hydroState),
          horizontalScale: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['horizontalScale']
              : null?.toDouble(),
          localFocalPoint: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localFocalPoint']
                  : null,
              parentState: hydroState),
          pointerCount: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pointerCount'] : null,
          rotation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rotation'] : null?.toDouble(),
          scale: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scale'] : null?.toDouble(),
          verticalScale: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalScale'] : null?.toDouble())
    ];
  });
  registerBoxer<ScaleUpdateDetails>(boxer: (
      {required ScaleUpdateDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedScaleUpdateDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
