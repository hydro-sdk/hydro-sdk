import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextBox extends VMManagedBox<TextBox> {
  VMManagedTextBox(
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
    table['direction'] = TextDirection.values.indexWhere((x) {
      return x == vmObject.direction;
    });
    table['toRect'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.toRect(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getStart'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.start,
      ];
    });
    table['getEnd'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.end,
      ];
    });
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

  final TextBox vmObject;
}

void loadTextBox({required HydroState hydroState, required HydroTable table}) {
  table['textBoxFromLTRBD'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TextBox>(
          object: TextBox.fromLTRBD(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble(),
              maybeUnBoxEnum(
                  values: TextDirection.values,
                  boxedEnum: luaCallerArguments[5])),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<TextBox>(boxer: (
      {required TextBox vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextBox(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
