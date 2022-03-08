import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/matrix_utils.dart' as _681c;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMatrixUtils extends _36c2.VMManagedBox<_681c.MatrixUtils> {
  VMManagedMatrixUtils(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _681c.MatrixUtils vmObject;
}

void loadMatrixUtils(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['matrixUtilsGetAsTranslation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _681c.MatrixUtils.getAsTranslation(
        _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_a643.Offset?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  table['matrixUtilsGetAsScale'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _681c.MatrixUtils.getAsScale(
        _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        returnValue,
      ];
    }
    return [];
  });
  table['matrixUtilsMatrixEquals'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _681c.MatrixUtils.matrixEquals(
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['matrixUtilsIsIdentity'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _681c.MatrixUtils.isIdentity(
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState)),
    ];
  });
  table['matrixUtilsTransformPoint'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a643.Offset>(
          object: _681c.MatrixUtils.transformPoint(
              _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['matrixUtilsTransformRect'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a643.Rect>(
          object: _681c.MatrixUtils.transformRect(
              _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['matrixUtilsInverseTransformRect'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a643.Rect>(
          object: _681c.MatrixUtils.inverseTransformRect(
              _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['matrixUtilsCreateCylindricalProjectionTransform'] = _36c2
      .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_db98.Matrix4>(
          object: _681c.MatrixUtils.createCylindricalProjectionTransform(
              orientation: _36c2.maybeUnBoxEnum(
                  values: _487f.Axis.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['orientation']
                      : null),
              perspective: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['perspective']
                  : null?.toDouble(),
              angle: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['angle']
                  : null?.toDouble(),
              radius: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['radius']
                  : null?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['matrixUtilsForceToPoint'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_db98.Matrix4>(
          object: _681c.MatrixUtils.forceToPoint(
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_681c.MatrixUtils>(boxer: (
      {required _681c.MatrixUtils vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMatrixUtils(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
