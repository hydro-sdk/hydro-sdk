import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_list.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/semantics/semantics_event.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderSliverList extends VMManagedBox<RenderSliverList> {
  VMManagedRenderSliverList(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: vmObject.parentData,
        hydroState: hydroState,
        table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: vmObject.debugCreator,
        hydroState: hydroState,
        table: HydroTable());
    table['performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performLayout();
      return [];
    });
    table['setupParentData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setupParentData(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.adoptChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['insert'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.insert(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['move'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.move(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.remove(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['removeAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.removeAll();
      return [];
    });
    table['attach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attach(maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['visitChildrenForSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['indexOf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.indexOf(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['hitTestChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestChildren(
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
    table['childMainAxisPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.childMainAxisPosition(
            maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
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
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
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
    table['debugAssertChildListIsNonEmptyAndContiguous'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertChildListIsNonEmptyAndContiguous(),
      ];
    });
    table['debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDebugChildIntegrityEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugChildIntegrityEnabled,
      ];
    });
    table['setDebugChildIntegrityEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugChildIntegrityEnabled = (luaCallerArguments[1]);
      return [];
    });
    table['debugValidateChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugValidateChild(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addAll'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addAll(maybeUnBoxAndBuildArgument<List<RenderBox>?, RenderBox>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['childBefore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.childBefore(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<RenderBox?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['childAfter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.childAfter(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<RenderBox?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['getFirstChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.firstChild;
      if (returnValue != null) {
        return [
          maybeBoxObject<RenderBox?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getLastChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastChild;
      if (returnValue != null) {
        return [
          maybeBoxObject<RenderBox?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
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
    table['reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.reassemble();
      return [];
    });
    table['dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dropChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['markNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsLayout();
      return [];
    });
    table['markNeedsLayoutForSizedByParentChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['scheduleInitialLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialLayout();
      return [];
    });
    table['layout'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.layout(
          maybeUnBoxAndBuildArgument<Constraints, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['rotate'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['time']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['debugRegisterRepaintBoundaryPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['markNeedsCompositingBitsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['markNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsPaint();
      return [];
    });
    table['scheduleInitialPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialPaint(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['replaceRootLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.replaceRootLayer(
          maybeUnBoxAndBuildArgument<OffsetLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTransformTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Matrix4>(
            object: vmObject.getTransformTo(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['describeApproximatePaintClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeApproximatePaintClip(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['describeSemanticsClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeSemanticsClip(
          maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['scheduleInitialSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialSemantics();
      return [];
    });
    table['sendSemanticsEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sendSemanticsEvent(
          maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['clearSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clearSemantics();
      return [];
    });
    table['markNeedsSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsSemanticsUpdate();
      return [];
    });
    table['assembleSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.assembleSemanticsNode(
          maybeUnBoxAndBuildArgument<SemanticsNode, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Iterable<SemanticsNode>, SemanticsNode>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
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
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['showOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.showOnScreen(
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['curve'] : null,
              parentState: hydroState),
          descendant: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null,
              parentState: hydroState));
      return [];
    });
    table['describeForError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeForError(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDebugDoingThisResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisResize,
      ];
    });
    table['getDebugDoingThisLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayout,
      ];
    });
    table['getDebugCanParentUseSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugCanParentUseSize,
      ];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<PipelineOwner?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getDebugNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsLayout,
      ];
    });
    table['getDebugDoingThisLayoutWithCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayoutWithCallback,
      ];
    });
    table['getDebugDoingThisPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisPaint,
      ];
    });
    table['getIsRepaintBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isRepaintBoundary,
      ];
    });
    table['getDebugLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugLayer;
      if (returnValue != null) {
        return [
          maybeBoxObject<ContainerLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.needsCompositing,
      ];
    });
    table['getDebugNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsPaint,
      ];
    });
    table['getDebugSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugSemantics;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
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
    table['getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<AbstractNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RenderSliverList vmObject;
}

class RTManagedRenderSliverList extends RenderSliverList
    implements Box<RenderSliverList> {
  RTManagedRenderSliverList(
      {required RenderSliverBoxChildManager childManager,
      required this.table,
      required this.hydroState})
      : super(childManager: childManager) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: parentData, hydroState: hydroState, table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: debugCreator, hydroState: hydroState, table: HydroTable());
    table['_dart_performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performLayout();
      return [];
    });
    table['_dart_setupParentData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setupParentData(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.adoptChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_insert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.insert(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_move'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.move(
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_remove'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.remove(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_removeAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.removeAll();
      return [];
    });
    table['_dart_attach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attach(maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_visitChildrenForSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_addInitialChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.addInitialChild(
            index: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['index']
                : null,
            layoutOffset: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['layoutOffset']
                : null?.toDouble())
      ];
    });
    table['_dart_insertAndLayoutLeadingChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderBox?>(
            object: super.insertAndLayoutLeadingChild(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                parentUsesSize: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['parentUsesSize']
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_insertAndLayoutChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderBox?>(
            object: super.insertAndLayoutChild(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                parentUsesSize: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['parentUsesSize']
                    : null,
                after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['after']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_collectGarbage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.collectGarbage(luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['_dart_indexOf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.indexOf(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_paintExtentOf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.paintExtentOf(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
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
    table['_dart_childMainAxisPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.childMainAxisPosition(
            maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
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
          maybeUnBoxAndBuildArgument<RenderBox, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_paint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.paint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
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
    table['_dart_debugAssertChildListIsNonEmptyAndContiguous'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugAssertChildListIsNonEmptyAndContiguous()];
    });
    table['_dart_debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getChildManager'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.childManager];
    });
    table['_dart_getDebugChildIntegrityEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugChildIntegrityEnabled];
    });
    table['_dart_setDebugChildIntegrityEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugChildIntegrityEnabled = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_debugValidateChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.debugValidateChild(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_add'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.add(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addAll(maybeUnBoxAndBuildArgument<List<RenderBox>?, RenderBox>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_childBefore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderBox?>(
            object: super.childBefore(
                maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_childAfter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderBox?>(
            object: super.childAfter(
                maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.childCount];
    });
    table['_dart_getFirstChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.firstChild];
    });
    table['_dart_getLastChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.lastChild];
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
    table['_dart_childCrossAxisPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.childCrossAxisPosition(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
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
    table['_dart_reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dropChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_markNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsLayout();
      return [];
    });
    table['_dart_markParentNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markParentNeedsLayout();
      return [];
    });
    table['_dart_markNeedsLayoutForSizedByParentChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['_dart_scheduleInitialLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialLayout();
      return [];
    });
    table['_dart_layout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layout(
          maybeUnBoxAndBuildArgument<Constraints, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['_dart_invokeLayoutCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.invokeLayoutCallback((constraints) => unpackedcallback.dispatch(
            [luaCallerArguments[0], constraints],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_rotate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['time']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_debugRegisterRepaintBoundaryPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['_dart_markNeedsCompositingBitsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['_dart_markNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsPaint();
      return [];
    });
    table['_dart_scheduleInitialPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialPaint(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_replaceRootLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.replaceRootLayer(maybeUnBoxAndBuildArgument<OffsetLayer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getTransformTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Matrix4>(
            object: super.getTransformTo(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeApproximatePaintClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.describeApproximatePaintClip(
                maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeSemanticsClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.describeSemanticsClip(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_scheduleInitialSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialSemantics();
      return [];
    });
    table['_dart_describeSemanticsConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.describeSemanticsConfiguration(
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_sendSemanticsEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sendSemanticsEvent(
          maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_clearSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clearSemantics();
      return [];
    });
    table['_dart_markNeedsSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsSemanticsUpdate();
      return [];
    });
    table['_dart_assembleSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.assembleSemanticsNode(
          maybeUnBoxAndBuildArgument<SemanticsNode, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Iterable<SemanticsNode>, SemanticsNode>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
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
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null)
      ];
    });
    table['_dart_toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_showOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.showOnScreen(
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['curve'] : null,
              parentState: hydroState),
          descendant: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_describeForError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.describeForError(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getDebugDoingThisResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisResize];
    });
    table['_dart_getDebugDoingThisLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayout];
    });
    table['_dart_getDebugCanParentUseSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugCanParentUseSize];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getDebugNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugNeedsLayout];
    });
    table['_dart_getDebugDoingThisLayoutWithCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayoutWithCallback];
    });
    table['_dart_getSizedByParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.sizedByParent];
    });
    table['_dart_getDebugDoingThisPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisPaint];
    });
    table['_dart_getIsRepaintBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isRepaintBoundary];
    });
    table['_dart_getAlwaysNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alwaysNeedsCompositing];
    });
    table['_dart_getLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.layer];
    });
    table['_dart_setLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layer = (maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDebugLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugLayer];
    });
    table['_dart_getNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.needsCompositing];
    });
    table['_dart_getDebugNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugNeedsPaint];
    });
    table['_dart_getDebugSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugSemantics];
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
    table['_dart_redepthChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RenderSliverList unwrap() => this;
  RenderSliverList get vmObject => this;
  @override
  void performLayout() {
    Closure closure = table["performLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setupParentData(RenderObject child) {
    Closure closure = table["setupParentData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void adoptChild(RenderObject child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void insert(RenderBox child, {RenderBox? after}) {
    Closure closure = table["insert"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void move(RenderBox child, {RenderBox? after}) {
    Closure closure = table["move"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void remove(RenderBox child) {
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeAll() {
    Closure closure = table["removeAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void redepthChildren() {
    Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildren(visitor) {
    Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildrenForSemantics(visitor) {
    Closure closure = table["visitChildrenForSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool addInitialChild({int index = 0, double layoutOffset = 0.0}) {
    Closure closure = table["addInitialChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  RenderBox? insertAndLayoutLeadingChild(BoxConstraints childConstraints,
      {bool parentUsesSize = false}) {
    Closure closure = table["insertAndLayoutLeadingChild"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RenderBox? insertAndLayoutChild(BoxConstraints childConstraints,
      {bool parentUsesSize = false, RenderBox? after}) {
    Closure closure = table["insertAndLayoutChild"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void collectGarbage(int leadingGarbage, int trailingGarbage) {
    Closure closure = table["collectGarbage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int indexOf(RenderBox child) {
    Closure closure = table["indexOf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double paintExtentOf(RenderBox child) {
    Closure closure = table["paintExtentOf"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  bool hitTestChildren(SliverHitTestResult result,
      {required double crossAxisPosition, required double mainAxisPosition}) {
    Closure closure = table["hitTestChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double childMainAxisPosition(RenderBox child) {
    Closure closure = table["childMainAxisPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? childScrollOffset(RenderObject child) {
    Closure closure = table["childScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void applyPaintTransform(RenderBox child, Matrix4 transform) {
    Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugAssertChildListIsNonEmptyAndContiguous() {
    Closure closure = table["debugAssertChildListIsNonEmptyAndContiguous"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RenderSliverBoxChildManager get childManager {
    Closure closure = table["getChildManager"];
    return maybeUnBoxAndBuildArgument<RenderSliverBoxChildManager, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get debugChildIntegrityEnabled {
    Closure closure = table["getDebugChildIntegrityEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set debugChildIntegrityEnabled(bool enabled) {
    Closure closure = table["setDebugChildIntegrityEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugValidateChild(RenderObject child) {
    Closure closure = table["debugValidateChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void add(RenderBox child) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addAll(List? children) {
    Closure closure = table["addAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  RenderBox? childBefore(RenderBox child) {
    Closure closure = table["childBefore"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RenderBox? childAfter(RenderBox child) {
    Closure closure = table["childAfter"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get childCount {
    Closure closure = table["getChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  RenderBox? get firstChild {
    Closure closure = table["getFirstChild"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RenderBox? get lastChild {
    Closure closure = table["getLastChild"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

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
  double childCrossAxisPosition(RenderObject child) {
    Closure closure = table["childCrossAxisPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
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

  @override
  void reassemble() {
    Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(RenderObject child) {
    super.dropChild(child);
    Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsLayout() {
    Closure closure = table["markNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markParentNeedsLayout() {
    Closure closure = table["markParentNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsLayoutForSizedByParentChange() {
    Closure closure = table["markNeedsLayoutForSizedByParentChange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleInitialLayout() {
    Closure closure = table["scheduleInitialLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void layout(Constraints constraints, {bool parentUsesSize = false}) {
    Closure closure = table["layout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void invokeLayoutCallback<T extends Constraints>(callback) {
    Closure closure = table["invokeLayoutCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rotate({int? newAngle, int? oldAngle, Duration? time}) {
    Closure closure = table["rotate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugRegisterRepaintBoundaryPaint(
      {bool includedChild = false, bool includedParent = true}) {
    Closure closure = table["debugRegisterRepaintBoundaryPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsCompositingBitsUpdate() {
    Closure closure = table["markNeedsCompositingBitsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsPaint() {
    Closure closure = table["markNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleInitialPaint(ContainerLayer rootLayer) {
    Closure closure = table["scheduleInitialPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void replaceRootLayer(OffsetLayer rootLayer) {
    Closure closure = table["replaceRootLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Matrix4 getTransformTo(RenderObject? ancestor) {
    Closure closure = table["getTransformTo"];
    return maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeApproximatePaintClip(RenderObject child) {
    Closure closure = table["describeApproximatePaintClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeSemanticsClip(RenderObject? child) {
    Closure closure = table["describeSemanticsClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void scheduleInitialSemantics() {
    Closure closure = table["scheduleInitialSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void describeSemanticsConfiguration(SemanticsConfiguration config) {
    Closure closure = table["describeSemanticsConfiguration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sendSemanticsEvent(SemanticsEvent semanticsEvent) {
    Closure closure = table["sendSemanticsEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clearSemantics() {
    super.clearSemantics();
    Closure closure = table["clearSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsSemanticsUpdate() {
    Closure closure = table["markNeedsSemanticsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void assembleSemanticsNode(
      SemanticsNode node, SemanticsConfiguration config, Iterable children) {
    Closure closure = table["assembleSemanticsNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines = ''}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void showOnScreen(
      {Curve curve = Curves.ease,
      RenderObject? descendant,
      Duration duration = Duration.zero,
      Rect? rect}) {
    Closure closure = table["showOnScreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode describeForError(String name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.shallow}) {
    Closure closure = table["describeForError"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get debugDoingThisResize {
    Closure closure = table["getDebugDoingThisResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisLayout {
    Closure closure = table["getDebugDoingThisLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugCanParentUseSize {
    Closure closure = table["getDebugCanParentUseSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  PipelineOwner? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<PipelineOwner?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get debugNeedsLayout {
    Closure closure = table["getDebugNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisLayoutWithCallback {
    Closure closure = table["getDebugDoingThisLayoutWithCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get sizedByParent {
    Closure closure = table["getSizedByParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisPaint {
    Closure closure = table["getDebugDoingThisPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isRepaintBoundary {
    Closure closure = table["getIsRepaintBoundary"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get alwaysNeedsCompositing {
    Closure closure = table["getAlwaysNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get layer {
    Closure closure = table["getLayer"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set layer(ContainerLayer? newLayer) {
    Closure closure = table["setLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get debugLayer {
    Closure closure = table["getDebugLayer"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get needsCompositing {
    Closure closure = table["getNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugNeedsPaint {
    Closure closure = table["getDebugNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsNode? get debugSemantics {
    Closure closure = table["getDebugSemantics"];
    return maybeUnBoxAndBuildArgument<SemanticsNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void redepthChild(AbstractNode child) {
    Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get depth {
    Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get attached {
    Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AbstractNode? get parent {
    Closure closure = table["getParent"];
    return maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderSliverList(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderSliverList'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRenderSliverList(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          childManager:
              maybeUnBoxAndBuildArgument<RenderSliverBoxChildManager, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['childManager']
                      : null,
                  parentState: hydroState))
    ];
  });
  registerBoxer<RenderSliverList>(boxer: (
      {required RenderSliverList vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderSliverList(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
