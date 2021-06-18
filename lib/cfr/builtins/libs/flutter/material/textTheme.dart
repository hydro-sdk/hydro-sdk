import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextTheme extends VMManagedBox<TextTheme> {
  final HydroTable table;
  final TextTheme vmObject;
  final HydroState hydroState;

  VMManagedTextTheme({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table["display1"] = vmObject.display1 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.display1!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
    table["headline"] = vmObject.headline != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.headline!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
    table["body1"] = vmObject.body1 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.body1!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;

    table["body2"] = vmObject.body2 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.body2!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
    table["subtitle"] = vmObject.subtitle != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.subtitle!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
  }
}

void loadTextTheme({
  required HydroState hydroState,
}) {
  registerBoxer(boxer: ({
    required TextTheme vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedTextTheme(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
}
