import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMapEntry extends VMManagedBox<MapEntry<dynamic, dynamic>> {
  VMManagedMapEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final MapEntry vmObject;
}

void loadMapEntry({required HydroState hydroState, required HydroTable table}) {
  table['mapEntry'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<MapEntry>(
          object: MapEntry(luaCallerArguments[1], luaCallerArguments[2]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  registerBoxer<MapEntry>(boxer: (
      {required MapEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMapEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
