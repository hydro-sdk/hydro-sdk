import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/annotations.dart' as _428a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCategory extends _36c2.VMManagedBox<_428a.Category> {
  VMManagedCategory(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['sections'] = _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(
        object: vmObject.sections,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _428a.Category vmObject;
}

class RTManagedCategory extends _428a.Category
    implements _36c2.Box<_428a.Category> {
  RTManagedCategory(_fac9.List<_fac9.String> sections$,
      {required this.table, required this.hydroState})
      : super(
          sections$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['sections'] = _36c2.maybeBoxObject(
        object: this.sections,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _428a.Category unwrap() => this;
  _428a.Category get vmObject => this;
}

void loadCategory(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['category'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCategory(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>,
              _fac9.String>(luaCallerArguments[1], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_428a.Category>(boxer: (
      {required _428a.Category vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCategory(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
