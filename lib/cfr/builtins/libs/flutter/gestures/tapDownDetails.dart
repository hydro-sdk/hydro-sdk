import 'dart:ui';

import 'package:flutter/src/gestures/tap.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTapDownDetails extends VMManagedBox<TapDownDetails> {
  VMManagedTapDownDetails(
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

  final TapDownDetails vmObject;
}

class RTManagedTapDownDetails extends TapDownDetails
    implements Box<TapDownDetails> {
  RTManagedTapDownDetails(
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

  TapDownDetails unwrap() => this;
  TapDownDetails get vmObject => this;
}

void loadTapDownDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['tapDownDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTapDownDetails(
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
  registerBoxer<TapDownDetails>(boxer: (
      {required TapDownDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTapDownDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
