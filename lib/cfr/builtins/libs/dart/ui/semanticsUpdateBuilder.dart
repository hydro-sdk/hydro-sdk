import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedSemanticsUpdateBuilder
    extends VMManagedBox<SemanticsUpdateBuilder> {
  VMManagedSemanticsUpdateBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['updateNode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.updateNode(
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: args[1]['textDirection']),
          actions: args[1]['actions'],
          additionalActions: maybeUnBoxAndBuildArgument<Int32List>(
              args[1]['additionalActions'],
              parentState: hydroState),
          childrenInHitTestOrder: maybeUnBoxAndBuildArgument<Int32List>(
              args[1]['childrenInHitTestOrder'],
              parentState: hydroState),
          childrenInTraversalOrder: maybeUnBoxAndBuildArgument<Int32List>(
              args[1]['childrenInTraversalOrder'],
              parentState: hydroState),
          currentValueLength: args[1]['currentValueLength'],
          decreasedValue: args[1]['decreasedValue'],
          elevation: args[1]['elevation']?.toDouble(),
          flags: args[1]['flags'],
          hint: args[1]['hint'],
          id: args[1]['id'],
          increasedValue: args[1]['increasedValue'],
          label: args[1]['label'],
          maxValueLength: args[1]['maxValueLength'],
          platformViewId: args[1]['platformViewId'],
          rect: maybeUnBoxAndBuildArgument<Rect>(args[1]['rect'],
              parentState: hydroState),
          scrollChildren: args[1]['scrollChildren'],
          scrollExtentMax: args[1]['scrollExtentMax']?.toDouble(),
          scrollExtentMin: args[1]['scrollExtentMin']?.toDouble(),
          scrollIndex: args[1]['scrollIndex'],
          scrollPosition: args[1]['scrollPosition']?.toDouble(),
          textSelectionBase: args[1]['textSelectionBase'],
          textSelectionExtent: args[1]['textSelectionExtent'],
          thickness: args[1]['thickness']?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Float64List>(
              args[1]['transform'],
              parentState: hydroState),
          value: args[1]['value']);
      return [];
    });
    table['updateCustomAction'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.updateCustomAction(
          hint: args[1]['hint'],
          label: args[1]['label'],
          overrideId: args[1]['overrideId'],
          id: args[1]['id']);
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<SemanticsUpdate>(
            object: vmObject.build(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsUpdateBuilder vmObject;
}

class RTManagedSemanticsUpdateBuilder extends SemanticsUpdateBuilder
    implements Box<SemanticsUpdateBuilder> {
  RTManagedSemanticsUpdateBuilder(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_updateNode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.updateNode(
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: args[1]['textDirection']),
          actions: args[1]['actions'],
          additionalActions: maybeUnBoxAndBuildArgument<Int32List>(
              args[1]['additionalActions'],
              parentState: hydroState),
          childrenInHitTestOrder: maybeUnBoxAndBuildArgument<Int32List>(
              args[1]['childrenInHitTestOrder'],
              parentState: hydroState),
          childrenInTraversalOrder: maybeUnBoxAndBuildArgument<Int32List>(
              args[1]['childrenInTraversalOrder'],
              parentState: hydroState),
          currentValueLength: args[1]['currentValueLength'],
          decreasedValue: args[1]['decreasedValue'],
          elevation: args[1]['elevation']?.toDouble(),
          flags: args[1]['flags'],
          hint: args[1]['hint'],
          id: args[1]['id'],
          increasedValue: args[1]['increasedValue'],
          label: args[1]['label'],
          maxValueLength: args[1]['maxValueLength'],
          platformViewId: args[1]['platformViewId'],
          rect: maybeUnBoxAndBuildArgument<Rect>(args[1]['rect'],
              parentState: hydroState),
          scrollChildren: args[1]['scrollChildren'],
          scrollExtentMax: args[1]['scrollExtentMax']?.toDouble(),
          scrollExtentMin: args[1]['scrollExtentMin']?.toDouble(),
          scrollIndex: args[1]['scrollIndex'],
          scrollPosition: args[1]['scrollPosition']?.toDouble(),
          textSelectionBase: args[1]['textSelectionBase'],
          textSelectionExtent: args[1]['textSelectionExtent'],
          thickness: args[1]['thickness']?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Float64List>(
              args[1]['transform'],
              parentState: hydroState),
          value: args[1]['value']);
      return [];
    });
    table['_dart_updateCustomAction'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.updateCustomAction(
          hint: args[1]['hint'],
          label: args[1]['label'],
          overrideId: args[1]['overrideId'],
          id: args[1]['id']);
      return [];
    });
    table['_dart_build'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<SemanticsUpdate>(
            object: super.build(), hydroState: hydroState, table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsUpdateBuilder unwrap() => this;
  SemanticsUpdateBuilder get vmObject => this;
  @override
  void updateNode(
      {TextDirection? textDirection,
      required int actions,
      required Int32List additionalActions,
      required Int32List childrenInHitTestOrder,
      required Int32List childrenInTraversalOrder,
      required int currentValueLength,
      required String decreasedValue,
      required double elevation,
      required int flags,
      required String hint,
      required int id,
      required String increasedValue,
      required String label,
      required int maxValueLength,
      required int platformViewId,
      required Rect rect,
      required int scrollChildren,
      required double scrollExtentMax,
      required double scrollExtentMin,
      required int scrollIndex,
      required double scrollPosition,
      required int textSelectionBase,
      required int textSelectionExtent,
      required double thickness,
      required Float64List transform,
      required String value}) {
    Closure closure = table["updateNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void updateCustomAction(
      {String? hint, String? label, int overrideId = -1, required int id}) {
    Closure closure = table["updateCustomAction"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsUpdate build() {
    Closure closure = table["build"];
    return maybeUnBoxAndBuildArgument<SemanticsUpdate>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSemanticsUpdateBuilder(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsUpdateBuilder'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedSemanticsUpdateBuilder(table: args[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SemanticsUpdateBuilder>(boxer: (
      {required SemanticsUpdateBuilder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsUpdateBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
