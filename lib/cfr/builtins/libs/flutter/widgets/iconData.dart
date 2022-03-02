import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/icon_data.dart' as _003a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedIconData extends _36c2.VMManagedBox<_003a.IconData> {
  VMManagedIconData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['codePoint'] = vmObject.codePoint;
    table['fontFamily'] = vmObject.fontFamily;
    table['fontPackage'] = vmObject.fontPackage;
    table['matchTextDirection'] = vmObject.matchTextDirection;
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
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

  final _003a.IconData vmObject;
}

class RTManagedIconData extends _003a.IconData
    implements _36c2.Box<_003a.IconData> {
  RTManagedIconData(_fac9.int codePoint$,
      {_fac9.String? fontFamily,
      _fac9.String? fontPackage,
      required _fac9.bool matchTextDirection,
      required this.table,
      required this.hydroState})
      : super(codePoint$,
            fontFamily: fontFamily,
            fontPackage: fontPackage,
            matchTextDirection: matchTextDirection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['codePoint'] = _36c2.maybeBoxObject(
        object: this.codePoint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontFamily'] = _36c2.maybeBoxObject(
        object: this.fontFamily,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontPackage'] = _36c2.maybeBoxObject(
        object: this.fontPackage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['matchTextDirection'] = _36c2.maybeBoxObject(
        object: this.matchTextDirection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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

  _003a.IconData unwrap() => this;
  _003a.IconData get vmObject => this;
  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadIconData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['iconData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedIconData(luaCallerArguments[1],
          table: luaCallerArguments[0],
          hydroState: hydroState,
          fontFamily: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['fontFamily']
              : null,
          fontPackage: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['fontPackage']
              : null,
          matchTextDirection: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['matchTextDirection']
              : null)
    ];
  });
  _36c2.registerBoxer<_003a.IconData>(boxer: (
      {required _003a.IconData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedIconData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
