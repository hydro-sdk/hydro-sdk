import 'dart:core';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGlobalKey
    extends VMManagedBox<GlobalKey<State<StatefulWidget>>> {
  VMManagedGlobalKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getCurrentContext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentContext;
      if (returnValue != null) {
        return [
          maybeBoxObject<BuildContext?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getCurrentWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentWidget;
      if (returnValue != null) {
        return [
          maybeBoxObject<Widget?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getCurrentState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentState;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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

  final GlobalKey<State<StatefulWidget>> vmObject;
}

void loadGlobalKey(
    {required HydroState hydroState, required HydroTable table}) {
  table['globalKey'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<GlobalKey>(
          object: GlobalKey(
              debugLabel: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['debugLabel']
                  : null),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  registerBoxer<GlobalKey>(boxer: (
      {required GlobalKey vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGlobalKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
