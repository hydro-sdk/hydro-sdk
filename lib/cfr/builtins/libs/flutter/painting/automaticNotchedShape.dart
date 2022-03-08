import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/notched_shapes.dart' as _2316;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAutomaticNotchedShape
    extends _36c2.VMManagedBox<_2316.AutomaticNotchedShape> {
  VMManagedAutomaticNotchedShape(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['host'] = _36c2.maybeBoxObject<_6be9.ShapeBorder>(
        object: vmObject.host,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['guest'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.guest,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getOuterPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Path>(
            object: vmObject.getOuterPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
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

  final _2316.AutomaticNotchedShape vmObject;
}

class RTManagedAutomaticNotchedShape extends _2316.AutomaticNotchedShape
    implements _36c2.Box<_2316.AutomaticNotchedShape> {
  RTManagedAutomaticNotchedShape(
      _6be9.ShapeBorder host$, _6be9.ShapeBorder? guest$,
      {required this.table, required this.hydroState})
      : super(
          host$,
          guest$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['host'] = _36c2.maybeBoxObject(
        object: this.host, hydroState: hydroState, table: _36c2.HydroTable());
    table['guest'] = _36c2.maybeBoxObject(
        object: guest, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getOuterPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getOuterPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
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

  _2316.AutomaticNotchedShape unwrap() => this;
  _2316.AutomaticNotchedShape get vmObject => this;
  @_fac9.override
  _a643.Path getOuterPath(hostRect, guestRect) {
    _36c2.Closure closure = table["getOuterPath"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
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

void loadAutomaticNotchedShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['automaticNotchedShape'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAutomaticNotchedShape(
          _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_2316.AutomaticNotchedShape>(boxer: (
      {required _2316.AutomaticNotchedShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAutomaticNotchedShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
