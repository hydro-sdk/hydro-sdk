import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/haptic_feedback.dart' as _d0df;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHapticFeedback extends _36c2.VMManagedBox<_d0df.HapticFeedback> {
  VMManagedHapticFeedback(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d0df.HapticFeedback vmObject;
}

void loadHapticFeedback(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['hapticFeedbackVibrate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _d0df.HapticFeedback.vibrate(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['hapticFeedbackLightImpact'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _d0df.HapticFeedback.lightImpact(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['hapticFeedbackMediumImpact'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _d0df.HapticFeedback.mediumImpact(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['hapticFeedbackHeavyImpact'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _d0df.HapticFeedback.heavyImpact(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['hapticFeedbackSelectionClick'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _d0df.HapticFeedback.selectionClick(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_d0df.HapticFeedback>(boxer: (
      {required _d0df.HapticFeedback vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedHapticFeedback(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
