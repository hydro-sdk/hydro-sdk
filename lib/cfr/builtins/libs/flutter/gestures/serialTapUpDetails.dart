import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/multitap.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSerialTapUpDetails extends VMManagedBox<SerialTapUpDetails> {
  VMManagedSerialTapUpDetails(
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
    table['count'] = vmObject.count;
  }

  final HydroTable table;

  final HydroState hydroState;

  final SerialTapUpDetails vmObject;
}

class RTManagedSerialTapUpDetails extends SerialTapUpDetails
    implements Box<SerialTapUpDetails> {
  RTManagedSerialTapUpDetails(
      {required int count,
      required Offset globalPosition,
      PointerDeviceKind? kind,
      Offset? localPosition,
      required this.table,
      required this.hydroState})
      : super(
            count: count,
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
    table['localPosition'] = maybeBoxObject<Offset>(
        object: this.localPosition,
        hydroState: hydroState,
        table: HydroTable());
    table['kind'] = PointerDeviceKind.values.indexWhere((x) {
      return x == this.kind;
    });
    table['count'] = this.count;
  }

  final HydroTable table;

  final HydroState hydroState;

  SerialTapUpDetails unwrap() => this;
  SerialTapUpDetails get vmObject => this;
}

void loadSerialTapUpDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['serialTapUpDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSerialTapUpDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          count: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['count']
              : null,
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
  registerBoxer<SerialTapUpDetails>(boxer: (
      {required SerialTapUpDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSerialTapUpDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
