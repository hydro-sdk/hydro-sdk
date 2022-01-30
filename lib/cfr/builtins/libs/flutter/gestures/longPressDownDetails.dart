import 'dart:ui';

import 'package:flutter/src/gestures/long_press.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLongPressDownDetails extends VMManagedBox<LongPressDownDetails> {
  VMManagedLongPressDownDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: vmObject.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final LongPressDownDetails vmObject;
}

class RTManagedLongPressDownDetails extends LongPressDownDetails
    implements Box<LongPressDownDetails> {
  RTManagedLongPressDownDetails(
      {required Offset globalPosition,
      PointerDeviceKind? kind,
      Offset? localPosition,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            kind: kind,
            localPosition: localPosition) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: this.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  LongPressDownDetails unwrap() => this;
  LongPressDownDetails get vmObject => this;
}

void loadLongPressDownDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['longPressDownDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressDownDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          kind: maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['kind']
                  : null),
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<LongPressDownDetails>(boxer: (
      {required LongPressDownDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLongPressDownDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
