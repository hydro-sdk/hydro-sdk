import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver_grid.dart' as _a3c0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverGridLayout
    extends _36c2.VMManagedBox<_a3c0.SliverGridLayout> {
  VMManagedSliverGridLayout(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMinChildIndexForScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMinChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxChildIndexForScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject
            .getMaxChildIndexForScrollOffset(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getGeometryForChildIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a3c0.SliverGridGeometry>(
            object: vmObject.getGeometryForChildIndex(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['computeMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxScrollOffset(luaCallerArguments[1]),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a3c0.SliverGridLayout vmObject;
}

void loadSliverGridLayout(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_a3c0.SliverGridLayout>(boxer: (
      {required _a3c0.SliverGridLayout vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverGridLayout(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
