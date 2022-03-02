import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/bitfield.dart' as _8f39;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBitField extends _36c2.VMManagedBox<_8f39.BitField<_fac9.dynamic>> {VMManagedBitField({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'reset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.reset(luaCallerArguments  [
1
]);
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8f39.BitField<_fac9.dynamic> vmObject;

 }

void loadBitField({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'bitField'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [_36c2.maybeBoxObject<_8f39.BitField>(object: _8f39.BitField(luaCallerArguments  [
1
]), hydroState: hydroState, table: luaCallerArguments  [
0
])]; } );
table  [
'bitFieldFilled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_8f39.BitField>(object: _8f39.BitField.filled(luaCallerArguments  [
1
], luaCallerArguments  [
2
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_8f39.BitField>(boxer: ({required _8f39.BitField vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBitField(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
