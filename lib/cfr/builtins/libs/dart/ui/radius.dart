import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

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
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
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
          table: HydroTable()),
    ];
  });
  table['radiusElliptical'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Radius>(
          object: Radius.elliptical(luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['radiusLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Radius.lerp(
        maybeUnBoxAndBuildArgument<Radius?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<Radius?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<Radius?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<Radius>(boxer: (
      {required Radius vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRadius(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
