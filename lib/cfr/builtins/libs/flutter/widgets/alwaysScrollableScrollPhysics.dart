import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedAlwaysScrollableScrollPhysics
    extends VMManagedBox<AlwaysScrollableScrollPhysics> {
  final HydroTable table;
  final HydroState hydroState;
  final AlwaysScrollableScrollPhysics vmObject;
  VMManagedAlwaysScrollableScrollPhysics({
    required this.table,
    required this.hydroState,
    required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["applyTo"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      AlwaysScrollableScrollPhysics? caller;
      caller =
          maybeUnBoxAndBuildArgument<AlwaysScrollableScrollPhysics, dynamic>(
              rawCaller,
              parentState: hydroState);
      ScrollPhysics? ancestor;
      if (args.length >= 2) {
        ancestor = maybeUnBoxAndBuildArgument<ScrollPhysics, dynamic>(args[1],
            parentState: hydroState);
      }

      return [
        maybeBoxObject<AlwaysScrollableScrollPhysics>(
          object: caller!.applyTo(ancestor),
          hydroState: hydroState,
          table: HydroTable(),
        )
      ];
    });
  }
}

void loadAlwaysScrollableScrollPhysics(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<AlwaysScrollableScrollPhysics>(boxer: ({
    required AlwaysScrollableScrollPhysics vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedAlwaysScrollableScrollPhysics(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
  table["alwaysScrollableScrollPhysics"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];
    ScrollPhysics? parent;
    if (args.length >= 2 && args[1] != null) {
      parent = maybeUnBoxAndBuildArgument<ScrollPhysics, dynamic>(
          args[1]["parent"],
          parentState: hydroState);
    }

    return [
      maybeBoxObject(
        object: AlwaysScrollableScrollPhysics(parent: parent),
        hydroState: hydroState,
        table: caller,
      )
    ];
  });
}
