import 'dart:core';

import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverHitTestEntry extends VMManagedBox<SliverHitTestEntry> {
  VMManagedSliverHitTestEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['mainAxisPosition'] = vmObject.mainAxisPosition;
    table['crossAxisPosition'] = vmObject.crossAxisPosition;
    table['target'] = maybeBoxObject<HitTestTarget>(
        object: vmObject.target, hydroState: hydroState, table: HydroTable());
    table['getTarget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderSliver>(
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

  final SliverHitTestEntry vmObject;
}

class RTManagedSliverHitTestEntry extends SliverHitTestEntry
    implements Box<SliverHitTestEntry> {
  RTManagedSliverHitTestEntry(RenderSliver target$,
      {required double crossAxisPosition,
      required double mainAxisPosition,
      required this.table,
      required this.hydroState})
      : super(target$,
            crossAxisPosition: crossAxisPosition,
            mainAxisPosition: mainAxisPosition) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['mainAxisPosition'] = this.mainAxisPosition;
    table['crossAxisPosition'] = this.crossAxisPosition;
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

  SliverHitTestEntry unwrap() => this;
  SliverHitTestEntry get vmObject => this;
  @override
  RenderSliver get target {
    Closure closure = table["getTarget"];
    return maybeUnBoxAndBuildArgument<RenderSliver, dynamic>(
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

void loadSliverHitTestEntry(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverHitTestEntry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverHitTestEntry(
          maybeUnBoxAndBuildArgument<RenderSliver, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          crossAxisPosition: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['crossAxisPosition']
              : null?.toDouble(),
          mainAxisPosition: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['mainAxisPosition']
              : null?.toDouble())
    ];
  });
  registerBoxer<SliverHitTestEntry>(boxer: (
      {required SliverHitTestEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverHitTestEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
