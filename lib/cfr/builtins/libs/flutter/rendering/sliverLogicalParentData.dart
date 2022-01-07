import 'dart:core';

import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverLogicalParentData
    extends VMManagedBox<SliverLogicalParentData> {
  VMManagedSliverLogicalParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['layoutOffset'] = vmObject.layoutOffset;
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

  final SliverLogicalParentData vmObject;
}

class RTManagedSliverLogicalParentData extends SliverLogicalParentData
    implements Box<SliverLogicalParentData> {
  RTManagedSliverLogicalParentData(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['layoutOffset'] = layoutOffset;
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

  SliverLogicalParentData unwrap() => this;
  SliverLogicalParentData get vmObject => this;
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

void loadSliverLogicalParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverLogicalParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverLogicalParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SliverLogicalParentData>(boxer: (
      {required SliverLogicalParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverLogicalParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
