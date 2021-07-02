import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMaskFilter extends VMManagedBox<MaskFilter> {
  VMManagedMaskFilter(
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

  final MaskFilter vmObject;
}

void loadMaskFilter(
    {required HydroState hydroState, required HydroTable table}) {
  table['maskFilterBlur'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<MaskFilter>(
          object: MaskFilter.blur(
              maybeUnBoxEnum(
                  values: BlurStyle.values, boxedEnum: luaCallerArguments[1]),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<MaskFilter>(boxer: (
      {required MaskFilter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMaskFilter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
