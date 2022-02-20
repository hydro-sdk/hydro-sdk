import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/shader_warm_up.dart' as _d03c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedShaderWarmUp extends _36c2.VMManagedBox<_d03c.ShaderWarmUp> {
  VMManagedShaderWarmUp(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.size,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['execute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.execute(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d03c.ShaderWarmUp vmObject;
}

class RTManagedShaderWarmUp extends _d03c.ShaderWarmUp
    implements _36c2.Box<_d03c.ShaderWarmUp> {
  RTManagedShaderWarmUp({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_warmUpOnCanvas'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: warmUpOnCanvas(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_execute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.execute(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _d03c.ShaderWarmUp unwrap() => this;
  _d03c.ShaderWarmUp get vmObject => this;
  @_fac9.override
  _a643.Size get size {
    _36c2.Closure closure = table["getSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<void> warmUpOnCanvas(canvas) {
    _36c2.Closure closure = table["warmUpOnCanvas"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<void> execute() {
    _36c2.Closure closure = table["execute"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadShaderWarmUp(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['shaderWarmUp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedShaderWarmUp(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_d03c.ShaderWarmUp>(boxer: (
      {required _d03c.ShaderWarmUp vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedShaderWarmUp(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
