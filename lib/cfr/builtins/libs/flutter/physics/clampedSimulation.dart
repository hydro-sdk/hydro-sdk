import 'dart:core' as _fac9;

import 'package:flutter/src/physics/clamped_simulation.dart' as _d514;
import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/tolerance.dart' as _192a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedClampedSimulation
    extends _36c2.VMManagedBox<_d514.ClampedSimulation> {
  VMManagedClampedSimulation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['simulation'] = _36c2.maybeBoxObject<_5437.Simulation>(
        object: vmObject.simulation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['xMin'] = vmObject.xMin;
    table['xMax'] = vmObject.xMax;
    table['dxMin'] = vmObject.dxMin;
    table['dxMax'] = vmObject.dxMax;
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

  final _d514.ClampedSimulation vmObject;
}

class RTManagedClampedSimulation extends _d514.ClampedSimulation
    implements _36c2.Box<_d514.ClampedSimulation> {
  RTManagedClampedSimulation(_5437.Simulation simulation$,
      {required _fac9.double dxMax,
      required _fac9.double dxMin,
      required _fac9.double xMax,
      required _fac9.double xMin,
      required this.table,
      required this.hydroState})
      : super(simulation$, dxMax: dxMax, dxMin: dxMin, xMax: xMax, xMin: xMin) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['simulation'] = _36c2.maybeBoxObject(
        object: this.simulation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['xMin'] = _36c2.maybeBoxObject(
        object: this.xMin, hydroState: hydroState, table: _36c2.HydroTable());
    table['xMax'] = _36c2.maybeBoxObject(
        object: this.xMax, hydroState: hydroState, table: _36c2.HydroTable());
    table['dxMin'] = _36c2.maybeBoxObject(
        object: this.dxMin, hydroState: hydroState, table: _36c2.HydroTable());
    table['dxMax'] = _36c2.maybeBoxObject(
        object: this.dxMax, hydroState: hydroState, table: _36c2.HydroTable());
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

  _d514.ClampedSimulation unwrap() => this;
  _d514.ClampedSimulation get vmObject => this;
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

void loadClampedSimulation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['clampedSimulation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedClampedSimulation(
          _36c2.maybeUnBoxAndBuildArgument<_5437.Simulation, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          dxMax: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['dxMax']
              : null?.toDouble(),
          dxMin: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['dxMin']
              : null?.toDouble(),
          xMax: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['xMax']
              : null?.toDouble(),
          xMin: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['xMin']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_d514.ClampedSimulation>(boxer: (
      {required _d514.ClampedSimulation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedClampedSimulation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
