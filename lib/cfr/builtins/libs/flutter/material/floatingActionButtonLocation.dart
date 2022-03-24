import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/scaffold.dart' as _ece7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

import 'package:flutter/src/material/floating_action_button_location.dart'
    as _b2ee;


class VMManagedFloatingActionButtonLocation
    extends _36c2.VMManagedBox<_b2ee.FloatingActionButtonLocation> {
  VMManagedFloatingActionButtonLocation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b2ee.FloatingActionButtonLocation vmObject;
}

class RTManagedFloatingActionButtonLocation
    extends _b2ee.FloatingActionButtonLocation
    implements _36c2.Box<_b2ee.FloatingActionButtonLocation> {
  RTManagedFloatingActionButtonLocation(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getOffset(_36c2.maybeUnBoxAndBuildArgument<
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _b2ee.FloatingActionButtonLocation unwrap() => this;
  _b2ee.FloatingActionButtonLocation get vmObject => this;
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
}

void loadFloatingActionButtonLocation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['floatingActionButtonLocation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFloatingActionButtonLocation(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_b2ee.FloatingActionButtonLocation>(boxer: (
      {required _b2ee.FloatingActionButtonLocation vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFloatingActionButtonLocation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
