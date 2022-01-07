import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/list_wheel_viewport.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedListWheelChildManager
    extends VMManagedBox<ListWheelChildManager> {
  VMManagedListWheelChildManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.childCount;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['childExistsAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.childExistsAt(luaCallerArguments[1]),
      ];
    });
    table['createChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.createChild(luaCallerArguments[1],
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['removeChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.removeChild(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ListWheelChildManager vmObject;
}

void loadListWheelChildManager(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<ListWheelChildManager>(boxer: (
      {required ListWheelChildManager vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedListWheelChildManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
