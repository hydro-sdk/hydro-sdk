import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/painting/borders.dart' as _6be9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialStateBorderSide
    extends _36c2.VMManagedBox<_da12.MaterialStateBorderSide> {
  VMManagedMaterialStateBorderSide(
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
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.Set<_da12.MaterialState>,
          _da12.MaterialState>(luaCallerArguments[1], parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.BorderSide?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
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

  final _da12.MaterialStateBorderSide vmObject;
}

class RTManagedMaterialStateBorderSide extends _da12.MaterialStateBorderSide
    implements _36c2.Box<_da12.MaterialStateBorderSide> {
  RTManagedMaterialStateBorderSide(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['color'] = _36c2.maybeBoxObject(
        object: color, hydroState: hydroState, table: _36c2.HydroTable());
    table['width'] = _36c2.maybeBoxObject(
        object: width, hydroState: hydroState, table: _36c2.HydroTable());
    table['style'] = _6be9.BorderStyle.values.indexWhere((x) {
      return x == style;
    });
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: resolve(_36c2.maybeUnBoxAndBuildArgument<
                    _fac9.Set<_da12.MaterialState>,
                    _da12.MaterialState>(luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _da12.MaterialStateBorderSide unwrap() => this;
  _da12.MaterialStateBorderSide get vmObject => this;
  @_fac9.override
  _6be9.BorderSide? resolve(states) {
    _36c2.Closure closure = table["resolve"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

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
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMaterialStateBorderSide(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['materialStateBorderSide'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMaterialStateBorderSide(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['materialStateBorderSideResolveWith'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedcallback = luaCallerArguments[1];
    return [
      _36c2.maybeBoxObject<_da12.MaterialStateBorderSide>(
          object: _da12.MaterialStateBorderSide.resolveWith((states) => _36c2
              .maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedcallback.dispatch(
                      [luaCallerArguments[0], states],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_da12.MaterialStateBorderSide>(boxer: (
      {required _da12.MaterialStateBorderSide vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialStateBorderSide(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
