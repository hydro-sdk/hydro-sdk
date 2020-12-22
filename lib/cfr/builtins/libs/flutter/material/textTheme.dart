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
    @required this.table,
    @required this.vmObject,
    @required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table["display1"] = maybeBoxObject<TextStyle>(
      object: vmObject.display1,
      hydroState: hydroState,
      table: HydroTable(),
    );
    table["headline"] = maybeBoxObject<TextStyle>(
      object: vmObject.headline,
      hydroState: hydroState,
      table: HydroTable(),
    );
    table["body1"] = maybeBoxObject<TextStyle>(
      object: vmObject.body1,
      hydroState: hydroState,
      table: HydroTable(),
    );

    table["body2"] = maybeBoxObject<TextStyle>(
      object: vmObject.body2,
      hydroState: hydroState,
      table: HydroTable(),
    );
    table["subtitle"] = maybeBoxObject<TextStyle>(
      object: vmObject.subtitle,
      hydroState: hydroState,
      table: HydroTable(),
    );
  }
}

void loadTextTheme({@required HydroState hydroState}) {
  registerBoxer(
      boxer: ({TextTheme vmObject, HydroState hydroState, HydroTable table}) {
    return VMManagedTextTheme(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
}
