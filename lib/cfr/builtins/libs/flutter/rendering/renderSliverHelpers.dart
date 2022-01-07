import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderSliverHelpers extends VMManagedBox<RenderSliverHelpers> {
  VMManagedRenderSliverHelpers(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['debugResetSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugResetSize();
      return [];
    });
    table['debugAssertDoesMeetConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugAssertDoesMeetConstraints();
      return [];
    });
    table['performResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performResize();
      return [];
    });
    table['hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hitTest(
            maybeUnBoxAndBuildArgument<SliverHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            crossAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['mainAxisPosition']
                : null?.toDouble()),
      ];
    });
    table['calculatePaintOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.calculatePaintOffset(
            maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            from: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['from']
                : null?.toDouble(),
            to: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['to']
                : null?.toDouble()),
      ];
    });
    table['calculateCacheOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.calculateCacheOffset(
            maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            from: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['from']
                : null?.toDouble(),
            to: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['to']
                : null?.toDouble()),
      ];
    });
    table['childScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.childScrollOffset(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.applyPaintTransform(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugPaint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SliverHitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SliverConstraints>(
            object: vmObject.constraints,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getGeometry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.geometry;
      if (returnValue != null) {
        return [
          maybeBoxObject<SliverGeometry?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setGeometry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.geometry = (maybeUnBoxAndBuildArgument<SliverGeometry?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getSemanticBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.semanticBounds,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPaintBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.paintBounds,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getCenterOffsetAdjustment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.centerOffsetAdjustment,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RenderSliverHelpers vmObject;
}

class RTManagedRenderSliverHelpers extends RenderSliverHelpers
    implements Box<RenderSliverHelpers> {
  RTManagedRenderSliverHelpers({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_hitTestBoxChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestBoxChild(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            crossAxisPosition: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['mainAxisPosition']
                : null?.toDouble())
      ];
    });
    table['_dart_applyPaintTransformForBoxChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.applyPaintTransformForBoxChild(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugResetSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugResetSize();
      return [];
    });
    table['_dart_debugAssertDoesMeetConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugAssertDoesMeetConstraints();
      return [];
    });
    table['_dart_performResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performResize();
      return [];
    });
    table['_dart_hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTest(
            maybeUnBoxAndBuildArgument<SliverHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            crossAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['mainAxisPosition']
                : null?.toDouble())
      ];
    });
    table['_dart_hitTestSelf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestSelf(
            crossAxisPosition: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['mainAxisPosition']
                : null?.toDouble())
      ];
    });
    table['_dart_hitTestChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestChildren(
            maybeUnBoxAndBuildArgument<SliverHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            crossAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['mainAxisPosition']
                : null?.toDouble())
      ];
    });
    table['_dart_calculatePaintOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.calculatePaintOffset(
            maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            from: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['from']
                : null?.toDouble(),
            to: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['to']
                : null?.toDouble())
      ];
    });
    table['_dart_calculateCacheOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.calculateCacheOffset(
            maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            from: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['from']
                : null?.toDouble(),
            to: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['to']
                : null?.toDouble())
      ];
    });
    table['_dart_childMainAxisPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.childMainAxisPosition(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_childCrossAxisPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.childCrossAxisPosition(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_childScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.childScrollOffset(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.applyPaintTransform(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getAbsoluteSizeRelativeToOrigin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.getAbsoluteSizeRelativeToOrigin(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getAbsoluteSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.getAbsoluteSize(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SliverHitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.constraints];
    });
    table['_dart_getGeometry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.geometry];
    });
    table['_dart_setGeometry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.geometry = (maybeUnBoxAndBuildArgument<SliverGeometry?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getSemanticBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.semanticBounds];
    });
    table['_dart_getPaintBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.paintBounds];
    });
    table['_dart_getCenterOffsetAdjustment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.centerOffsetAdjustment];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RenderSliverHelpers unwrap() => this;
  RenderSliverHelpers get vmObject => this;
  @override
  bool hitTestBoxChild(BoxHitTestResult result, RenderBox child,
      {required double crossAxisPosition, required double mainAxisPosition}) {
    Closure closure = table["hitTestBoxChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void applyPaintTransformForBoxChild(RenderBox child, Matrix4 transform) {
    Closure closure = table["applyPaintTransformForBoxChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugResetSize() {
    Closure closure = table["debugResetSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugAssertDoesMeetConstraints() {
    Closure closure = table["debugAssertDoesMeetConstraints"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void performResize() {
    Closure closure = table["performResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTest(SliverHitTestResult result,
      {required double crossAxisPosition, required double mainAxisPosition}) {
    Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTestSelf(
      {required double crossAxisPosition, required double mainAxisPosition}) {
    Closure closure = table["hitTestSelf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTestChildren(SliverHitTestResult result,
      {required double crossAxisPosition, required double mainAxisPosition}) {
    Closure closure = table["hitTestChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double calculatePaintOffset(SliverConstraints constraints,
      {required double from, required double to}) {
    Closure closure = table["calculatePaintOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double calculateCacheOffset(SliverConstraints constraints,
      {required double from, required double to}) {
    Closure closure = table["calculateCacheOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double childMainAxisPosition(RenderObject child) {
    Closure closure = table["childMainAxisPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double childCrossAxisPosition(RenderObject child) {
    Closure closure = table["childCrossAxisPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? childScrollOffset(RenderObject child) {
    Closure closure = table["childScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void applyPaintTransform(RenderObject child, Matrix4 transform) {
    Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size getAbsoluteSizeRelativeToOrigin() {
    Closure closure = table["getAbsoluteSizeRelativeToOrigin"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Size getAbsoluteSize() {
    Closure closure = table["getAbsoluteSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void debugPaint(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleEvent(PointerEvent event, SliverHitTestEntry entry) {
    Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SliverConstraints get constraints {
    Closure closure = table["getConstraints"];
    return maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  SliverGeometry? get geometry {
    Closure closure = table["getGeometry"];
    return maybeUnBoxAndBuildArgument<SliverGeometry?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set geometry(SliverGeometry? value) {
    Closure closure = table["setGeometry"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect get semanticBounds {
    Closure closure = table["getSemanticBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect get paintBounds {
    Closure closure = table["getPaintBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double get centerOffsetAdjustment {
    Closure closure = table["getCenterOffsetAdjustment"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }
}

void loadRenderSliverHelpers(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderSliverHelpers'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRenderSliverHelpers(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<RenderSliverHelpers>(boxer: (
      {required RenderSliverHelpers vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderSliverHelpers(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
