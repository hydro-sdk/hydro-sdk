import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

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
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['textDirection']
                  : null),
          actions: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['actions']
              : null,
          additionalActions: maybeUnBoxAndBuildArgument<Int32List, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['additionalActions']
                  : null,
              parentState: hydroState),
          childrenInHitTestOrder: maybeUnBoxAndBuildArgument<Int32List, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['childrenInHitTestOrder']
                  : null,
              parentState: hydroState),
          childrenInTraversalOrder: maybeUnBoxAndBuildArgument<Int32List, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['childrenInTraversalOrder'] : null,
              parentState: hydroState),
          currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentValueLength'] : null,
          decreasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decreasedValue'] : null,
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          flags: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['flags'] : null,
          hint: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hint'] : null,
          id: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['id'] : null,
          increasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['increasedValue'] : null,
          label: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null,
          maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxValueLength'] : null,
          platformViewId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platformViewId'] : null,
          rect: maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState),
          scrollChildren: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollChildren'] : null,
          scrollExtentMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMax'] : null?.toDouble(),
          scrollExtentMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMin'] : null?.toDouble(),
          scrollIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollIndex'] : null,
          scrollPosition: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPosition'] : null?.toDouble(),
          textSelectionBase: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionBase'] : null,
          textSelectionExtent: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionExtent'] : null,
          thickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Float64List, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transform'] : null, parentState: hydroState),
          value: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null);
      return [];
    });
    table['updateCustomAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.updateCustomAction(
          hint: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hint']
              : null,
          label: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['label']
              : null,
          overrideId: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['overrideId']
              : null,
          id: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['id']
              : null);
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsUpdate>(
            object: vmObject.build(),
            hydroState: hydroState,
            table: HydroTable()),
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
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['textDirection']
                  : null),
          actions: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['actions']
              : null,
          additionalActions: maybeUnBoxAndBuildArgument<Int32List, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['additionalActions'] : null,
              parentState: hydroState),
          childrenInHitTestOrder: maybeUnBoxAndBuildArgument<Int32List, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['childrenInHitTestOrder']
                  : null,
              parentState: hydroState),
          childrenInTraversalOrder: maybeUnBoxAndBuildArgument<Int32List, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['childrenInTraversalOrder']
                  : null,
              parentState: hydroState),
          currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentValueLength'] : null,
          decreasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decreasedValue'] : null,
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          flags: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['flags'] : null,
          hint: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hint'] : null,
          id: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['id'] : null,
          increasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['increasedValue'] : null,
          label: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null,
          maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxValueLength'] : null,
          platformViewId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platformViewId'] : null,
          rect: maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState),
          scrollChildren: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollChildren'] : null,
          scrollExtentMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMax'] : null?.toDouble(),
          scrollExtentMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMin'] : null?.toDouble(),
          scrollIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollIndex'] : null,
          scrollPosition: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPosition'] : null?.toDouble(),
          textSelectionBase: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionBase'] : null,
          textSelectionExtent: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionExtent'] : null,
          thickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null?.toDouble(),
          transform: maybeUnBoxAndBuildArgument<Float64List, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transform'] : null, parentState: hydroState),
          value: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null);
      return [];
    });
    table['_dart_updateCustomAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.updateCustomAction(
          hint: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hint']
              : null,
          label: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['label']
              : null,
          overrideId: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['overrideId']
              : null,
          id: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['id']
              : null);
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
    return maybeUnBoxAndBuildArgument<SemanticsUpdate, dynamic>(
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
