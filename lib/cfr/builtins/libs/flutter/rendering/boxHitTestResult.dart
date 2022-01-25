import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/box.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedBoxHitTestResult extends VMManagedBox<BoxHitTestResult> {
  VMManagedBoxHitTestResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addWithPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithPaintTransform(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['position']
                    : null,
                parentState: hydroState),
            transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['transform']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['addWithPaintOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithPaintOffset(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            offset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['offset']
                    : null,
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['position']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['addWithRawTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithRawTransform(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['position']
                    : null,
                parentState: hydroState),
            transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['transform']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['addWithOutOfBandPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;
      return [
        vmObject.addWithOutOfBandPosition(
            paintOffset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['paintOffset']
                    : null,
                parentState: hydroState),
            paintTransform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['paintTransform']
                    : null,
                parentState: hydroState),
            rawTransform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['rawTransform']
                    : null,
                parentState: hydroState),
            hitTest: (result) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result],
                  parentState: hydroState,
                )[0]),
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
    table['getPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.path, hydroState: hydroState, table: HydroTable()),
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

  final BoxHitTestResult vmObject;
}

class RTManagedBoxHitTestResult extends BoxHitTestResult
    implements Box<BoxHitTestResult> {
  RTManagedBoxHitTestResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addWithPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        super.addWithPaintTransform(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['position']
                    : null,
                parentState: hydroState),
            transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['transform']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_addWithPaintOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        super.addWithPaintOffset(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            offset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['offset']
                    : null,
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['position']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_addWithRawTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        super.addWithRawTransform(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['position']
                    : null,
                parentState: hydroState),
            transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['transform']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_addWithOutOfBandPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;
      return [
        super.addWithOutOfBandPosition(
            paintOffset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['paintOffset']
                    : null,
                parentState: hydroState),
            paintTransform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['paintTransform']
                    : null,
                parentState: hydroState),
            rawTransform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['rawTransform']
                    : null,
                parentState: hydroState),
            hitTest: (result) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result],
                  parentState: hydroState,
                )[0])
      ];
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
    table['_dart_getPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.path];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  BoxHitTestResult unwrap() => this;
  BoxHitTestResult get vmObject => this;
  @override
  bool addWithPaintTransform(
      {required hitTest, required Offset position, Matrix4? transform}) {
    Closure closure = table["addWithPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool addWithPaintOffset(
      {required hitTest, Offset? offset, required Offset position}) {
    Closure closure = table["addWithPaintOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool addWithRawTransform(
      {required hitTest, required Offset position, Matrix4? transform}) {
    Closure closure = table["addWithRawTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool addWithOutOfBandPosition(
      {Offset? paintOffset,
      Matrix4? paintTransform,
      Matrix4? rawTransform,
      required hitTest}) {
    Closure closure = table["addWithOutOfBandPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

  @override
  Iterable<HitTestEntry> get path {
    Closure closure = table["getPath"];
    return maybeUnBoxAndBuildArgument<Iterable<HitTestEntry>, HitTestEntry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBoxHitTestResult(
    {required HydroState hydroState, required HydroTable table}) {
  table['boxHitTestResult'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedBoxHitTestResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<BoxHitTestResult>(boxer: (
      {required BoxHitTestResult vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedBoxHitTestResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
