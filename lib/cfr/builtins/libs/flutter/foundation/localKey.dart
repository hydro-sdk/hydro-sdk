import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLocalKey extends _36c2.VMManagedBox<_ab4a.LocalKey> {VMManagedLocalKey({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ab4a.LocalKey vmObject;

 }

class RTManagedLocalKey extends _ab4a.LocalKey implements _36c2.Box<_ab4a.LocalKey> {RTManagedLocalKey({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_ab4a.LocalKey unwrap() => this;
_ab4a.LocalKey get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadLocalKey({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'localKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedLocalKey(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_ab4a.LocalKey>(boxer: ({required _ab4a.LocalKey vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedLocalKey(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
