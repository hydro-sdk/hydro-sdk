import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKey extends _36c2.VMManagedBox<_ab4a.Key> {VMManagedKey({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {  }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ab4a.Key vmObject;

 }

void loadKey({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'key'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [_36c2.maybeBoxObject<_ab4a.Key>(object: _ab4a.Key(luaCallerArguments  [
1
]), hydroState: hydroState, table: luaCallerArguments  [
0
])]; } );
_36c2.registerBoxer<_ab4a.Key>(boxer: ({required _ab4a.Key vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedKey(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
