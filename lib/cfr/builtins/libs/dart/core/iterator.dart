import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedIterator extends VMManagedBox<Iterator<dynamic>> {
  VMManagedIterator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['moveNext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.moveNext(),
      ];
    });
    table['getCurrent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.current,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Iterator vmObject;
}

void loadIterator({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Iterator>(boxer: (
      {required Iterator vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIterator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
