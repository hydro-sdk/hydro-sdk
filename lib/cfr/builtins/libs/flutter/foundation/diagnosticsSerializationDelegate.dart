import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedDiagnosticsSerializationDelegate
    extends VMManagedBox<DiagnosticsSerializationDelegate> {
  VMManagedDiagnosticsSerializationDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['additionalNodeProperties'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.additionalNodeProperties(
                maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['filterChildren'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .filterChildren(
                    maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, dynamic>(
                        args[1],
                        parentState: hydroState),
                    maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
                        args[2],
                        parentState: hydroState))
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['filterProperties'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .filterProperties(
                    maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, dynamic>(
                        args[1],
                        parentState: hydroState),
                    maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
                        args[2],
                        parentState: hydroState))
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['truncateNodesList'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .truncateNodesList(
                    maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, dynamic>(
                        args[1],
                        parentState: hydroState),
                    maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
                        args[2],
                        parentState: hydroState))
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['delegateForNode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<DiagnosticsSerializationDelegate>(
            object: vmObject.delegateForNode(
                maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getSubtreeDepth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.subtreeDepth];
    });
    table['getIncludeProperties'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.includeProperties];
    });
    table['getExpandPropertyValues'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.expandPropertyValues];
    });
    table['copyWith'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<DiagnosticsSerializationDelegate>(
            object: vmObject.copyWith(
                includeProperties: args[1]['includeProperties'],
                subtreeDepth: args[1]['subtreeDepth']),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DiagnosticsSerializationDelegate vmObject;
}

void loadDiagnosticsSerializationDelegate(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<DiagnosticsSerializationDelegate>(boxer: ({
    required DiagnosticsSerializationDelegate vmObject,
    required HydroState hydroState,
    required HydroTable table,
  }) {
    return VMManagedDiagnosticsSerializationDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
