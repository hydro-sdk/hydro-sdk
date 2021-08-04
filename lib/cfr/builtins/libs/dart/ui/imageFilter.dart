import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedImageFilter extends VMManagedBox<ImageFilter> {
  VMManagedImageFilter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final ImageFilter vmObject;
}

void loadImageFilter(
    {required HydroState hydroState, required HydroTable table}) {
  table['imageFilterBlur'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ImageFilter>(
          object: ImageFilter.blur(
              sigmaX: luaCallerArguments[1]['sigmaX']?.toDouble(),
              sigmaY: luaCallerArguments[1]['sigmaY']?.toDouble(),
              tileMode: maybeUnBoxEnum(
                  values: TileMode.values,
                  boxedEnum: luaCallerArguments[1]['tileMode'])),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['imageFilterMatrix'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ImageFilter>(
          object: ImageFilter.matrix(
              maybeUnBoxAndBuildArgument<Float64List>(luaCallerArguments[1],
                  parentState: hydroState),
              filterQuality: maybeUnBoxEnum(
                  values: FilterQuality.values,
                  boxedEnum: luaCallerArguments[2]['filterQuality'])),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['imageFilterCompose'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ImageFilter>(
          object: ImageFilter.compose(
              inner: maybeUnBoxAndBuildArgument<ImageFilter>(
                  luaCallerArguments[1]['inner'],
                  parentState: hydroState),
              outer: maybeUnBoxAndBuildArgument<ImageFilter>(
                  luaCallerArguments[1]['outer'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ImageFilter>(boxer: (
      {required ImageFilter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedImageFilter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
