import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/services/text_editing.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsData extends VMManagedBox<SemanticsData> {
  VMManagedSemanticsData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['flags'] = vmObject.flags;
    table['actions'] = vmObject.actions;
    table['label'] = vmObject.label;
    table['value'] = vmObject.value;
    table['increasedValue'] = vmObject.increasedValue;
    table['decreasedValue'] = vmObject.decreasedValue;
    table['hint'] = vmObject.hint;
    table['textDirection'] = TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['textSelection'] = maybeBoxObject<TextSelection?>(
        object: vmObject.textSelection,
        hydroState: hydroState,
        table: HydroTable());
    table['scrollChildCount'] = vmObject.scrollChildCount;
    table['scrollIndex'] = vmObject.scrollIndex;
    table['scrollPosition'] = vmObject.scrollPosition;
    table['scrollExtentMax'] = vmObject.scrollExtentMax;
    table['scrollExtentMin'] = vmObject.scrollExtentMin;
    table['platformViewId'] = vmObject.platformViewId;
    table['maxValueLength'] = vmObject.maxValueLength;
    table['currentValueLength'] = vmObject.currentValueLength;
    table['rect'] = maybeBoxObject<Rect>(
        object: vmObject.rect, hydroState: hydroState, table: HydroTable());
    table['tags'] = maybeBoxObject<Set?>(
        object: vmObject.tags, hydroState: hydroState, table: HydroTable());
    table['transform'] = maybeBoxObject<Matrix4?>(
        object: vmObject.transform,
        hydroState: hydroState,
        table: HydroTable());
    table['elevation'] = vmObject.elevation;
    table['thickness'] = vmObject.thickness;
    table['customSemanticsActionIds'] = maybeBoxObject<List<dynamic>>(
        object: vmObject.customSemanticsActionIds,
        hydroState: hydroState,
        table: HydroTable());
    table['hasFlag'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasFlag(maybeUnBoxAndBuildArgument<SemanticsFlag, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['hasAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasAction(maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsData vmObject;
}

class RTManagedSemanticsData extends SemanticsData
    implements Box<SemanticsData> {
  RTManagedSemanticsData(
      {List<int>? customSemanticsActionIds,
      Set<SemanticsTag>? tags,
      Matrix4? transform,
      required int actions,
      int? currentValueLength,
      required String decreasedValue,
      required double elevation,
      required int flags,
      required String hint,
      required String increasedValue,
      required String label,
      int? maxValueLength,
      int? platformViewId,
      required Rect rect,
      int? scrollChildCount,
      double? scrollExtentMax,
      double? scrollExtentMin,
      int? scrollIndex,
      double? scrollPosition,
      TextDirection? textDirection,
      TextSelection? textSelection,
      required double thickness,
      required String value,
      required this.table,
      required this.hydroState})
      : super(
            customSemanticsActionIds: customSemanticsActionIds,
            tags: tags,
            transform: transform,
            actions: actions,
            currentValueLength: currentValueLength,
            decreasedValue: decreasedValue,
            elevation: elevation,
            flags: flags,
            hint: hint,
            increasedValue: increasedValue,
            label: label,
            maxValueLength: maxValueLength,
            platformViewId: platformViewId,
            rect: rect,
            scrollChildCount: scrollChildCount,
            scrollExtentMax: scrollExtentMax,
            scrollExtentMin: scrollExtentMin,
            scrollIndex: scrollIndex,
            scrollPosition: scrollPosition,
            textDirection: textDirection,
            textSelection: textSelection,
            thickness: thickness,
            value: value) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['flags'] = this.flags;
    table['actions'] = this.actions;
    table['label'] = this.label;
    table['value'] = this.value;
    table['increasedValue'] = this.increasedValue;
    table['decreasedValue'] = this.decreasedValue;
    table['hint'] = this.hint;
    table['textDirection'] = TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['textSelection'] = maybeBoxObject<TextSelection?>(
        object: this.textSelection,
        hydroState: hydroState,
        table: HydroTable());
    table['scrollChildCount'] = this.scrollChildCount;
    table['scrollIndex'] = this.scrollIndex;
    table['scrollPosition'] = this.scrollPosition;
    table['scrollExtentMax'] = this.scrollExtentMax;
    table['scrollExtentMin'] = this.scrollExtentMin;
    table['platformViewId'] = this.platformViewId;
    table['maxValueLength'] = this.maxValueLength;
    table['currentValueLength'] = this.currentValueLength;
    table['rect'] = maybeBoxObject<Rect>(
        object: this.rect, hydroState: hydroState, table: HydroTable());
    table['tags'] = maybeBoxObject<Set?>(
        object: this.tags, hydroState: hydroState, table: HydroTable());
    table['transform'] = maybeBoxObject<Matrix4?>(
        object: this.transform, hydroState: hydroState, table: HydroTable());
    table['elevation'] = this.elevation;
    table['thickness'] = this.thickness;
    table['customSemanticsActionIds'] = maybeBoxObject<List<dynamic>>(
        object: this.customSemanticsActionIds,
        hydroState: hydroState,
        table: HydroTable());
    table['_dart_hasFlag'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hasFlag(maybeUnBoxAndBuildArgument<SemanticsFlag, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_hasAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hasAction(maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsData unwrap() => this;
  SemanticsData get vmObject => this;
  @override
  bool hasFlag(SemanticsFlag flag) {
    Closure closure = table["hasFlag"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hasAction(SemanticsAction action) {
    Closure closure = table["hasAction"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
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

void loadSemanticsData(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsData'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          customSemanticsActionIds: maybeUnBoxAndBuildArgument<List<int>?, int>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['customSemanticsActionIds']
                  : null,
              parentState: hydroState),
          tags: maybeUnBoxAndBuildArgument<Set<SemanticsTag>?, SemanticsTag>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['tags']
                  : null,
              parentState: hydroState),
          transform: maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['transform']
                  : null,
              parentState: hydroState),
          actions: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['actions']
              : null,
          currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentValueLength'] : null,
          decreasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decreasedValue'] : null,
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          flags: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['flags'] : null,
          hint: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hint'] : null,
          increasedValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['increasedValue'] : null,
          label: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null,
          maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxValueLength'] : null,
          platformViewId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platformViewId'] : null,
          rect: maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState),
          scrollChildCount: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollChildCount'] : null,
          scrollExtentMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMax'] : null?.toDouble(),
          scrollExtentMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMin'] : null?.toDouble(),
          scrollIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollIndex'] : null,
          scrollPosition: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPosition'] : null?.toDouble(),
          textDirection: maybeUnBoxEnum(values: TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          textSelection: maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelection'] : null, parentState: hydroState),
          thickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null?.toDouble(),
          value: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null)
    ];
  });
  registerBoxer<SemanticsData>(boxer: (
      {required SemanticsData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
