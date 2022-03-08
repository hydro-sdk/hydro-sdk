import 'dart:core' as _fac9;

import 'package:flutter/src/semantics/semantics.dart' as _4c98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsTag extends _36c2.VMManagedBox<_4c98.SemanticsTag> {
  VMManagedSemanticsTag(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['name'] = vmObject.name;
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4c98.SemanticsTag vmObject;
}

class RTManagedSemanticsTag extends _4c98.SemanticsTag
    implements _36c2.Box<_4c98.SemanticsTag> {
  RTManagedSemanticsTag(_fac9.String name$,
      {required this.table, required this.hydroState})
      : super(
          name$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['name'] = _36c2.maybeBoxObject(
        object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
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

  _4c98.SemanticsTag unwrap() => this;
  _4c98.SemanticsTag get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsTag(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['semanticsTag'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsTag(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_4c98.SemanticsTag>(boxer: (
      {required _4c98.SemanticsTag vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsTag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
