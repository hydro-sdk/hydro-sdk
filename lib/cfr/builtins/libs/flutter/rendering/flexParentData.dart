import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'package:flutter/src/rendering/object.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFlexParentData extends VMManagedBox<FlexParentData> {
  VMManagedFlexParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['flex'] = vmObject.flex;
    table['fit'] = FlexFit.values.indexWhere((x) {
      return x == vmObject.fit;
    });
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

  final FlexParentData vmObject;
}

class RTManagedFlexParentData extends FlexParentData
    implements Box<FlexParentData> {
  RTManagedFlexParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['flex'] = flex;
    table['fit'] = FlexFit.values.indexWhere((x) {
      return x == fit;
    });
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

  FlexParentData unwrap() => this;
  FlexParentData get vmObject => this;
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

void loadFlexParentData(
    {required HydroState hydroState, required HydroTable table}) {
  table['flexParentData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedFlexParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<FlexParentData>(boxer: (
      {required FlexParentData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFlexParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
