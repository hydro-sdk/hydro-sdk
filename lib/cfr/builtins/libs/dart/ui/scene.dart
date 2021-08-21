import 'dart:async';
import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedScene extends VMManagedBox<Scene> {
  VMManagedScene(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object:
                vmObject.toImage(luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Scene vmObject;
}

void loadScene({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Scene>(boxer: (
      {required Scene vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedScene(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
