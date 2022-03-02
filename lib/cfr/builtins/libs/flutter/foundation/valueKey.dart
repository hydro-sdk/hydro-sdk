import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedValueKey extends _36c2.VMManagedBox<_ab4a.ValueKey<_fac9.dynamic>> {VMManagedValueKey({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ab4a.ValueKey<_fac9.dynamic> vmObject;

 }

class RTManagedValueKey extends _ab4a.ValueKey implements _36c2.Box<_ab4a.ValueKey> {RTManagedValueKey(_fac9.dynamic value, {required this.table, required this.hydroState}) : super(value,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_ab4a.ValueKey unwrap() => this;
_ab4a.ValueKey get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadValueKey({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'valueKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedValueKey(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_ab4a.ValueKey>(boxer: ({required _ab4a.ValueKey vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedValueKey(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
