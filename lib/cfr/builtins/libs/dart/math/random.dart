import 'dart:core';
import 'dart:math';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedRandom extends VMManagedBox<Random> {
  VMManagedRandom(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['nextInt'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.nextInt(args[1])];
    });
    table['nextDouble'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.nextDouble()];
    });
    table['nextBool'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.nextBool()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Random vmObject;
}

void loadRandom({required HydroState hydroState, required HydroTable table}) {
  table['random'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Random>(
          object: Random(args[1]), hydroState: hydroState, table: args[0])
    ];
  });
  table['randomSecure'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Random>(
          object: Random.secure(), hydroState: hydroState, table: HydroTable())
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
