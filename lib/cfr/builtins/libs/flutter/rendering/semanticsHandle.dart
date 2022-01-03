import 'package:flutter/src/rendering/object.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsHandle extends VMManagedBox<SemanticsHandle> {
  VMManagedSemanticsHandle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsHandle vmObject;
}

void loadSemanticsHandle(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<SemanticsHandle>(boxer: (
      {required SemanticsHandle vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
