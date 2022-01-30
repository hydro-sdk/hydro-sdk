import 'dart:ui';

import 'package:flutter/src/gestures/long_press.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLongPressStartDetails
    extends VMManagedBox<LongPressStartDetails> {
  VMManagedLongPressStartDetails(
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
    table['localPosition'] = maybeBoxObject<Offset>(
        object: vmObject.localPosition,
        hydroState: hydroState,
        table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final LongPressStartDetails vmObject;
}

class RTManagedLongPressStartDetails extends LongPressStartDetails
    implements Box<LongPressStartDetails> {
  RTManagedLongPressStartDetails(
      {required Offset globalPosition,
      Offset? localPosition,
      required this.table,
      required this.hydroState})
      : super(globalPosition: globalPosition, localPosition: localPosition) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['globalPosition'] = maybeBoxObject<Offset>(
        object: this.globalPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  LongPressStartDetails unwrap() => this;
  LongPressStartDetails get vmObject => this;
}

void loadLongPressStartDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['longPressStartDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressStartDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localPosition']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<LongPressStartDetails>(boxer: (
      {required LongPressStartDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLongPressStartDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
