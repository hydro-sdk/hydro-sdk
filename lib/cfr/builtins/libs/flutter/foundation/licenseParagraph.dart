import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/licenses.dart' as _7782;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLicenseParagraph extends _36c2.VMManagedBox<_7782.LicenseParagraph> {VMManagedLicenseParagraph({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'text'
] = vmObject.text;
table  [
'indent'
] = vmObject.indent; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7782.LicenseParagraph vmObject;

 }

class RTManagedLicenseParagraph extends _7782.LicenseParagraph implements _36c2.Box<_7782.LicenseParagraph> {RTManagedLicenseParagraph(_fac9.String text$, _fac9.int indent$, {required this.table, required this.hydroState}) : super(text$,indent$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'text'
] = _36c2.maybeBoxObject(object: this.text, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'indent'
] = _36c2.maybeBoxObject(object: this.indent, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_7782.LicenseParagraph unwrap() => this;
_7782.LicenseParagraph get vmObject => this;
 }
void loadLicenseParagraph({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'licenseParagraph'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedLicenseParagraph(luaCallerArguments  [
1
], luaCallerArguments  [
2
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_7782.LicenseParagraph>(boxer: ({required _7782.LicenseParagraph vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedLicenseParagraph(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
