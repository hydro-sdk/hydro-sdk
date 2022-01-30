import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/hit_test.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedHitTestResult extends VMManagedBox<HitTestResult> {
  VMManagedHitTestResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.path, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
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

  final HitTestResult vmObject;
}

class RTManagedHitTestResult extends HitTestResult
    implements Box<HitTestResult> {
  RTManagedHitTestResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.path];
    });
    table['_dart_add'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.add(maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_pushTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.pushTransform(maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_pushOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.pushOffset(maybeUnBoxAndBuildArgument<Offset, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_popTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.popTransform();
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  HitTestResult unwrap() => this;
  HitTestResult get vmObject => this;
  @override
  Iterable<HitTestEntry> get path {
    Closure closure = table["getPath"];
    return maybeUnBoxAndBuildArgument<Iterable<HitTestEntry>, HitTestEntry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void add(entry) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void pushTransform(transform) {
    Closure closure = table["pushTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void pushOffset(offset) {
    Closure closure = table["pushOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void popTransform() {
    Closure closure = table["popTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadHitTestResult(
    {required HydroState hydroState, required HydroTable table}) {
  table['hitTestResult'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedHitTestResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<HitTestResult>(boxer: (
      {required HitTestResult vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedHitTestResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
