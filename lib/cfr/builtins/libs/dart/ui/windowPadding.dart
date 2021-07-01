import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedWindowPadding extends VMManagedBox<WindowPadding> {
  VMManagedWindowPadding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['left'] = vmObject.left;
    table['top'] = vmObject.top;
    table['right'] = vmObject.right;
    table['bottom'] = vmObject.bottom;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final WindowPadding vmObject;
}

void loadWindowPadding(
    {required HydroState hydroState, required HydroTable table}) {
  table['windowPaddingZero'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<WindowPadding>(
          object: WindowPadding.zero,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<WindowPadding>(boxer: (
      {required WindowPadding vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedWindowPadding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}