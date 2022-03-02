import 'dart:core' as _fac9;

import 'package:flutter/src/services/clipboard.dart' as _2668;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedClipboardData extends _36c2.VMManagedBox<_2668.ClipboardData> {VMManagedClipboardData({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'text'
] = vmObject.text; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2668.ClipboardData vmObject;

 }

class RTManagedClipboardData extends _2668.ClipboardData implements _36c2.Box<_2668.ClipboardData> {RTManagedClipboardData({_fac9.String? text, required this.table, required this.hydroState}) : super(text: text) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'text'
] = _36c2.maybeBoxObject(object: this.text, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_2668.ClipboardData unwrap() => this;
_2668.ClipboardData get vmObject => this;
 }
void loadClipboardData({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'clipboardData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedClipboardData(table: luaCallerArguments  [
0
], hydroState: hydroState, text: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'text'
] : null)]; } );
_36c2.registerBoxer<_2668.ClipboardData>(boxer: ({required _2668.ClipboardData vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedClipboardData(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
