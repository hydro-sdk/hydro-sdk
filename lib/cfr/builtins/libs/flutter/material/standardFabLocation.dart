import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/scaffold.dart' as _ece7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

import 'package:flutter/src/material/floating_action_button_location.dart'
    as _b2ee;


class VMManagedStandardFabLocation
    extends _36c2.VMManagedBox<_b2ee.StandardFabLocation> {
  VMManagedStandardFabLocation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getOffsetX'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getOffsetX(
            _36c2.maybeUnBoxAndBuildArgument<_ece7.ScaffoldPrelayoutGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['getOffsetY'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getOffsetY(
            _36c2.maybeUnBoxAndBuildArgument<_ece7.ScaffoldPrelayoutGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['isMini'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isMini(),
      ];
    });
    table['getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.getOffset(_36c2.maybeUnBoxAndBuildArgument<
                _ece7.ScaffoldPrelayoutGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  final _b2ee.StandardFabLocation vmObject;
}

class RTManagedStandardFabLocation extends _b2ee.StandardFabLocation
    implements _36c2.Box<_b2ee.StandardFabLocation> {
  RTManagedStandardFabLocation({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getOffsetX'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getOffsetX(
                _36c2.maybeUnBoxAndBuildArgument<
                        _ece7.ScaffoldPrelayoutGeometry,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOffsetY'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getOffsetY(
                _36c2.maybeUnBoxAndBuildArgument<
                        _ece7.ScaffoldPrelayoutGeometry,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_isMini'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isMini(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getOffset(_36c2.maybeUnBoxAndBuildArgument<
                _ece7.ScaffoldPrelayoutGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  _b2ee.StandardFabLocation unwrap() => this;
  _b2ee.StandardFabLocation get vmObject => this;
  @_fac9.override
  _fac9.double getOffsetX(scaffoldGeometry, adjustment) {
    _36c2.Closure closure = table["getOffsetX"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double getOffsetY(scaffoldGeometry, adjustment) {
    _36c2.Closure closure = table["getOffsetY"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool isMini() {
    _36c2.Closure closure = table["isMini"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Offset getOffset(scaffoldGeometry) {
    _36c2.Closure closure = table["getOffset"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
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

void loadStandardFabLocation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['standardFabLocation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedStandardFabLocation(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_b2ee.StandardFabLocation>(boxer: (
      {required _b2ee.StandardFabLocation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedStandardFabLocation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
