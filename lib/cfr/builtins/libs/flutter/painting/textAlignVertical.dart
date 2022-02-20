import 'dart:core' as _fac9;

import 'package:flutter/src/painting/alignment.dart' as _ca85;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextAlignVertical
    extends _36c2.VMManagedBox<_ca85.TextAlignVertical> {
  VMManagedTextAlignVertical(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['y'] = vmObject.y;
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ca85.TextAlignVertical vmObject;
}

class RTManagedTextAlignVertical extends _ca85.TextAlignVertical
    implements _36c2.Box<_ca85.TextAlignVertical> {
  RTManagedTextAlignVertical(
      {required _fac9.double y, required this.table, required this.hydroState})
      : super(y: y) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['y'] = _36c2.maybeBoxObject(
        object: this.y, hydroState: hydroState, table: _36c2.HydroTable());
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

  _ca85.TextAlignVertical unwrap() => this;
  _ca85.TextAlignVertical get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextAlignVertical(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textAlignVertical'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextAlignVertical(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          y: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['y']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_ca85.TextAlignVertical>(boxer: (
      {required _ca85.TextAlignVertical vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextAlignVertical(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
