import 'dart:ui';

import 'package:flutter/src/gestures/tap.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTapUpDetails extends VMManagedBox<TapUpDetails> {
  VMManagedTapUpDetails(
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
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == vmObject.kind;
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final TapUpDetails vmObject;
}

class RTManagedTapUpDetails extends TapUpDetails implements Box<TapUpDetails> {
  RTManagedTapUpDetails(
      {required Offset globalPosition,
      Offset? localPosition,
      required PointerDeviceKind kind,
      required this.table,
      required this.hydroState})
      : super(
            globalPosition: globalPosition,
            localPosition: localPosition,
            kind: kind) {
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
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TapUpDetails unwrap() => this;
  TapUpDetails get vmObject => this;
}

void loadTapUpDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['tapUpDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTapUpDetails(
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
              parentState: hydroState),
          kind: maybeUnBoxEnum(
              values: PointerDeviceKind.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['kind']
                  : null))
    ];
  });
  registerBoxer<TapUpDetails>(boxer: (
      {required TapUpDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTapUpDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
