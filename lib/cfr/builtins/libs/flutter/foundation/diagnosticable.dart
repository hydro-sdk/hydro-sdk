import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedDiagnosticable extends VMManagedBox<Diagnosticable> {
  VMManagedDiagnosticable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toStringShort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toStringShort()];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']))
      ];
    });
    table['toDiagnosticsNode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: args[1]['name'],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: args[1]['style'])),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Diagnosticable vmObject;
}

void loadDiagnosticable(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Diagnosticable>(boxer: ({
    required Diagnosticable vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedDiagnosticable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
