import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/semantics/semantics_service.dart' as _12a0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsService
    extends _36c2.VMManagedBox<_12a0.SemanticsService> {
  VMManagedSemanticsService(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _12a0.SemanticsService vmObject;
}

void loadSemanticsService(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['semanticsServiceAnnounce'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _12a0.SemanticsService.announce(
              luaCallerArguments[1],
              _36c2.maybeUnBoxEnum(
                  values: _a643.TextDirection.values,
                  boxedEnum: luaCallerArguments[2])),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['semanticsServiceTooltip'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _12a0.SemanticsService.tooltip(luaCallerArguments[1]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_12a0.SemanticsService>(boxer: (
      {required _12a0.SemanticsService vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsService(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
