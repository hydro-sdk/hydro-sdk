import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedDiagnosticableTree extends VMManagedBox<DiagnosticableTree> {
  VMManagedDiagnosticableTree(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toStringShallow'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.toStringShallow(
            joiner: args[1]['joiner'],
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']))
      ];
    });
    table['toStringDeep'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']),
            prefixLineOne: args[1]['prefixLineOne'],
            prefixOtherLines: args[1]['prefixOtherLines'])
      ];
    });
    table['toStringShort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toStringShort()];
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
          table: HydroTable(),
        )
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DiagnosticableTree vmObject;
}

class RTManagedDiagnosticableTree extends DiagnosticableTree
    implements Box<DiagnosticableTree> {
  RTManagedDiagnosticableTree({
    required this.table,
    required this.hydroState,
  }) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.toStringShallow(
            joiner: args[1]['joiner'],
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']))
      ];
    });
    table['_dart_toStringDeep'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']),
            prefixLineOne: args[1]['prefixLineOne'],
            prefixOtherLines: args[1]['prefixOtherLines'])
      ];
    });
    table['_dart_toStringShort'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toStringShort()];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
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

  DiagnosticableTree unwrap() => this;
  DiagnosticableTree get vmObject => this;
  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadDiagnosticableTree(
    {required HydroState hydroState, required HydroTable table}) {
  table['diagnosticableTree'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedDiagnosticableTree(table: args[0], hydroState: hydroState)
    ];
  });
  registerBoxer<DiagnosticableTree>(boxer: (
      {required DiagnosticableTree vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDiagnosticableTree(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });
}
