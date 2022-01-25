import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverPhysicalParentData
    extends VMManagedBox<SliverPhysicalParentData> {
  VMManagedSliverPhysicalParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['paintOffset'] = maybeBoxObject<Offset>(
        object: vmObject.paintOffset,
        hydroState: hydroState,
        table: HydroTable());
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

  final SliverPhysicalParentData vmObject;
}

class RTManagedSliverPhysicalParentData extends SliverPhysicalParentData
    implements Box<SliverPhysicalParentData> {
  RTManagedSliverPhysicalParentData(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['paintOffset'] = maybeBoxObject<Offset>(
        object: paintOffset, hydroState: hydroState, table: HydroTable());
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
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SliverPhysicalParentData unwrap() => this;
  SliverPhysicalParentData get vmObject => this;
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
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverPhysicalParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverPhysicalParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverPhysicalParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SliverPhysicalParentData>(boxer: (
      {required SliverPhysicalParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverPhysicalParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
