import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/thumb_painter.dart' as _7515;
import 'package:flutter/src/painting/box_shadow.dart' as _9068;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoThumbPainter
    extends _36c2.VMManagedBox<_7515.CupertinoThumbPainter> {
  VMManagedCupertinoThumbPainter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['color'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadows'] = _36c2.maybeBoxObject<_fac9.List<_9068.BoxShadow>>(
        object: vmObject.shadows,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7515.CupertinoThumbPainter vmObject;
}

class RTManagedCupertinoThumbPainter extends _7515.CupertinoThumbPainter
    implements _36c2.Box<_7515.CupertinoThumbPainter> {
  RTManagedCupertinoThumbPainter(
      {required _a643.Color color,
      required _fac9.List<_9068.BoxShadow> shadows,
      required this.table,
      required this.hydroState})
      : super(color: color, shadows: shadows) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['shadows'] = _36c2.maybeBoxObject(
        object: this.shadows,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _7515.CupertinoThumbPainter unwrap() => this;
  _7515.CupertinoThumbPainter get vmObject => this;
  @_fac9.override
  void paint(canvas, rect) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoThumbPainter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoThumbPainter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoThumbPainter(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['color']
                  : null,
              parentState: hydroState),
          shadows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9068.BoxShadow>,
                  _9068.BoxShadow>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['shadows']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_7515.CupertinoThumbPainter>(boxer: (
      {required _7515.CupertinoThumbPainter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoThumbPainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
