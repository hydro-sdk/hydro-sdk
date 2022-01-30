import 'dart:ui';

import 'package:flutter/src/gestures/long_press.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLongPressMoveUpdateDetails
    extends VMManagedBox<LongPressMoveUpdateDetails> {
  VMManagedLongPressMoveUpdateDetails(
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
    table['offsetFromOrigin'] = maybeBoxObject<Offset>(
        object: vmObject.offsetFromOrigin,
        hydroState: hydroState,
        table: HydroTable());
    table['localOffsetFromOrigin'] = maybeBoxObject<Offset>(
        object: vmObject.localOffsetFromOrigin,
        hydroState: hydroState,
        table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final LongPressMoveUpdateDetails vmObject;
}

class RTManagedLongPressMoveUpdateDetails extends LongPressMoveUpdateDetails
    implements Box<LongPressMoveUpdateDetails> {
  RTManagedLongPressMoveUpdateDetails(
      {required Offset globalPosition,
      Offset? localOffsetFromOrigin,
      Offset? localPosition,
      required Offset offsetFromOrigin,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            localOffsetFromOrigin: localOffsetFromOrigin,
            localPosition: localPosition,
            offsetFromOrigin: offsetFromOrigin) {
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
    table['offsetFromOrigin'] = maybeBoxObject<Offset>(
        object: this.offsetFromOrigin,
        hydroState: hydroState,
        table: HydroTable());
    table['localOffsetFromOrigin'] = maybeBoxObject<Offset>(
        object: this.localOffsetFromOrigin,
        hydroState: hydroState,
        table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  LongPressMoveUpdateDetails unwrap() => this;
  LongPressMoveUpdateDetails get vmObject => this;
}

void loadLongPressMoveUpdateDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['longPressMoveUpdateDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLongPressMoveUpdateDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          globalPosition: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['globalPosition']
                  : null,
              parentState: hydroState),
          localOffsetFromOrigin: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['localOffsetFromOrigin']
                  : null,
              parentState: hydroState),
          localPosition: maybeUnBoxAndBuildArgument<Offset?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['localPosition'] : null,
              parentState: hydroState),
          offsetFromOrigin: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offsetFromOrigin']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<LongPressMoveUpdateDetails>(boxer: (
      {required LongPressMoveUpdateDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLongPressMoveUpdateDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
