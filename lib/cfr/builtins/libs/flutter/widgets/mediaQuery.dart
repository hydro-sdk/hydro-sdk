import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedMediaQueryData extends VMManagedBox<MediaQueryData> {
  final HydroTable table;
  final HydroState hydroState;
  final MediaQueryData vmObject;
  VMManagedMediaQueryData({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["size"] = maybeBoxObject(
      object: vmObject.size,
      hydroState: hydroState,
      table: HydroTable(),
    );
  }
}

void loadMediaQuery({
  required HydroState luaState,
  required HydroTable table,
}) {
  registerBoxer<MediaQueryData>(boxer: ({
    required MediaQueryData vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedMediaQueryData(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });

  table["mediaQueryOf"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject(
        object: MediaQuery.of(maybeUnBoxAndBuildArgument<BuildContext, dynamic>(
          args[0],
          parentState: luaState,
        )),
        hydroState: luaState,
        table: HydroTable(),
      )
    ];
  });
}
