import 'dart:core';

import 'package:flutter/src/rendering/object.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedParentData extends VMManagedBox<ParentData> {
  VMManagedParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ParentData vmObject;
}

class RTManagedParentData extends ParentData implements Box<ParentData> {
  RTManagedParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ParentData unwrap() => this;
  ParentData get vmObject => this;
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
}

void loadParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['parentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedParentData(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<ParentData>(boxer: (
      {required ParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
