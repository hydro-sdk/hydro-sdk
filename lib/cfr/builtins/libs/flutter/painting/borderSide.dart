import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/borders.dart' as _6be9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBorderSide extends _36c2.VMManagedBox<_6be9.BorderSide> {
  VMManagedBorderSide(
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
    table['width'] = vmObject.width;
    table['style'] = _6be9.BorderStyle.values.indexWhere((x) {
      return x == vmObject.style;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6be9.BorderSide>(
            object: vmObject.copyWith(
                color: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['color']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _6be9.BorderStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null),
                width: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['width']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['scale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6be9.BorderSide>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Paint>(
            object: vmObject.toPaint(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6be9.BorderSide vmObject;
}

class RTManagedBorderSide extends _6be9.BorderSide
    implements _36c2.Box<_6be9.BorderSide> {
  RTManagedBorderSide(
      {required _a643.Color color,
      required _6be9.BorderStyle style,
      required _fac9.double width,
      required this.table,
      required this.hydroState})
      : super(color: color, style: style, width: width) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['width'] = _36c2.maybeBoxObject(
        object: this.width, hydroState: hydroState, table: _36c2.HydroTable());
    table['style'] = _6be9.BorderStyle.values.indexWhere((x) {
      return x == this.style;
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['color']
                        : null,
                    parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _6be9.BorderStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null),
                width:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['width']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_scale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.scale(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toPaint(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _6be9.BorderSide unwrap() => this;
  _6be9.BorderSide get vmObject => this;
  @_fac9.override
  _6be9.BorderSide copyWith(
      {_a643.Color? color, _6be9.BorderStyle? style, _fac9.double? width}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _6be9.BorderSide scale(t) {
    _36c2.Closure closure = table["scale"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Paint toPaint() {
    _36c2.Closure closure = table["toPaint"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Paint, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBorderSide(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['borderSide'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedBorderSide(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['color']
                  : null,
              parentState: hydroState),
          style: _36c2.maybeUnBoxEnum(
              values: _6be9.BorderStyle.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['style']
                  : null),
          width: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['width']
              : null?.toDouble())
    ];
  });
  table['borderSideMerge'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_6be9.BorderSide>(
          object: _6be9.BorderSide.merge(
              _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['borderSideCanMerge'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _6be9.BorderSide.canMerge(
          _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['borderSideLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_6be9.BorderSide>(
          object: _6be9.BorderSide.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_6be9.BorderSide>(boxer: (
      {required _6be9.BorderSide vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBorderSide(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
