import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSymbol extends VMManagedBox<Symbol> {
  VMManagedSymbol(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Symbol vmObject;
}

void loadSymbol({required HydroState hydroState, required HydroTable table}) {
  table['symbol'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Symbol>(
          object: Symbol(luaCallerArguments[1]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  registerBoxer<Symbol>(boxer: (
      {required Symbol vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSymbol(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
