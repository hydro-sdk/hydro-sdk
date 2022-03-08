import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/scaffold.dart' as _ece7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaffoldGeometry
    extends _36c2.VMManagedBox<_ece7.ScaffoldGeometry> {
  VMManagedScaffoldGeometry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['bottomNavigationBarTop'] = vmObject.bottomNavigationBarTop;
    table['floatingActionButtonArea'] = _36c2.maybeBoxObject<_a643.Rect?>(
        object: vmObject.floatingActionButtonArea,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ece7.ScaffoldGeometry>(
            object: vmObject.copyWith(
                bottomNavigationBarTop: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['bottomNavigationBarTop']
                    : null?.toDouble(),
                floatingActionButtonArea: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['floatingActionButtonArea']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ece7.ScaffoldGeometry vmObject;
}

class RTManagedScaffoldGeometry extends _ece7.ScaffoldGeometry
    implements _36c2.Box<_ece7.ScaffoldGeometry> {
  RTManagedScaffoldGeometry(
      {_fac9.double? bottomNavigationBarTop,
      _a643.Rect? floatingActionButtonArea,
      required this.table,
      required this.hydroState})
      : super(
            bottomNavigationBarTop: bottomNavigationBarTop,
            floatingActionButtonArea: floatingActionButtonArea) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['bottomNavigationBarTop'] = _36c2.maybeBoxObject(
        object: this.bottomNavigationBarTop,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingActionButtonArea'] = _36c2.maybeBoxObject(
        object: this.floatingActionButtonArea,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                bottomNavigationBarTop: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['bottomNavigationBarTop']
                            : null,
                        parentState: hydroState),
                floatingActionButtonArea: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['floatingActionButtonArea']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ece7.ScaffoldGeometry unwrap() => this;
  _ece7.ScaffoldGeometry get vmObject => this;
  @_fac9.override
  _ece7.ScaffoldGeometry copyWith(
      {_fac9.double? bottomNavigationBarTop,
      _a643.Rect? floatingActionButtonArea}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ece7.ScaffoldGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadScaffoldGeometry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scaffoldGeometry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScaffoldGeometry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          bottomNavigationBarTop: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['bottomNavigationBarTop']
              : null?.toDouble(),
          floatingActionButtonArea:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['floatingActionButtonArea']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_ece7.ScaffoldGeometry>(boxer: (
      {required _ece7.ScaffoldGeometry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScaffoldGeometry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
