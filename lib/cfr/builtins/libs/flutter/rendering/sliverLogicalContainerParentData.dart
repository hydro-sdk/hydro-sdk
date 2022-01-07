import 'dart:core';

import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverLogicalContainerParentData
    extends VMManagedBox<SliverLogicalContainerParentData> {
  VMManagedSliverLogicalContainerParentData(
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
    table['layoutOffset'] = vmObject.layoutOffset;
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
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

  final SliverLogicalContainerParentData vmObject;
}

class RTManagedSliverLogicalContainerParentData
    extends SliverLogicalContainerParentData
    implements Box<SliverLogicalContainerParentData> {
  RTManagedSliverLogicalContainerParentData(
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
    table['layoutOffset'] = layoutOffset;
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
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

  SliverLogicalContainerParentData unwrap() => this;
  SliverLogicalContainerParentData get vmObject => this;
  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
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

void loadSliverLogicalContainerParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverLogicalContainerParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverLogicalContainerParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SliverLogicalContainerParentData>(boxer: (
      {required SliverLogicalContainerParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverLogicalContainerParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
