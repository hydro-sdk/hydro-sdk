import 'dart:core';

import 'package:flutter/src/gestures/hit_test.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedHitTestEntry extends VMManagedBox<HitTestEntry> {
  VMManagedHitTestEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['target'] = maybeBoxObject<HitTestTarget>(
        object: vmObject.target, hydroState: hydroState, table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.transform;
      if (returnValue != null) {
        return [
          maybeBoxObject<Matrix4?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final HitTestEntry vmObject;
}

class RTManagedHitTestEntry extends HitTestEntry implements Box<HitTestEntry> {
  RTManagedHitTestEntry(HitTestTarget target$,
      {required this.table, required this.hydroState})
      : super(
          target$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['target'] = maybeBoxObject<HitTestTarget>(
        object: this.target, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.transform];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  HitTestEntry unwrap() => this;
  HitTestEntry get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Matrix4? get transform {
    Closure closure = table["getTransform"];
    return maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadHitTestEntry(
    {required HydroState hydroState, required HydroTable table}) {
  table['hitTestEntry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedHitTestEntry(
          maybeUnBoxAndBuildArgument<HitTestTarget, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<HitTestEntry>(boxer: (
      {required HitTestEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedHitTestEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
