import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_persistent_header.dart' as _2805;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderSliverPinnedPersistentHeader
    extends _36c2.VMManagedBox<_2805.RenderSliverPinnedPersistentHeader> {
  VMManagedRenderSliverPinnedPersistentHeader(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['showOnScreenConfiguration'] =
        _36c2.maybeBoxObject<_2805.PersistentHeaderShowOnScreenConfiguration?>(
            object: vmObject.showOnScreenConfiguration,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['stretchConfiguration'] =
        _36c2.maybeBoxObject<_2805.OverScrollHeaderStretchConfiguration?>(
            object: vmObject.stretchConfiguration,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['parentData'] = _36c2.maybeBoxObject<_9742.ParentData?>(
        object: vmObject.parentData,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugCreator'] = _36c2.maybeBoxObject<_fac9.Object?>(
        object: vmObject.debugCreator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['performLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performLayout();
      return [];
    });
    table['childMainAxisPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childMainAxisPosition(
            _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['showOnScreen'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showOnScreen(
          curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['curve']
                  : null,
              parentState: hydroState),
          descendant: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['duration'] : null,
              parentState: hydroState),
          rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState));
      return [];
    });
    table['markNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsLayout();
      return [];
    });
    table['hitTestChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestChildren(
            _36c2.maybeUnBoxAndBuildArgument<_021d.SliverHitTestResult,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            crossAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['mainAxisPosition']
                : null?.toDouble()),
      ];
    });
    table['applyPaintTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.applyPaintTransform(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['describeSemanticsConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<
          _4c98.SemanticsConfiguration,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getMaxExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maxExtent,
      ];
    });
    table['getMinExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minExtent,
      ];
    });
    table['debugValidateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugValidateChild(
            _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attach(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.child;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_be2e.RenderBox?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.child =
          (_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['debugResetSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugResetSize();
      return [];
    });
    table['debugAssertDoesMeetConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugAssertDoesMeetConstraints();
      return [];
    });
    table['performResize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performResize();
      return [];
    });
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hitTest(
            _36c2.maybeUnBoxAndBuildArgument<_021d.SliverHitTestResult,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            crossAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['crossAxisPosition']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['mainAxisPosition']
                : null?.toDouble()),
      ];
    });
    table['calculatePaintOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.calculatePaintOffset(
            _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            from: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['from']
                : null?.toDouble(),
            to: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['to']
                : null?.toDouble()),
      ];
    });
    table['calculateCacheOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.calculateCacheOffset(
            _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            from: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['from']
                : null?.toDouble(),
            to: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['to']
                : null?.toDouble()),
      ];
    });
    table['childScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.childScrollOffset(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['debugPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugPaint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_021d.SliverHitTestEntry,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['getConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_021d.SliverConstraints>(
            object: vmObject.constraints,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getGeometry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.geometry;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_021d.SliverGeometry?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setGeometry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.geometry = (_36c2.maybeUnBoxAndBuildArgument<
          _021d.SliverGeometry?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getSemanticBounds'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Rect>(
            object: vmObject.semanticBounds,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPaintBounds'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Rect>(
            object: vmObject.paintBounds,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getCenterOffsetAdjustment'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.centerOffsetAdjustment,
      ];
    });
    table['reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reassemble();
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['setupParentData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setupParentData(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['adoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.adoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['dropChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dropChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['markNeedsLayoutForSizedByParentChange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['scheduleInitialLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleInitialLayout();
      return [];
    });
    table['layout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.layout(
          _36c2.maybeUnBoxAndBuildArgument<_9742.Constraints, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['rotate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['time']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['debugRegisterRepaintBoundaryPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['markNeedsCompositingBitsUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['markNeedsPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsPaint();
      return [];
    });
    table['scheduleInitialPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleInitialPaint(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['replaceRootLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.replaceRootLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.OffsetLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTransformTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_db98.Matrix4>(
            object: vmObject.getTransformTo(_36c2.maybeUnBoxAndBuildArgument<
                _9742.RenderObject?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['describeApproximatePaintClip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeApproximatePaintClip(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Rect?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['describeSemanticsClip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeSemanticsClip(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Rect?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['scheduleInitialSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleInitialSemantics();
      return [];
    });
    table['sendSemanticsEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.sendSemanticsEvent(
          _36c2.maybeUnBoxAndBuildArgument<_7afa.SemanticsEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['clearSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.clearSemantics();
      return [];
    });
    table['markNeedsSemanticsUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsSemanticsUpdate();
      return [];
    });
    table['visitChildrenForSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['assembleSemanticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.assembleSemanticsNode(
          _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_4c98.SemanticsNode>,
                  _4c98.SemanticsNode>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
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
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['describeForError'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.describeForError(luaCallerArguments[1],
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDebugDisposed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugDisposed;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getDebugDoingThisResize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisResize,
      ];
    });
    table['getDebugDoingThisLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayout,
      ];
    });
    table['getDebugCanParentUseSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugCanParentUseSize,
      ];
    });
    table['getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_9742.PipelineOwner?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getDebugNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsLayout,
      ];
    });
    table['getDebugDoingThisLayoutWithCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayoutWithCallback,
      ];
    });
    table['getDebugDoingThisPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisPaint,
      ];
    });
    table['getIsRepaintBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isRepaintBoundary,
      ];
    });
    table['getDebugLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugLayer;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7d70.ContainerLayer?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getNeedsCompositing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.needsCompositing,
      ];
    });
    table['getDebugNeedsPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsPaint,
      ];
    });
    table['getDebugSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugSemantics;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_4c98.SemanticsNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
    });
    table['getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b05e.AbstractNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2805.RenderSliverPinnedPersistentHeader vmObject;
}

class RTManagedRenderSliverPinnedPersistentHeader
    extends _2805.RenderSliverPinnedPersistentHeader
    implements _36c2.Box<_2805.RenderSliverPinnedPersistentHeader> {
  RTManagedRenderSliverPinnedPersistentHeader(
      {_be2e.RenderBox? child,
      _2805.PersistentHeaderShowOnScreenConfiguration?
          showOnScreenConfiguration,
      _2805.OverScrollHeaderStretchConfiguration? stretchConfiguration,
      required this.table,
      required this.hydroState})
      : super(
            child: child,
            showOnScreenConfiguration: showOnScreenConfiguration,
            stretchConfiguration: stretchConfiguration) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['showOnScreenConfiguration'] = _36c2.maybeBoxObject(
        object: this.showOnScreenConfiguration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stretchConfiguration'] = _36c2.maybeBoxObject(
        object: this.stretchConfiguration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['parentData'] = _36c2.maybeBoxObject(
        object: parentData, hydroState: hydroState, table: _36c2.HydroTable());
    table['debugCreator'] = _36c2.maybeBoxObject(
        object: debugCreator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_performLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.performLayout();
      return [];
    });
    table['_dart_childMainAxisPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.childMainAxisPosition(_36c2
                .maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_showOnScreen'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showOnScreen(
          curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['curve']
                  : null,
              parentState: hydroState),
          descendant: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['duration'] : null,
              parentState: hydroState),
          rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState));
      return [];
    });
    table['_dart_updateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateChild(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_markNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsLayout();
      return [];
    });
    table['_dart_layoutChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.layoutChild(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          overlapsContent:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                  luaCallerArguments.length >= 4
                      ? luaCallerArguments[3]['overlapsContent']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_hitTestChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTestChildren(
                _36c2.maybeUnBoxAndBuildArgument<_021d.SliverHitTestResult, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                crossAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['crossAxisPosition']
                        : null,
                    parentState: hydroState),
                mainAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['mainAxisPosition'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyPaintTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.applyPaintTransform(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_describeSemanticsConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<
          _4c98.SemanticsConfiguration,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getMaxExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [maxExtent];
    });
    table['_dart_getMinExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [minExtent];
    });
    table['_dart_getChildExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.childExtent];
    });
    table['_dart_debugValidateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugValidateChild(_36c2.maybeUnBoxAndBuildArgument<
                _9742.RenderObject,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.attach(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.child];
    });
    table['_dart_setChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.child =
          (_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_hitTestBoxChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTestBoxChild(
                _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                crossAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['crossAxisPosition'] : null,
                    parentState: hydroState),
                mainAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 4 ? luaCallerArguments[3]['mainAxisPosition'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyPaintTransformForBoxChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.applyPaintTransformForBoxChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugResetSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugResetSize();
      return [];
    });
    table['_dart_debugAssertDoesMeetConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugAssertDoesMeetConstraints();
      return [];
    });
    table['_dart_performResize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.performResize();
      return [];
    });
    table['_dart_hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTest(
                _36c2.maybeUnBoxAndBuildArgument<_021d.SliverHitTestResult, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                crossAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['crossAxisPosition']
                        : null,
                    parentState: hydroState),
                mainAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['mainAxisPosition'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hitTestSelf'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTestSelf(
                crossAxisPosition: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['crossAxisPosition']
                            : null,
                        parentState: hydroState),
                mainAxisPosition: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['mainAxisPosition']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_calculatePaintOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.calculatePaintOffset(
                _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                from: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['from']
                        : null,
                    parentState: hydroState),
                to: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['to'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_calculateCacheOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.calculateCacheOffset(
                _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                from: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['from']
                        : null,
                    parentState: hydroState),
                to: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['to'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_childCrossAxisPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.childCrossAxisPosition(_36c2
                .maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_childScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.childScrollOffset(_36c2.maybeUnBoxAndBuildArgument<
                _9742.RenderObject,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAbsoluteSizeRelativeToOrigin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getAbsoluteSizeRelativeToOrigin(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAbsoluteSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getAbsoluteSize(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugPaint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_021d.SliverHitTestEntry,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_getConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.constraints];
    });
    table['_dart_getGeometry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.geometry];
    });
    table['_dart_setGeometry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.geometry = (_36c2.maybeUnBoxAndBuildArgument<_021d.SliverGeometry?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getSemanticBounds'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.semanticBounds];
    });
    table['_dart_getPaintBounds'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.paintBounds];
    });
    table['_dart_getCenterOffsetAdjustment'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.centerOffsetAdjustment];
    });
    table['_dart_reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_setupParentData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setupParentData(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_adoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.adoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dropChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dropChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_markParentNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markParentNeedsLayout();
      return [];
    });
    table['_dart_markNeedsLayoutForSizedByParentChange'] = _36c2
        .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['_dart_scheduleInitialLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleInitialLayout();
      return [];
    });
    table['_dart_layout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.layout(
          _36c2.maybeUnBoxAndBuildArgument<_9742.Constraints, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['parentUsesSize']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_invokeLayoutCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.invokeLayoutCallback((constraints) => unpackedcallback.dispatch(
            [luaCallerArguments[0], constraints],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_rotate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.rotate(
          newAngle: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newAngle']
                  : null,
              parentState: hydroState),
          oldAngle: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['oldAngle']
                  : null,
              parentState: hydroState),
          time: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['time'] : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_debugRegisterRepaintBoundaryPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugRegisterRepaintBoundaryPaint(
          includedChild:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['includedChild']
                      : null,
                  parentState: hydroState),
          includedParent:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['includedParent']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_markNeedsCompositingBitsUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['_dart_markNeedsPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsPaint();
      return [];
    });
    table['_dart_scheduleInitialPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleInitialPaint(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_replaceRootLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.replaceRootLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.OffsetLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTransformTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getTransformTo(_36c2.maybeUnBoxAndBuildArgument<
                _9742.RenderObject?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_describeApproximatePaintClip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeApproximatePaintClip(_36c2
                .maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_describeSemanticsClip'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeSemanticsClip(_36c2
                .maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_scheduleInitialSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleInitialSemantics();
      return [];
    });
    table['_dart_sendSemanticsEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.sendSemanticsEvent(
          _36c2.maybeUnBoxAndBuildArgument<_7afa.SemanticsEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_clearSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clearSemantics();
      return [];
    });
    table['_dart_markNeedsSemanticsUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsSemanticsUpdate();
      return [];
    });
    table['_dart_visitChildrenForSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_assembleSemanticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.assembleSemanticsNode(
          _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_4c98.SemanticsNode>,
                  _4c98.SemanticsNode>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_describeForError'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeForError(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDebugDisposed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDisposed];
    });
    table['_dart_getDebugDoingThisResize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDoingThisResize];
    });
    table['_dart_getDebugDoingThisLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayout];
    });
    table['_dart_getDebugCanParentUseSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugCanParentUseSize];
    });
    table['_dart_getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getDebugNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugNeedsLayout];
    });
    table['_dart_getDebugDoingThisLayoutWithCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayoutWithCallback];
    });
    table['_dart_getSizedByParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.sizedByParent];
    });
    table['_dart_getDebugDoingThisPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDoingThisPaint];
    });
    table['_dart_getIsRepaintBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isRepaintBoundary];
    });
    table['_dart_getAlwaysNeedsCompositing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.alwaysNeedsCompositing];
    });
    table['_dart_getLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.layer];
    });
    table['_dart_setLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.layer = (_36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getDebugLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugLayer];
    });
    table['_dart_getNeedsCompositing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.needsCompositing];
    });
    table['_dart_getDebugNeedsPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugNeedsPaint];
    });
    table['_dart_getDebugSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugSemantics];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_redepthChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.redepthChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2805.RenderSliverPinnedPersistentHeader unwrap() => this;
  _2805.RenderSliverPinnedPersistentHeader get vmObject => this;
  @_fac9.override
  void performLayout() {
    _36c2.Closure closure = table["performLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double childMainAxisPosition(child) {
    _36c2.Closure closure = table["childMainAxisPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void showOnScreen(
      {_8c47.Curve curve = _8c47.Curves.ease,
      _9742.RenderObject? descendant,
      _fac9.Duration duration = _fac9.Duration.zero,
      _a643.Rect? rect}) {
    _36c2.Closure closure = table["showOnScreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateChild(shrinkOffset, overlapsContent) {
    _36c2.Closure closure = table["updateChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markNeedsLayout() {
    _36c2.Closure closure = table["markNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void layoutChild(scrollOffset, maxExtent,
      {_fac9.bool overlapsContent = false}) {
    _36c2.Closure closure = table["layoutChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTestChildren(result,
      {required _fac9.double crossAxisPosition,
      required _fac9.double mainAxisPosition}) {
    _36c2.Closure closure = table["hitTestChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void applyPaintTransform(child, transform) {
    _36c2.Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void paint(context, offset) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void describeSemanticsConfiguration(config) {
    _36c2.Closure closure = table["describeSemanticsConfiguration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get maxExtent {
    _36c2.Closure closure = table["getMaxExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get minExtent {
    _36c2.Closure closure = table["getMinExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get childExtent {
    _36c2.Closure closure = table["getChildExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool debugValidateChild(child) {
    _36c2.Closure closure = table["debugValidateChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void attach(owner) {
    super.attach(owner);
    _36c2.Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void detach() {
    super.detach();
    _36c2.Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void redepthChildren() {
    _36c2.Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void visitChildren(visitor) {
    _36c2.Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _be2e.RenderBox? get child {
    _36c2.Closure closure = table["getChild"];
    return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set child(value) {
    _36c2.Closure closure = table["setChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTestBoxChild(result, child,
      {required _fac9.double crossAxisPosition,
      required _fac9.double mainAxisPosition}) {
    _36c2.Closure closure = table["hitTestBoxChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void applyPaintTransformForBoxChild(child, transform) {
    _36c2.Closure closure = table["applyPaintTransformForBoxChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugResetSize() {
    _36c2.Closure closure = table["debugResetSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugAssertDoesMeetConstraints() {
    _36c2.Closure closure = table["debugAssertDoesMeetConstraints"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void performResize() {
    _36c2.Closure closure = table["performResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTest(result,
      {required _fac9.double crossAxisPosition,
      required _fac9.double mainAxisPosition}) {
    _36c2.Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTestSelf(
      {required _fac9.double crossAxisPosition,
      required _fac9.double mainAxisPosition}) {
    _36c2.Closure closure = table["hitTestSelf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double calculatePaintOffset(constraints,
      {required _fac9.double from, required _fac9.double to}) {
    _36c2.Closure closure = table["calculatePaintOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double calculateCacheOffset(constraints,
      {required _fac9.double from, required _fac9.double to}) {
    _36c2.Closure closure = table["calculateCacheOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double childCrossAxisPosition(child) {
    _36c2.Closure closure = table["childCrossAxisPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? childScrollOffset(child) {
    _36c2.Closure closure = table["childScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _a643.Size getAbsoluteSizeRelativeToOrigin() {
    _36c2.Closure closure = table["getAbsoluteSizeRelativeToOrigin"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Size getAbsoluteSize() {
    _36c2.Closure closure = table["getAbsoluteSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void debugPaint(context, offset) {
    _36c2.Closure closure = table["debugPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleEvent(event, entry) {
    _36c2.Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _021d.SliverConstraints get constraints {
    _36c2.Closure closure = table["getConstraints"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_021d.SliverConstraints, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _021d.SliverGeometry? get geometry {
    _36c2.Closure closure = table["getGeometry"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_021d.SliverGeometry?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void set geometry(value) {
    _36c2.Closure closure = table["setGeometry"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Rect get semanticBounds {
    _36c2.Closure closure = table["getSemanticBounds"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Rect get paintBounds {
    _36c2.Closure closure = table["getPaintBounds"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double get centerOffsetAdjustment {
    _36c2.Closure closure = table["getCenterOffsetAdjustment"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void reassemble() {
    _36c2.Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setupParentData(child) {
    _36c2.Closure closure = table["setupParentData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void adoptChild(child) {
    super.adoptChild(child);
    _36c2.Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dropChild(child) {
    super.dropChild(child);
    _36c2.Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markParentNeedsLayout() {
    _36c2.Closure closure = table["markParentNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markNeedsLayoutForSizedByParentChange() {
    _36c2.Closure closure = table["markNeedsLayoutForSizedByParentChange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void scheduleInitialLayout() {
    _36c2.Closure closure = table["scheduleInitialLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void layout(constraints, {_fac9.bool parentUsesSize = false}) {
    _36c2.Closure closure = table["layout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void invokeLayoutCallback<T extends _9742.Constraints>(callback) {
    _36c2.Closure closure = table["invokeLayoutCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void rotate(
      {_fac9.int? newAngle, _fac9.int? oldAngle, _fac9.Duration? time}) {
    _36c2.Closure closure = table["rotate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugRegisterRepaintBoundaryPaint(
      {_fac9.bool includedChild = false, _fac9.bool includedParent = true}) {
    _36c2.Closure closure = table["debugRegisterRepaintBoundaryPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markNeedsCompositingBitsUpdate() {
    _36c2.Closure closure = table["markNeedsCompositingBitsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markNeedsPaint() {
    _36c2.Closure closure = table["markNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void scheduleInitialPaint(rootLayer) {
    _36c2.Closure closure = table["scheduleInitialPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void replaceRootLayer(rootLayer) {
    _36c2.Closure closure = table["replaceRootLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _db98.Matrix4 getTransformTo(ancestor) {
    _36c2.Closure closure = table["getTransformTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Rect? describeApproximatePaintClip(child) {
    _36c2.Closure closure = table["describeApproximatePaintClip"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Rect? describeSemanticsClip(child) {
    _36c2.Closure closure = table["describeSemanticsClip"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void scheduleInitialSemantics() {
    _36c2.Closure closure = table["scheduleInitialSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void sendSemanticsEvent(semanticsEvent) {
    _36c2.Closure closure = table["sendSemanticsEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clearSemantics() {
    super.clearSemantics();
    _36c2.Closure closure = table["clearSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void markNeedsSemanticsUpdate() {
    _36c2.Closure closure = table["markNeedsSemanticsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void visitChildrenForSemantics(visitor) {
    _36c2.Closure closure = table["visitChildrenForSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void assembleSemanticsNode(node, config, children) {
    _36c2.Closure closure = table["assembleSemanticsNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines = ''}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode describeForError(name,
      {_eaf3.DiagnosticsTreeStyle style = _eaf3.DiagnosticsTreeStyle.shallow}) {
    _36c2.Closure closure = table["describeForError"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool? get debugDisposed {
    _36c2.Closure closure = table["getDebugDisposed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugDoingThisResize {
    _36c2.Closure closure = table["getDebugDoingThisResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugDoingThisLayout {
    _36c2.Closure closure = table["getDebugDoingThisLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugCanParentUseSize {
    _36c2.Closure closure = table["getDebugCanParentUseSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _9742.PipelineOwner? get owner {
    _36c2.Closure closure = table["getOwner"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_9742.PipelineOwner?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get debugNeedsLayout {
    _36c2.Closure closure = table["getDebugNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugDoingThisLayoutWithCallback {
    _36c2.Closure closure = table["getDebugDoingThisLayoutWithCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get sizedByParent {
    _36c2.Closure closure = table["getSizedByParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugDoingThisPaint {
    _36c2.Closure closure = table["getDebugDoingThisPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isRepaintBoundary {
    _36c2.Closure closure = table["getIsRepaintBoundary"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get alwaysNeedsCompositing {
    _36c2.Closure closure = table["getAlwaysNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7d70.ContainerLayer? get layer {
    _36c2.Closure closure = table["getLayer"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void set layer(newLayer) {
    _36c2.Closure closure = table["setLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7d70.ContainerLayer? get debugLayer {
    _36c2.Closure closure = table["getDebugLayer"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get needsCompositing {
    _36c2.Closure closure = table["getNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugNeedsPaint {
    _36c2.Closure closure = table["getDebugNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.SemanticsNode? get debugSemantics {
    _36c2.Closure closure = table["getDebugSemantics"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.SemanticsNode?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void redepthChild(child) {
    _36c2.Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get depth {
    _36c2.Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get attached {
    _36c2.Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b05e.AbstractNode? get parent {
    _36c2.Closure closure = table["getParent"];
    return _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderSliverPinnedPersistentHeader(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['renderSliverPinnedPersistentHeader'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRenderSliverPinnedPersistentHeader(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          child: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['child']
                  : null,
              parentState: hydroState),
          showOnScreenConfiguration: _36c2
              .maybeUnBoxAndBuildArgument<_2805.PersistentHeaderShowOnScreenConfiguration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['showOnScreenConfiguration']
                      : null,
                  parentState: hydroState),
          stretchConfiguration:
              _36c2.maybeUnBoxAndBuildArgument<_2805.OverScrollHeaderStretchConfiguration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stretchConfiguration'] : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_2805.RenderSliverPinnedPersistentHeader>(boxer: (
      {required _2805.RenderSliverPinnedPersistentHeader vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderSliverPinnedPersistentHeader(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
