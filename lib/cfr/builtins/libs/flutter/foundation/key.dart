import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedKey extends VMManagedBox<Key> {
  VMManagedKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final Key vmObject;
}

void loadKey({required HydroState hydroState, required HydroTable table}) {
  table['key'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Key>(
          object: Key(args[1]), hydroState: hydroState, table: args[0])
    ];
  });
  registerBoxer<Key>(boxer: (
      {required Key vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
