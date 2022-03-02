import 'dart:core' as _fac9;

import 'package:flutter/src/services/system_chrome.dart' as _8d60;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedApplicationSwitcherDescription extends _36c2.VMManagedBox<_8d60.ApplicationSwitcherDescription> {VMManagedApplicationSwitcherDescription({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'label'
] = vmObject.label;
table  [
'primaryColor'
] = vmObject.primaryColor; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8d60.ApplicationSwitcherDescription vmObject;

 }

class RTManagedApplicationSwitcherDescription extends _8d60.ApplicationSwitcherDescription implements _36c2.Box<_8d60.ApplicationSwitcherDescription> {RTManagedApplicationSwitcherDescription({_fac9.String? label, _fac9.int? primaryColor, required this.table, required this.hydroState}) : super(label: label,primaryColor: primaryColor) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'label'
] = _36c2.maybeBoxObject(object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryColor'
] = _36c2.maybeBoxObject(object: this.primaryColor, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8d60.ApplicationSwitcherDescription unwrap() => this;
_8d60.ApplicationSwitcherDescription get vmObject => this;
 }
void loadApplicationSwitcherDescription({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'applicationSwitcherDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedApplicationSwitcherDescription(table: luaCallerArguments  [
0
], hydroState: hydroState, label: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'label'
] : null, primaryColor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryColor'
] : null)]; } );
_36c2.registerBoxer<_8d60.ApplicationSwitcherDescription>(boxer: ({required _8d60.ApplicationSwitcherDescription vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedApplicationSwitcherDescription(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
