import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverHitTestResult extends VMManagedBox<SliverHitTestResult> {
  VMManagedSliverHitTestResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    // table['addWithAxisOffset'] =
    //     makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    //   Closure unpackedhitTest = luaCallerArguments.length >= 2
    //       ? luaCallerArguments[1]['hitTest']
    //       : null;

    //   return [
    //     vmObject.addWithAxisOffset(
    //         crossAxisOffset: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['crossAxisOffset']
    //             : null?.toDouble(),
    //         crossAxisPosition: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['crossAxisPosition']
    //             : null?.toDouble(),
    //         hitTest: (result) => unpackedhitTest.dispatch(
    //               [luaCallerArguments[0], result],
    //               parentState: hydroState,
    //             )[0],
    //         mainAxisOffset: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['mainAxisOffset']
    //             : null?.toDouble(),
    //         mainAxisPosition: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['mainAxisPosition']
    //             : null?.toDouble(),
    //         paintOffset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
    //             luaCallerArguments.length >= 2
    //                 ? luaCallerArguments[1]['paintOffset']
    //                 : null,
    //             parentState: hydroState)),
    //   ];
    // });
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

  final SliverHitTestResult vmObject;
}

class RTManagedSliverHitTestResult extends SliverHitTestResult
    implements Box<SliverHitTestResult> {
  RTManagedSliverHitTestResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    // table['_dart_addWithAxisOffset'] =
    //     makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    //   Closure unpackedhitTest = luaCallerArguments.length >= 2
    //       ? luaCallerArguments[1]['hitTest']
    //       : null;

    //   return [
    //     super.addWithAxisOffset(
    //         crossAxisOffset: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['crossAxisOffset']
    //             : null?.toDouble(),
    //         crossAxisPosition: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['crossAxisPosition']
    //             : null?.toDouble(),
    //         hitTest: (result) => unpackedhitTest.dispatch(
    //               [luaCallerArguments[0], result],
    //               parentState: hydroState,
    //             )[0],
    //         mainAxisOffset: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['mainAxisOffset']
    //             : null?.toDouble(),
    //         mainAxisPosition: luaCallerArguments.length >= 2
    //             ? luaCallerArguments[1]['mainAxisPosition']
    //             : null?.toDouble(),
    //         paintOffset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
    //             luaCallerArguments.length >= 2
    //                 ? luaCallerArguments[1]['paintOffset']
    //                 : null,
    //             parentState: hydroState))
    //   ];
    // });
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

  SliverHitTestResult unwrap() => this;
  SliverHitTestResult get vmObject => this;
  @override
  bool addWithAxisOffset(
      {required double crossAxisOffset,
      required double crossAxisPosition,
      required hitTest,
      required double mainAxisOffset,
      required double mainAxisPosition,
      Offset? paintOffset}) {
    Closure closure = table["addWithAxisOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void add(HitTestEntry entry) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void pushTransform(Matrix4 transform) {
    Closure closure = table["pushTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void pushOffset(Offset offset) {
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

void loadSliverHitTestResult(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverHitTestResult'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverHitTestResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SliverHitTestResult>(boxer: (
      {required SliverHitTestResult vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverHitTestResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
