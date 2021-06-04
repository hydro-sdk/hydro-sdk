import 'dart:core';
import 'dart:ui';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedCallbackHandle extends VMManagedBox<CallbackHandle?> {
  VMManagedCallbackHandle(
      {required this.table,
      required this.vmObject,
      required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['toRawHandle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.toRawHandle()];
    });
    table!['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final CallbackHandle? vmObject;
}

void loadCallbackHandle(
    {required HydroState hydroState, required HydroTable table}) {
  table['callbackHandleFromRawHandle'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<CallbackHandle>(
          object: CallbackHandle.fromRawHandle(args[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<CallbackHandle>(boxer: (
      {required CallbackHandle? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedCallbackHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
