import 'dart:core';

import 'package:flutter/src/gestures/multitap.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSerialTapCancelDetails
    extends VMManagedBox<SerialTapCancelDetails> {
  VMManagedSerialTapCancelDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['count'] = vmObject.count;
  }

  final HydroTable table;

  final HydroState hydroState;

  final SerialTapCancelDetails vmObject;
}

class RTManagedSerialTapCancelDetails extends SerialTapCancelDetails
    implements Box<SerialTapCancelDetails> {
  RTManagedSerialTapCancelDetails(
      {required int count, required this.table, required this.hydroState})
      : super(count: count) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['count'] = this.count;
  }

  final HydroTable table;

  final HydroState hydroState;

  SerialTapCancelDetails unwrap() => this;
  SerialTapCancelDetails get vmObject => this;
}

void loadSerialTapCancelDetails(
    {required HydroState hydroState, required HydroTable table}) {
  table['serialTapCancelDetails'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSerialTapCancelDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          count: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['count']
              : null)
    ];
  });
  registerBoxer<SerialTapCancelDetails>(boxer: (
      {required SerialTapCancelDetails vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSerialTapCancelDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
