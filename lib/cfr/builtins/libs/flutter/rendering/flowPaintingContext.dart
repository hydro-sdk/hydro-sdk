import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/flow.dart' as _43b9;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFlowPaintingContext
    extends _36c2.VMManagedBox<_43b9.FlowPaintingContext> {
  VMManagedFlowPaintingContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.size,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['getChildSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getChildSize(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Size?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['paintChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paintChild(luaCallerArguments[1],
          opacity: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['opacity']
              : null?.toDouble(),
          transform:
              _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['transform']
                      : null,
                  parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _43b9.FlowPaintingContext vmObject;
}

void loadFlowPaintingContext(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_43b9.FlowPaintingContext>(boxer: (
      {required _43b9.FlowPaintingContext vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFlowPaintingContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
