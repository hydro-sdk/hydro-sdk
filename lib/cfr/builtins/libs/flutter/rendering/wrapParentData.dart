import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/wrap.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedWrapParentData extends VMManagedBox<WrapParentData> {
  VMManagedWrapParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['previousSibling'] = maybeBoxObject<RenderBox?>(
        object: vmObject.previousSibling,
        hydroState: hydroState,
        table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderBox?>(
        object: vmObject.nextSibling,
        hydroState: hydroState,
        table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: vmObject.offset, hydroState: hydroState, table: HydroTable());
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

  final WrapParentData vmObject;
}

class RTManagedWrapParentData extends WrapParentData
    implements Box<WrapParentData> {
  RTManagedWrapParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['previousSibling'] = maybeBoxObject<RenderBox?>(
        object: previousSibling, hydroState: hydroState, table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderBox?>(
        object: nextSibling, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: offset, hydroState: hydroState, table: HydroTable());
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

  WrapParentData unwrap() => this;
  WrapParentData get vmObject => this;
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

void loadWrapParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['wrapParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedWrapParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<WrapParentData>(boxer: (
      {required WrapParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedWrapParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
