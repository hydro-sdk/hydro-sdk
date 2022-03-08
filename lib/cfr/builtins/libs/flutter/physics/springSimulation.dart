import 'dart:core' as _fac9;

import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/spring_simulation.dart' as _5917;
import 'package:flutter/src/physics/tolerance.dart' as _192a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSpringSimulation
    extends _36c2.VMManagedBox<_5917.SpringSimulation> {
  VMManagedSpringSimulation(
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
    table['getType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _5917.SpringType.values.indexWhere((x) {
          return x == vmObject.type;
        }),
      ];
    });
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

  final _5917.SpringSimulation vmObject;
}

class RTManagedSpringSimulation extends _5917.SpringSimulation
    implements _36c2.Box<_5917.SpringSimulation> {
  RTManagedSpringSimulation(_5917.SpringDescription spring, _fac9.double start,
      _fac9.double end, _fac9.double velocity,
      {required _192a.Tolerance tolerance,
      required this.table,
      required this.hydroState})
      : super(spring, start, end, velocity, tolerance: tolerance) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['tolerance'] = _36c2.maybeBoxObject(
        object: this.tolerance,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.type];
    });
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

  _5917.SpringSimulation unwrap() => this;
  _5917.SpringSimulation get vmObject => this;
  @_fac9.override
  _5917.SpringType get type {
    _36c2.Closure closure = table["getType"];
    return _36c2.maybeUnBoxEnum(
        values: _5917.SpringType.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

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

void loadSpringSimulation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['springSimulation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSpringSimulation(
          _36c2.maybeUnBoxAndBuildArgument<_5917.SpringDescription,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          tolerance:
              _36c2.maybeUnBoxAndBuildArgument<_192a.Tolerance, _fac9.dynamic>(
                  luaCallerArguments.length >= 6
                      ? luaCallerArguments[5]['tolerance']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_5917.SpringSimulation>(boxer: (
      {required _5917.SpringSimulation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSpringSimulation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
