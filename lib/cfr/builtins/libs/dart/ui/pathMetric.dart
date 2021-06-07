import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedPathMetric extends VMManagedBox<PathMetric> {
  VMManagedPathMetric(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['length'] = vmObject.length;
    table['isClosed'] = vmObject.isClosed;
    table['contourIndex'] = vmObject.contourIndex;
    table['getTangentForOffset'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Tangent?>(
            object: vmObject.getTangentForOffset(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['extractPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Path?>(
            object: vmObject.extractPath(
                args[1]?.toDouble(), args[2]?.toDouble(),
                startWithMoveTo: args[3]['startWithMoveTo']),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PathMetric vmObject;
}

void loadPathMetric(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<PathMetric>(boxer: (
      {required PathMetric vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPathMetric(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
