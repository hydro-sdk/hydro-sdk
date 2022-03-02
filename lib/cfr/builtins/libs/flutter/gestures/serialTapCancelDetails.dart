import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/multitap.dart' as _2713;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSerialTapCancelDetails extends _36c2.VMManagedBox<_2713.SerialTapCancelDetails> {VMManagedSerialTapCancelDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'count'
] = vmObject.count; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2713.SerialTapCancelDetails vmObject;

 }

class RTManagedSerialTapCancelDetails extends _2713.SerialTapCancelDetails implements _36c2.Box<_2713.SerialTapCancelDetails> {RTManagedSerialTapCancelDetails({required _fac9.int count, required this.table, required this.hydroState}) : super(count: count) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'count'
] = _36c2.maybeBoxObject(object: this.count, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_2713.SerialTapCancelDetails unwrap() => this;
_2713.SerialTapCancelDetails get vmObject => this;
 }
void loadSerialTapCancelDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'serialTapCancelDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedSerialTapCancelDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, count: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'count'
] : null)]; } );
_36c2.registerBoxer<_2713.SerialTapCancelDetails>(boxer: ({required _2713.SerialTapCancelDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSerialTapCancelDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
