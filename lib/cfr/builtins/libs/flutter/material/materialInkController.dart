import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/material.dart' as _e5b9;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialInkController
    extends _36c2.VMManagedBox<_e5b9.MaterialInkController> {
  VMManagedMaterialInkController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.color;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getVsync'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerProvider>(
            object: vmObject.vsync,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['addInkFeature'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addInkFeature(
          _36c2.maybeUnBoxAndBuildArgument<_e5b9.InkFeature, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['markNeedsPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsPaint();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e5b9.MaterialInkController vmObject;
}

void loadMaterialInkController(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_e5b9.MaterialInkController>(boxer: (
      {required _e5b9.MaterialInkController vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialInkController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
