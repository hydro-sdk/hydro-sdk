import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsUpdate extends VMManagedBox<SemanticsUpdate> {
  VMManagedSemanticsUpdate(
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

  final SemanticsUpdate vmObject;
}

void loadSemanticsUpdate(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<SemanticsUpdate>(boxer: (
      {required SemanticsUpdate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsUpdate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
