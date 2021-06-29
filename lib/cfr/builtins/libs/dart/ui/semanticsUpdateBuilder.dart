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
    table['updateNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.updateNode(
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: luaCallerArguments[1]['textDirection']),
          actions: luaCallerArguments[1]['actions'],
          additionalActions: maybeUnBoxAndBuildArgument<Int32List>(
              luaCallerArguments[1]['additionalActions'],
              parentState: hydroState),
          childrenInHitTestOrder: maybeUnBoxAndBuildArgument<Int32List>(
              luaCallerArguments[1]['childrenInHitTestOrder'],
              parentState: hydroState),
          childrenInTraversalOrder: maybeUnBoxAndBuildArgument<Int32List>(
              luaCallerArguments[1]['childrenInTraversalOrder'],
              parentState: hydroState),
          currentValueLength: luaCallerArguments[1]['currentValueLength'],
          decreasedValue: luaCallerArguments[1]['decreasedValue'],
          elevation: luaCallerArguments[1]['elevation']?.toDouble(),
          flags: luaCallerArguments[1]['flags'],
          hint: luaCallerArguments[1]['hint'],
          id: luaCallerArguments[1]['id'],
          increasedValue: luaCallerArguments[1]['increasedValue'],
          label: luaCallerArguments[1]['label'],
          maxValueLength: luaCallerArguments[1]['maxValueLength'],
          platformViewId: luaCallerArguments[1]['platformViewId'],
          rect: maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[1]['rect'],
              parentState: hydroState),
          scrollChildren: luaCallerArguments[1]['scrollChildren'],
          scrollExtentMax: luaCallerArguments[1]['scrollExtentMax']?.toDouble(),
          scrollExtentMin: luaCallerArguments[1]['scrollExtentMin']?.toDouble(),
          scrollIndex: luaCallerArguments[1]['scrollIndex'],
          scrollPosition: luaCallerArguments[1]['scrollPosition']?.toDouble(),
          textSelectionBase: luaCallerArguments[1]['textSelectionBase'],
          textSelectionExtent: luaCallerArguments[1]['textSelectionExtent'],
          thickness: luaCallerArguments[1]['thickness']?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Float64List>(
              luaCallerArguments[1]['transform'],
              parentState: hydroState),
          value: luaCallerArguments[1]['value']);
      return [];
    });
    table['updateCustomAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.updateCustomAction(
          hint: luaCallerArguments[1]['hint'],
          label: luaCallerArguments[1]['label'],
          overrideId: luaCallerArguments[1]['overrideId'],
          id: luaCallerArguments[1]['id']);
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_updateNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.updateNode(
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: luaCallerArguments[1]['textDirection']),
          actions: luaCallerArguments[1]['actions'],
          additionalActions: maybeUnBoxAndBuildArgument<Int32List>(
              luaCallerArguments[1]['additionalActions'],
              parentState: hydroState),
          childrenInHitTestOrder: maybeUnBoxAndBuildArgument<Int32List>(
              luaCallerArguments[1]['childrenInHitTestOrder'],
              parentState: hydroState),
          childrenInTraversalOrder: maybeUnBoxAndBuildArgument<Int32List>(
              luaCallerArguments[1]['childrenInTraversalOrder'],
              parentState: hydroState),
          currentValueLength: luaCallerArguments[1]['currentValueLength'],
          decreasedValue: luaCallerArguments[1]['decreasedValue'],
          elevation: luaCallerArguments[1]['elevation']?.toDouble(),
          flags: luaCallerArguments[1]['flags'],
          hint: luaCallerArguments[1]['hint'],
          id: luaCallerArguments[1]['id'],
          increasedValue: luaCallerArguments[1]['increasedValue'],
          label: luaCallerArguments[1]['label'],
          maxValueLength: luaCallerArguments[1]['maxValueLength'],
          platformViewId: luaCallerArguments[1]['platformViewId'],
          rect: maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[1]['rect'],
              parentState: hydroState),
          scrollChildren: luaCallerArguments[1]['scrollChildren'],
          scrollExtentMax: luaCallerArguments[1]['scrollExtentMax']?.toDouble(),
          scrollExtentMin: luaCallerArguments[1]['scrollExtentMin']?.toDouble(),
          scrollIndex: luaCallerArguments[1]['scrollIndex'],
          scrollPosition: luaCallerArguments[1]['scrollPosition']?.toDouble(),
          textSelectionBase: luaCallerArguments[1]['textSelectionBase'],
          textSelectionExtent: luaCallerArguments[1]['textSelectionExtent'],
          thickness: luaCallerArguments[1]['thickness']?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Float64List>(
              luaCallerArguments[1]['transform'],
              parentState: hydroState),
          value: luaCallerArguments[1]['value']);
      return [];
    });
    table['_dart_updateCustomAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.updateCustomAction(
          hint: luaCallerArguments[1]['hint'],
          label: luaCallerArguments[1]['label'],
          overrideId: luaCallerArguments[1]['overrideId'],
          id: luaCallerArguments[1]['id']);
      return [];
    });
    table['_dart_build'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
  table['semanticsUpdateBuilder'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsUpdateBuilder(
          table: luaCallerArguments[0], hydroState: hydroState)
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
