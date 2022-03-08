import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/elevation_overlay.dart' as _d063;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedElevationOverlay
    extends _36c2.VMManagedBox<_d063.ElevationOverlay> {
  VMManagedElevationOverlay(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d063.ElevationOverlay vmObject;
}

void loadElevationOverlay(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['elevationOverlayApplyOverlay'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a643.Color>(
          object: _d063.ElevationOverlay.applyOverlay(
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['elevationOverlayOverlayColor'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a643.Color>(
          object: _d063.ElevationOverlay.overlayColor(
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['elevationOverlayColorWithOverlay'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_a643.Color>(
          object: _d063.ElevationOverlay.colorWithOverlay(
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_d063.ElevationOverlay>(boxer: (
      {required _d063.ElevationOverlay vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedElevationOverlay(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
