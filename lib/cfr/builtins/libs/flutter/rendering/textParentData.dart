import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/paragraph.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextParentData extends VMManagedBox<TextParentData> {
  VMManagedTextParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scale'] = vmObject.scale;
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
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

  final TextParentData vmObject;
}

class RTManagedTextParentData extends TextParentData
    implements Box<TextParentData> {
  RTManagedTextParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['scale'] = scale;
    table['previousSibling'] = maybeBoxObject<RenderBox?>(
        object: previousSibling, hydroState: hydroState, table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderBox?>(
        object: nextSibling, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: offset, hydroState: hydroState, table: HydroTable());
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

  TextParentData unwrap() => this;
  TextParentData get vmObject => this;
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

void loadTextParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['textParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTextParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<TextParentData>(boxer: (
      {required TextParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
