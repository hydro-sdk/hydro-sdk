import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSink extends VMManagedBox<Sink<dynamic>> {
  VMManagedSink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(luaCallerArguments[1]);
      return [];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Sink vmObject;
}

void loadSink({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Sink>(boxer: (
      {required Sink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
