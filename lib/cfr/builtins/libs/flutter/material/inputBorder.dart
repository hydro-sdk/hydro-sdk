import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/input_border.dart' as _d817;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInputBorder extends _36c2.VMManagedBox<_d817.InputBorder> {
  VMManagedInputBorder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['borderSide'] = _36c2.maybeBoxObject<_6be9.BorderSide>(
        object: vmObject.borderSide,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_d817.InputBorder>(
            object: vmObject.copyWith(
                borderSide: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?,
                        _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['borderSide']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIsOutline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isOutline,
      ];
    });
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          gapExtent: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['gapExtent']
              : null?.toDouble(),
          gapPercentage: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['gapPercentage']
              : null?.toDouble(),
          gapStart: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['gapStart']
              : null?.toDouble(),
          textDirection: _36c2.maybeUnBoxEnum(
              values: _a643.TextDirection.values,
              boxedEnum: luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['textDirection']
                  : null));
      return [];
    });
    table['scale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6be9.ShapeBorder>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getOuterPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Path>(
            object: vmObject.getOuterPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getInnerPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Path>(
            object: vmObject.getInnerPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.dimensions,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
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

  final _d817.InputBorder vmObject;
}

void loadInputBorder(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_d817.InputBorder>(boxer: (
      {required _d817.InputBorder vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInputBorder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
