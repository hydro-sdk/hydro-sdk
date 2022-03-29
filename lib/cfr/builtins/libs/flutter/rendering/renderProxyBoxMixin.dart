import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderProxyBoxMixin
    extends _36c2.VMManagedBox<_bf98.RenderProxyBoxMixin<_be2e.RenderBox>> {
  VMManagedRenderProxyBoxMixin(
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
    table['computeMinIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeMinIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMaxIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMinIntrinsicHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeMinIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMaxIntrinsicHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeDistanceToActualBaseline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.computeDistanceToActualBaseline(
          _36c2.maybeUnBoxEnum(
              values: _a643.TextBaseline.values,
              boxedEnum: luaCallerArguments[1]));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['computeDryLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.computeDryLayout(_36c2.maybeUnBoxAndBuildArgument<
                _be2e.BoxConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['performLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performLayout();
      return [];
    });
    table['computeSizeForNoChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.computeSizeForNoChild(
                _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['hitTestChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestChildren(
            _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['position']
                        : null,
                    parentState: hydroState)),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _bf98.RenderProxyBoxMixin<_be2e.RenderBox> vmObject;
}

void loadRenderProxyBoxMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_bf98.RenderProxyBoxMixin>(boxer: (
      {required _bf98.RenderProxyBoxMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderProxyBoxMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
