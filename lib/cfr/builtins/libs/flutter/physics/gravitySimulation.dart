import 'dart:core' as _fac9;

import 'package:flutter/src/physics/gravity_simulation.dart' as _a4aa;
import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/tolerance.dart' as _192a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGravitySimulation
    extends _36c2.VMManagedBox<_a4aa.GravitySimulation> {
  VMManagedGravitySimulation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['tolerance'] = _36c2.maybeBoxObject<_192a.Tolerance>(
        object: vmObject.tolerance,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['x'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.x(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['dx'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dx(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['isDone'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isDone(luaCallerArguments[1]?.toDouble()),
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

  final _a4aa.GravitySimulation vmObject;
}

class RTManagedGravitySimulation extends _a4aa.GravitySimulation
    implements _36c2.Box<_a4aa.GravitySimulation> {
  RTManagedGravitySimulation(_fac9.double acceleration, _fac9.double distance,
      _fac9.double endDistance, _fac9.double velocity,
      {required this.table, required this.hydroState})
      : super(
          acceleration,
          distance,
          endDistance,
          velocity,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['tolerance'] = _36c2.maybeBoxObject(
        object: tolerance, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_x'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.x(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dx'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.dx(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_isDone'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isDone(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
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

  _a4aa.GravitySimulation unwrap() => this;
  _a4aa.GravitySimulation get vmObject => this;
  @_fac9.override
  _fac9.double x(time) {
    _36c2.Closure closure = table["x"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double dx(time) {
    _36c2.Closure closure = table["dx"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool isDone(time) {
    _36c2.Closure closure = table["isDone"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadGravitySimulation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['gravitySimulation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedGravitySimulation(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_a4aa.GravitySimulation>(boxer: (
      {required _a4aa.GravitySimulation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedGravitySimulation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
