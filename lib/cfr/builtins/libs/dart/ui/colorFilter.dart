import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedColorFilter extends VMManagedBox<ColorFilter> {
  VMManagedColorFilter(
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ColorFilter vmObject;
}

void loadColorFilter(
    {required HydroState hydroState, required HydroTable table}) {
  table['colorFilterMode'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ColorFilter>(
          object: ColorFilter.mode(
              maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxEnum(
                  values: BlendMode.values, boxedEnum: luaCallerArguments[2])),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['colorFilterMatrix'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ColorFilter>(
          object: ColorFilter.matrix(
              maybeUnBoxAndBuildArgument<List<double>, double>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['colorFilterLinearToSrgbGamma'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ColorFilter>(
          object: ColorFilter.linearToSrgbGamma(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['colorFilterSrgbToLinearGamma'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ColorFilter>(
          object: ColorFilter.srgbToLinearGamma(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ColorFilter>(boxer: (
      {required ColorFilter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedColorFilter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
