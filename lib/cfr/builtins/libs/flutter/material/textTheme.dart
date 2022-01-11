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
    table["headline4"] = vmObject.headline4 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.headline4!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
    table["headline5"] = vmObject.headline5 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.headline5!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
    table["bodyText2"] = vmObject.bodyText2 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.bodyText2!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;

    table["bodyText1"] = vmObject.bodyText1 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.bodyText1!,
            hydroState: hydroState,
            table: HydroTable(),
          )
        : null;
    table["subtitle2"] = vmObject.subtitle2 != null
        ? maybeBoxObject<TextStyle>(
            object: vmObject.subtitle2!,
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
