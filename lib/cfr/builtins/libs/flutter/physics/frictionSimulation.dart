import 'dart:core' as _fac9;

import 'package:flutter/src/physics/friction_simulation.dart' as _4776;
import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/tolerance.dart' as _192a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFrictionSimulation
    extends _36c2.VMManagedBox<_4776.FrictionSimulation> {
  VMManagedFrictionSimulation(
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
    table['getFinalX'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.finalX,
      ];
    });
    table['timeAtX'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.timeAtX(luaCallerArguments[1]?.toDouble()),
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

  final _4776.FrictionSimulation vmObject;
}

class RTManagedFrictionSimulation extends _4776.FrictionSimulation
    implements _36c2.Box<_4776.FrictionSimulation> {
  RTManagedFrictionSimulation(
      _fac9.double drag, _fac9.double position, _fac9.double velocity,
      {required _192a.Tolerance tolerance,
      required this.table,
      required this.hydroState})
      : super(drag, position, velocity, tolerance: tolerance) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['tolerance'] = _36c2.maybeBoxObject(
        object: this.tolerance,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['_dart_getFinalX'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.finalX];
    });
    table['_dart_timeAtX'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.timeAtX(
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

  _4776.FrictionSimulation unwrap() => this;
  _4776.FrictionSimulation get vmObject => this;
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
  _fac9.double get finalX {
    _36c2.Closure closure = table["getFinalX"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double timeAtX(x) {
    _36c2.Closure closure = table["timeAtX"];
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

void loadFrictionSimulation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['frictionSimulation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFrictionSimulation(luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(), luaCallerArguments[3]?.toDouble(),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          tolerance:
              _36c2.maybeUnBoxAndBuildArgument<_192a.Tolerance, _fac9.dynamic>(
                  luaCallerArguments.length >= 5
                      ? luaCallerArguments[4]['tolerance']
                      : null,
                  parentState: hydroState))
    ];
  });
  table['frictionSimulationThrough'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_4776.FrictionSimulation>(
          object: _4776.FrictionSimulation.through(
              luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble(),
              luaCallerArguments[3]?.toDouble(),
              luaCallerArguments[4]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_4776.FrictionSimulation>(boxer: (
      {required _4776.FrictionSimulation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFrictionSimulation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
