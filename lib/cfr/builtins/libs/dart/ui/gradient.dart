import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGradient extends VMManagedBox<Gradient> {
  VMManagedGradient(
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Gradient vmObject;
}

void loadGradient({required HydroState hydroState, required HydroTable table}) {
  table['gradientLinear'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Gradient>(
          object: Gradient.linear(
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<List<Color>, Color>(
                  luaCallerArguments[3],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<List<double>?, double>(
                  luaCallerArguments[4],
                  parentState: hydroState),
              maybeUnBoxEnum(
                  values: TileMode.values, boxedEnum: luaCallerArguments[5]),
              maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
                  luaCallerArguments[6],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['gradientRadial'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Gradient>(
          object: Gradient.radial(
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]?.toDouble(),
              maybeUnBoxAndBuildArgument<List<Color>, Color>(
                  luaCallerArguments[3],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<List<double>?, double>(
                  luaCallerArguments[4],
                  parentState: hydroState),
              maybeUnBoxEnum(
                  values: TileMode.values, boxedEnum: luaCallerArguments[5]),
              maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
                  luaCallerArguments[6],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                  luaCallerArguments[7],
                  parentState: hydroState),
              luaCallerArguments[8]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['gradientSweep'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Gradient>(
          object: Gradient.sweep(
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<List<Color>, Color>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<List<double>?, double>(
                  luaCallerArguments[3],
                  parentState: hydroState),
              maybeUnBoxEnum(
                  values: TileMode.values, boxedEnum: luaCallerArguments[4]),
              luaCallerArguments[5]?.toDouble(),
              luaCallerArguments[6]?.toDouble(),
              maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
                  luaCallerArguments[7],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Gradient>(boxer: (
      {required Gradient vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGradient(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
