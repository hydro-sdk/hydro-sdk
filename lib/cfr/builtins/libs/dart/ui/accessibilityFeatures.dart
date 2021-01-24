import 'dart:core';
import 'dart:ui';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedAccessibilityFeatures
    extends VMManagedBox<AccessibilityFeatures> {
  VMManagedAccessibilityFeatures(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getAccessibleNavigation'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.accessibleNavigation];
    });
    table['getInvertColors'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.invertColors];
    });
    table['getDisableAnimations'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.disableAnimations];
    });
    table['getBoldText'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.boldText];
    });
    table['getReduceMotion'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.reduceMotion];
    });
    table['getHighContrast'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.highContrast];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final AccessibilityFeatures vmObject;
}

void loadAccessibilityFeatures(
    {@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<AccessibilityFeatures>(boxer: (
      {@required AccessibilityFeatures vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedAccessibilityFeatures(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
