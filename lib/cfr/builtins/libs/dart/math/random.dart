import 'dart:core';
import 'dart:math';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRandom extends VMManagedBox<Random> {
  VMManagedRandom(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['nextInt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.nextInt(luaCallerArguments[1]),
      ];
    });
    table['nextDouble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.nextDouble(),
      ];
    });
    table['nextBool'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.nextBool(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Random vmObject;
}

void loadRandom({required HydroState hydroState, required HydroTable table}) {
  table['random'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Random>(
          object: Random(luaCallerArguments[1]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['randomSecure'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Random>(
          object: Random.secure(), hydroState: hydroState, table: HydroTable()),
    ];
  });
  registerBoxer<Random>(boxer: (
      {required Random vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRandom(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
