import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/stack.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStackParentData extends VMManagedBox<StackParentData> {
  VMManagedStackParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['top'] = vmObject.top;
    table['right'] = vmObject.right;
    table['bottom'] = vmObject.bottom;
    table['left'] = vmObject.left;
    table['width'] = vmObject.width;
    table['height'] = vmObject.height;
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
    table['getRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RelativeRect>(
            object: vmObject.rect, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['setRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rect = (maybeUnBoxAndBuildArgument<RelativeRect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getIsPositioned'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isPositioned,
      ];
    });
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

  final StackParentData vmObject;
}

class RTManagedStackParentData extends StackParentData
    implements Box<StackParentData> {
  RTManagedStackParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['top'] = top;
    table['right'] = right;
    table['bottom'] = bottom;
    table['left'] = left;
    table['width'] = width;
    table['height'] = height;
    table['previousSibling'] = maybeBoxObject<RenderBox?>(
        object: previousSibling, hydroState: hydroState, table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderBox?>(
        object: nextSibling, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: offset, hydroState: hydroState, table: HydroTable());
    table['_dart_getRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.rect];
    });
    table['_dart_setRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rect = (maybeUnBoxAndBuildArgument<RelativeRect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getIsPositioned'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isPositioned];
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

  StackParentData unwrap() => this;
  StackParentData get vmObject => this;
  @override
  RelativeRect get rect {
    Closure closure = table["getRect"];
    return maybeUnBoxAndBuildArgument<RelativeRect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set rect(value) {
    Closure closure = table["setRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isPositioned {
    Closure closure = table["getIsPositioned"];
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

void loadStackParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['stackParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedStackParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<StackParentData>(boxer: (
      {required StackParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStackParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
