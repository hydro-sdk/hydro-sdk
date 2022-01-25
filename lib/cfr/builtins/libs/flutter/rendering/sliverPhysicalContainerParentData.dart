import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverPhysicalContainerParentData
    extends VMManagedBox<SliverPhysicalContainerParentData> {
  VMManagedSliverPhysicalContainerParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['previousSibling'] = maybeBoxObject<RenderSliver?>(
        object: vmObject.previousSibling,
        hydroState: hydroState,
        table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderSliver?>(
        object: vmObject.nextSibling,
        hydroState: hydroState,
        table: HydroTable());
    table['paintOffset'] = maybeBoxObject<Offset>(
        object: vmObject.paintOffset,
        hydroState: hydroState,
        table: HydroTable());
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.applyPaintTransform(maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SliverPhysicalContainerParentData vmObject;
}

class RTManagedSliverPhysicalContainerParentData
    extends SliverPhysicalContainerParentData
    implements Box<SliverPhysicalContainerParentData> {
  RTManagedSliverPhysicalContainerParentData(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['previousSibling'] = maybeBoxObject<RenderSliver?>(
        object: previousSibling, hydroState: hydroState, table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderSliver?>(
        object: nextSibling, hydroState: hydroState, table: HydroTable());
    table['paintOffset'] = maybeBoxObject<Offset>(
        object: paintOffset, hydroState: hydroState, table: HydroTable());
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.applyPaintTransform(maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SliverPhysicalContainerParentData unwrap() => this;
  SliverPhysicalContainerParentData get vmObject => this;
  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void applyPaintTransform(transform) {
    Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverPhysicalContainerParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverPhysicalContainerParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverPhysicalContainerParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SliverPhysicalContainerParentData>(boxer: (
      {required SliverPhysicalContainerParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverPhysicalContainerParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
