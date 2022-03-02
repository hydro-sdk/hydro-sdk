import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/licenses.dart' as _7782;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLicenseEntry extends _36c2.VMManagedBox<_7782.LicenseEntry> {VMManagedLicenseEntry({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getPackages'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Iterable>(object: vmObject.packages, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getParagraphs'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Iterable>(object: vmObject.paragraphs, hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7782.LicenseEntry vmObject;

 }

void loadLicenseEntry({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_7782.LicenseEntry>(boxer: ({required _7782.LicenseEntry vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedLicenseEntry(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
