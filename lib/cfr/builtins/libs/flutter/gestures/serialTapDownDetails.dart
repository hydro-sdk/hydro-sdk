import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/gestures/multitap.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSerialTapDownDetails extends VMManagedBox<SerialTapDownDetails> {
  VMManagedSerialTapDownDetails(
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
    table['buttons'] = vmObject.buttons;
    table['count'] = vmObject.count;
  }

  final HydroTable table;

  final HydroState hydroState;

  final SerialTapDownDetails vmObject;
}

class RTManagedSerialTapDownDetails extends SerialTapDownDetails
    implements Box<SerialTapDownDetails> {
  RTManagedSerialTapDownDetails(
      {required int buttons,
      required int count,
      required Offset globalPosition,
      Offset? localPosition,
      required PointerDeviceKind kind,
      required this.table,
      required this.hydroState})
      : super(
            buttons: buttons,
            count: count,
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
    table['buttons'] = this.buttons;
    table['count'] = this.count;
  }

  final HydroTable table;

  final HydroState hydroState;

  SerialTapDownDetails unwrap() => this;
  SerialTapDownDetails get vmObject => this;
}

void loadSerialTapDownDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['serialTapDownDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSerialTapDownDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          buttons: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttons']
              : null,
          count: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['count']
              : null,
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
  registerBoxer<SerialTapDownDetails>(boxer: (
      {required SerialTapDownDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSerialTapDownDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
