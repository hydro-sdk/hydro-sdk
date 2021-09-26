import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedClampingScrollPhysics
    extends VMManagedBox<ClampingScrollPhysics> {
  final HydroTable table;
  final HydroState hydroState;
  final ClampingScrollPhysics vmObject;
  VMManagedClampingScrollPhysics({
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
      ClampingScrollPhysics? caller;
      caller = maybeUnBoxAndBuildArgument<ClampingScrollPhysics, dynamic>(
        rawCaller,
        parentState: hydroState,
      );
      ScrollPhysics? ancestor;
      if (args.length >= 2) {
        ancestor = maybeUnBoxAndBuildArgument<ScrollPhysics, dynamic>(
          args[1],
          parentState: hydroState,
        );
      }

      return [
        maybeBoxObject<ClampingScrollPhysics>(
          object: caller!.applyTo(ancestor),
          hydroState: hydroState,
          table: HydroTable(),
        )
      ];
    });
  }
}

void loadClampingScrollPhysics(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<ClampingScrollPhysics>(boxer: ({
    required ClampingScrollPhysics vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedClampingScrollPhysics(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
  table["clampingScrollPhysics"] = makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];
    ScrollPhysics? parent;
    if (args.length >= 2 && args[1] != null) {
      parent = maybeUnBoxAndBuildArgument<ScrollPhysics, dynamic>(
          args[1]["parent"],
          parentState: hydroState);
    }

    return [
      maybeBoxObject(
        object: ClampingScrollPhysics(parent: parent),
        hydroState: hydroState,
        table: caller,
      )
    ];
  });
}
