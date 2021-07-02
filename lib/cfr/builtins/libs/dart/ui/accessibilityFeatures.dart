import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAccessibilityFeatures
    extends VMManagedBox<AccessibilityFeatures> {
  VMManagedAccessibilityFeatures(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getAccessibleNavigation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.accessibleNavigation,
      ];
    });
    table['getInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.invertColors,
      ];
    });
    table['getDisableAnimations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.disableAnimations,
      ];
    });
    table['getBoldText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.boldText,
      ];
    });
    table['getReduceMotion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.reduceMotion,
      ];
    });
    table['getHighContrast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.highContrast,
      ];
    });
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

  final AccessibilityFeatures vmObject;
}

void loadAccessibilityFeatures(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<AccessibilityFeatures>(boxer: (
      {required AccessibilityFeatures vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAccessibilityFeatures(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
