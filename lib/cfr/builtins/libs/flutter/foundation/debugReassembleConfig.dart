import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/binding.dart' as _8f1c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDebugReassembleConfig extends _36c2.VMManagedBox<_8f1c.DebugReassembleConfig> {VMManagedDebugReassembleConfig({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'widgetName'
] = vmObject.widgetName; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8f1c.DebugReassembleConfig vmObject;

 }

class RTManagedDebugReassembleConfig extends _8f1c.DebugReassembleConfig implements _36c2.Box<_8f1c.DebugReassembleConfig> {RTManagedDebugReassembleConfig({_fac9.String? widgetName, required this.table, required this.hydroState}) : super(widgetName: widgetName) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'widgetName'
] = _36c2.maybeBoxObject(object: this.widgetName, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8f1c.DebugReassembleConfig unwrap() => this;
_8f1c.DebugReassembleConfig get vmObject => this;
 }
void loadDebugReassembleConfig({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'debugReassembleConfig'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedDebugReassembleConfig(table: luaCallerArguments  [
0
], hydroState: hydroState, widgetName: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'widgetName'
] : null)]; } );
_36c2.registerBoxer<_8f1c.DebugReassembleConfig>(boxer: ({required _8f1c.DebugReassembleConfig vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDebugReassembleConfig(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
