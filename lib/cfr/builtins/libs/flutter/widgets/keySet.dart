import 'dart:core' as _fac9;

import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/widgets/shortcuts.dart' as _1710;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeySet extends _36c2.VMManagedBox<_1710.KeySet<_e468.KeyboardKey>> {VMManagedKeySet({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'hashCode'
] = vmObject.hashCode;
table  [
'getKeys'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Set>(object: vmObject.keys, hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1710.KeySet<_e468.KeyboardKey> vmObject;

 }

class RTManagedKeySet extends _1710.KeySet implements _36c2.Box<_1710.KeySet> {RTManagedKeySet(_e468.KeyboardKey key1, _e468.KeyboardKey? key2, _e468.KeyboardKey? key3, _e468.KeyboardKey? key4, {required this.table, required this.hydroState}) : super(key1,key2,key3,key4,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'hashCode'
] = _36c2.maybeBoxObject(object: hashCode, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getKeys'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.keys];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_1710.KeySet unwrap() => this;
_1710.KeySet get vmObject => this;
@_fac9.override _fac9.Set<_e468.KeyboardKey> get keys { 
_36c2.Closure closure = table["getKeys"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_e468.KeyboardKey>, _e468.KeyboardKey>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadKeySet({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'keySet'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedKeySet(luaCallerArguments  [
1
], luaCallerArguments  [
2
], luaCallerArguments  [
3
], luaCallerArguments  [
4
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_1710.KeySet>(boxer: ({required _1710.KeySet vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedKeySet(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
