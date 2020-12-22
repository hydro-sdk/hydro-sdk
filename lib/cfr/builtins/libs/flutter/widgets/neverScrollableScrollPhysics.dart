import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedNeverScrollableScrollPhysics
    extends VMManagedBox<NeverScrollableScrollPhysics> {
  final HydroTable table;
  final HydroState hydroState;
  final NeverScrollableScrollPhysics vmObject;
  VMManagedNeverScrollableScrollPhysics({
    @required this.table,
    @required this.hydroState,
    @required this.vmObject,
  }) : super(
          table: table,
          hydroState: hydroState,
          vmObject: vmObject,
        ) {
    table["applyTo"] = makeLuaDartFunc(func: (List<dynamic> args) {
      dynamic rawCaller = args[0];
      NeverScrollableScrollPhysics caller;
      caller = maybeUnBoxAndBuildArgument<NeverScrollableScrollPhysics>(
          rawCaller,
          parentState: hydroState);
      ScrollPhysics ancestor;
      if (args.length >= 2) {
        ancestor = maybeUnBoxAndBuildArgument<ScrollPhysics>(args[1],
            parentState: hydroState);
      }

      return [
        maybeBoxObject<NeverScrollableScrollPhysics>(
          object: caller.applyTo(ancestor),
          hydroState: hydroState,
          table: HydroTable(),
        )
      ];
    });
  }
}

void loadNeverScrollableScrollPhysics(
    {@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<NeverScrollableScrollPhysics>(boxer: (
      {NeverScrollableScrollPhysics vmObject,
      HydroState hydroState,
      HydroTable table}) {
    return VMManagedNeverScrollableScrollPhysics(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
  table["neverScrollableScrollPhysics"] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    HydroTable caller = args[0];
    ScrollPhysics parent;
    if (args.length >= 2 && args[1] != null) {
      parent = maybeUnBoxAndBuildArgument<ScrollPhysics>(args[1]["parent"],
          parentState: hydroState);
    }

    return [
      maybeBoxObject(
          object: NeverScrollableScrollPhysics(parent: parent),
          hydroState: hydroState,
          table: caller)
    ];
  });
}
