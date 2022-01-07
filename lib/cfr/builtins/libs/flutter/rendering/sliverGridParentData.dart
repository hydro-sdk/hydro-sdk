import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGridParentData extends VMManagedBox<SliverGridParentData> {
  VMManagedSliverGridParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['crossAxisOffset'] = vmObject.crossAxisOffset;
    table['index'] = vmObject.index;
    table['previousSibling'] = maybeBoxObject<RenderBox?>(
        object: vmObject.previousSibling,
        hydroState: hydroState,
        table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderBox?>(
        object: vmObject.nextSibling,
        hydroState: hydroState,
        table: HydroTable());
    table['keepAlive'] = vmObject.keepAlive;
    table['layoutOffset'] = vmObject.layoutOffset;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getKeptAlive'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.keptAlive,
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

  final SliverGridParentData vmObject;
}

class RTManagedSliverGridParentData extends SliverGridParentData
    implements Box<SliverGridParentData> {
  RTManagedSliverGridParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['crossAxisOffset'] = crossAxisOffset;
    table['index'] = index;
    table['previousSibling'] = maybeBoxObject<RenderBox?>(
        object: previousSibling, hydroState: hydroState, table: HydroTable());
    table['nextSibling'] = maybeBoxObject<RenderBox?>(
        object: nextSibling, hydroState: hydroState, table: HydroTable());
    table['keepAlive'] = keepAlive;
    table['layoutOffset'] = layoutOffset;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getKeptAlive'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.keptAlive];
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

  SliverGridParentData unwrap() => this;
  SliverGridParentData get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get keptAlive {
    Closure closure = table["getKeptAlive"];
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

void loadSliverGridParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverGridParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGridParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SliverGridParentData>(boxer: (
      {required SliverGridParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGridParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
