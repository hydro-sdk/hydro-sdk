import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/border_radius.dart' as _9d8a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBorderRadiusDirectional
    extends _36c2.VMManagedBox<_9d8a.BorderRadiusDirectional> {
  VMManagedBorderRadiusDirectional(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['topStart'] = _36c2.maybeBoxObject<_a643.Radius>(
        object: vmObject.topStart,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['topEnd'] = _36c2.maybeBoxObject<_a643.Radius>(
        object: vmObject.topEnd,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomStart'] = _36c2.maybeBoxObject<_a643.Radius>(
        object: vmObject.bottomStart,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomEnd'] = _36c2.maybeBoxObject<_a643.Radius>(
        object: vmObject.bottomEnd,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtract'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9d8a.BorderRadiusGeometry>(
            object: vmObject.subtract(_36c2.maybeUnBoxAndBuildArgument<
                _9d8a.BorderRadiusGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9d8a.BorderRadiusGeometry>(
            object: vmObject.add(_36c2.maybeUnBoxAndBuildArgument<
                _9d8a.BorderRadiusGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9d8a.BorderRadius>(
            object: vmObject.resolve(_36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments[1])),
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9d8a.BorderRadiusDirectional vmObject;
}

void loadBorderRadiusDirectional(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['borderRadiusDirectionalLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _9d8a.BorderRadiusDirectional.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadiusDirectional?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadiusDirectional?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_9d8a.BorderRadiusDirectional?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_9d8a.BorderRadiusDirectional>(boxer: (
      {required _9d8a.BorderRadiusDirectional vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBorderRadiusDirectional(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
