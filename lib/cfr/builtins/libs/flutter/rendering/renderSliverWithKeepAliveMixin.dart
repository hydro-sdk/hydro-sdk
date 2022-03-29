import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart' as _35be;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderSliverWithKeepAliveMixin
    extends _36c2.VMManagedBox<_35be.RenderSliverWithKeepAliveMixin> {
  VMManagedRenderSliverWithKeepAliveMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['setupParentData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setupParentData(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _35be.RenderSliverWithKeepAliveMixin vmObject;
}

void loadRenderSliverWithKeepAliveMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_35be.RenderSliverWithKeepAliveMixin>(boxer: (
      {required _35be.RenderSliverWithKeepAliveMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderSliverWithKeepAliveMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
