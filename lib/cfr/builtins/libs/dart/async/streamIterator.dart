import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStreamIterator extends VMManagedBox<StreamIterator<dynamic>> {
  VMManagedStreamIterator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['moveNext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.moveNext(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getCurrent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.current,
      ];
    });
    table['cancel'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.cancel(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StreamIterator vmObject;
}

void loadStreamIterator(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<StreamIterator>(boxer: (
      {required StreamIterator vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStreamIterator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
