import 'package:flutter/material.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedThemeData extends VMManagedBox<ThemeData> {
  final HydroTable table;
  final ThemeData vmObject;
  final HydroState hydroState;
  VMManagedThemeData({
    @required this.table,
    @required this.vmObject,
    @required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table["textTheme"] = maybeBoxObject<TextTheme>(
      object: vmObject.textTheme,
      hydroState: hydroState,
    );
  }
}

void loadThemeData({@required HydroState hydroState}) {
  registerBoxer(boxer: ({ThemeData vmObject, HydroState hydroState}) {
    return VMManagedThemeData(
      vmObject: vmObject,
      hydroState: hydroState,
      table: HydroTable(),
    );
  });
}
