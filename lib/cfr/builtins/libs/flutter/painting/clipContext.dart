import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/clip.dart' as _35bd;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedClipContext extends _36c2.VMManagedBox<_35bd.ClipContext> {
  VMManagedClipContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getCanvas'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Canvas>(
            object: vmObject.canvas,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['clipPathAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipPathAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['clipRRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipRRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.RRect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['clipRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _35bd.ClipContext vmObject;
}

class RTManagedClipContext extends _35bd.ClipContext
    implements _36c2.Box<_35bd.ClipContext> {
  RTManagedClipContext({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getCanvas'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [canvas];
    });
    table['_dart_clipPathAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      super.clipPathAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clipRRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      super.clipRRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.RRect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clipRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      super.clipRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _35bd.ClipContext unwrap() => this;
  _35bd.ClipContext get vmObject => this;
  @_fac9.override
  _a643.Canvas get canvas {
    _36c2.Closure closure = table["getCanvas"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void clipPathAndPaint(path, clipBehavior, bounds, painter) {
    _36c2.Closure closure = table["clipPathAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clipRRectAndPaint(rrect, clipBehavior, bounds, painter) {
    _36c2.Closure closure = table["clipRRectAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clipRectAndPaint(rect, clipBehavior, bounds, painter) {
    _36c2.Closure closure = table["clipRectAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadClipContext(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['clipContext'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedClipContext(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_35bd.ClipContext>(boxer: (
      {required _35bd.ClipContext vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedClipContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
