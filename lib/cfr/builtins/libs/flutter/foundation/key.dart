import 'dart:core';

import 'package:flutter/src/foundation/key.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

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
  table['key'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Key>(
          object: Key(luaCallerArguments[1]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
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
