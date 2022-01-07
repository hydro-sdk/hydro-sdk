import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/box.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedBoxHitTestEntry extends VMManagedBox<BoxHitTestEntry> {
  VMManagedBoxHitTestEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['target'] = maybeBoxObject<HitTestTarget>(
        object: vmObject.target, hydroState: hydroState, table: HydroTable());
    table['getTarget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderBox>(
            object: vmObject.target,
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final BoxHitTestEntry vmObject;
}

class RTManagedBoxHitTestEntry extends BoxHitTestEntry
    implements Box<BoxHitTestEntry> {
  RTManagedBoxHitTestEntry(RenderBox target$, Offset localPosition$,
      {required this.table, required this.hydroState})
      : super(
          target$,
          localPosition$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['target'] = maybeBoxObject<HitTestTarget>(
        object: this.target, hydroState: hydroState, table: HydroTable());
    table['_dart_getTarget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.target];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.transform];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  BoxHitTestEntry unwrap() => this;
  BoxHitTestEntry get vmObject => this;
  @override
  RenderBox get target {
    Closure closure = table["getTarget"];
    return maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

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

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBoxHitTestEntry(
    {required HydroState hydroState, required HydroTable table}) {
  table['boxHitTestEntry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedBoxHitTestEntry(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<BoxHitTestEntry>(boxer: (
      {required BoxHitTestEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedBoxHitTestEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
