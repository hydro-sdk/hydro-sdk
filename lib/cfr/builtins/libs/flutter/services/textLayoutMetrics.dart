import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_layout_metrics.dart' as _0f57;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextLayoutMetrics
    extends _36c2.VMManagedBox<_0f57.TextLayoutMetrics> {
  VMManagedTextLayoutMetrics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getLineAtOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7986.TextSelection>(
            object: vmObject.getLineAtOffset(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getWordBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextRange>(
            object: vmObject.getWordBoundary(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTextPositionAbove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextPosition>(
            object: vmObject.getTextPositionAbove(_36c2
                .maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTextPositionBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextPosition>(
            object: vmObject.getTextPositionBelow(_36c2
                .maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0f57.TextLayoutMetrics vmObject;
}

class RTManagedTextLayoutMetrics extends _0f57.TextLayoutMetrics
    implements _36c2.Box<_0f57.TextLayoutMetrics> {
  RTManagedTextLayoutMetrics({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getLineAtOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getLineAtOffset(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getWordBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getWordBoundary(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTextPositionAbove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getTextPositionAbove(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTextPositionBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getTextPositionBelow(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0f57.TextLayoutMetrics unwrap() => this;
  _0f57.TextLayoutMetrics get vmObject => this;
  @_fac9.override
  _7986.TextSelection getLineAtOffset(position) {
    _36c2.Closure closure = table["getLineAtOffset"];
    return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextRange getWordBoundary(position) {
    _36c2.Closure closure = table["getWordBoundary"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextPosition getTextPositionAbove(position) {
    _36c2.Closure closure = table["getTextPositionAbove"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextPosition getTextPositionBelow(position) {
    _36c2.Closure closure = table["getTextPositionBelow"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadTextLayoutMetrics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textLayoutMetrics'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextLayoutMetrics(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['textLayoutMetricsIsWhitespace'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _0f57.TextLayoutMetrics.isWhitespace(luaCallerArguments[1]),
    ];
  });
  _36c2.registerBoxer<_0f57.TextLayoutMetrics>(boxer: (
      {required _0f57.TextLayoutMetrics vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextLayoutMetrics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
