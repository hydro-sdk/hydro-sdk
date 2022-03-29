import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/debug_overflow_indicator.dart' as _bfb1;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDebugOverflowIndicatorMixin
    extends _36c2.VMManagedBox<_bfb1.DebugOverflowIndicatorMixin> {
  VMManagedDebugOverflowIndicatorMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['paintOverflowIndicator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paintOverflowIndicator(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments[4],
              parentState: hydroState),
          overflowHints: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_eaf3.DiagnosticsNode>?, _eaf3.DiagnosticsNode>(
              luaCallerArguments.length >= 6 ? luaCallerArguments[5]['overflowHints'] : null,
              parentState: hydroState));
      return [];
    });
    table['reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reassemble();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _bfb1.DebugOverflowIndicatorMixin vmObject;
}

void loadDebugOverflowIndicatorMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_bfb1.DebugOverflowIndicatorMixin>(boxer: (
      {required _bfb1.DebugOverflowIndicatorMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDebugOverflowIndicatorMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
