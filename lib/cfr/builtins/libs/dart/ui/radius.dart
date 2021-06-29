import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedRadius extends VMManagedBox<Radius> {
  VMManagedRadius(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['x'] = vmObject.x;
    table['y'] = vmObject.y;
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.hashCode];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Radius vmObject;
}

void loadRadius({required HydroState hydroState, required HydroTable table}) {
  table['radiusCircular'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Radius>(
          object: Radius.circular(luaCallerArguments[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['radiusElliptical'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Radius>(
          object: Radius.elliptical(luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['radiusLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Radius?>(
          object: Radius.lerp(
              maybeUnBoxAndBuildArgument<Radius?>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Radius?>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Radius>(boxer: (
      {required Radius vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRadius(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
