import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedDiagnosticPropertiesBuilder
    extends VMManagedBox<DiagnosticPropertiesBuilder> {
  VMManagedDiagnosticPropertiesBuilder({
    required this.table,
    required this.vmObject,
    required this.hydroState,
  }) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['properties'] = maybeBoxObject<List<dynamic>>(
        object: vmObject.properties,
        hydroState: hydroState,
        table: HydroTable());
    table['defaultDiagnosticsTreeStyle'] =
        DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == vmObject.defaultDiagnosticsTreeStyle;
    });
    table['emptyBodyDescription'] = vmObject.emptyBodyDescription;
    table['add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.add(maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(args[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DiagnosticPropertiesBuilder vmObject;
}

class RTManagedDiagnosticPropertiesBuilder extends DiagnosticPropertiesBuilder
    implements Box<DiagnosticPropertiesBuilder> {
  RTManagedDiagnosticPropertiesBuilder(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['properties'] = maybeBoxObject<List<dynamic>>(
        object: properties, hydroState: hydroState, table: HydroTable());
    table['defaultDiagnosticsTreeStyle'] =
        DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == defaultDiagnosticsTreeStyle;
    });
    table['emptyBodyDescription'] = emptyBodyDescription;
    table['_dart_add'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.add(maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(args[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DiagnosticPropertiesBuilder unwrap() => this;
  DiagnosticPropertiesBuilder get vmObject => this;
  @override
  void add(DiagnosticsNode property) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDiagnosticPropertiesBuilder(
    {required HydroState hydroState, required HydroTable table}) {
  table['diagnosticPropertiesBuilder'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedDiagnosticPropertiesBuilder(
          table: args[0], hydroState: hydroState)
    ];
  });
  table['diagnosticPropertiesBuilderFromProperties'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<DiagnosticPropertiesBuilder>(
          object: DiagnosticPropertiesBuilder.fromProperties(
              maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, dynamic>(
                  args[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<DiagnosticPropertiesBuilder>(boxer: (
      {required DiagnosticPropertiesBuilder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDiagnosticPropertiesBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
