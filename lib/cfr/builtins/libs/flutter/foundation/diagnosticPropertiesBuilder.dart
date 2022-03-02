import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDiagnosticPropertiesBuilder extends _36c2.VMManagedBox<_eaf3.DiagnosticPropertiesBuilder> {VMManagedDiagnosticPropertiesBuilder({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'properties'
] = _36c2.maybeBoxObject<_fac9.List<_eaf3.DiagnosticsNode>>(object: vmObject.properties, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'defaultDiagnosticsTreeStyle'
] = _eaf3.DiagnosticsTreeStyle.values.indexWhere((x) { return x == vmObject.defaultDiagnosticsTreeStyle; } );
table  [
'emptyBodyDescription'
] = vmObject.emptyBodyDescription;
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _eaf3.DiagnosticPropertiesBuilder vmObject;

 }

class RTManagedDiagnosticPropertiesBuilder extends _eaf3.DiagnosticPropertiesBuilder implements _36c2.Box<_eaf3.DiagnosticPropertiesBuilder> {RTManagedDiagnosticPropertiesBuilder({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'properties'
] = _36c2.maybeBoxObject(object: properties, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'defaultDiagnosticsTreeStyle'
] = _eaf3.DiagnosticsTreeStyle.values.indexWhere((x) { return x == defaultDiagnosticsTreeStyle; } );
table  [
'emptyBodyDescription'
] = _36c2.maybeBoxObject(object: emptyBodyDescription, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.add(
      _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_eaf3.DiagnosticPropertiesBuilder unwrap() => this;
_eaf3.DiagnosticPropertiesBuilder get vmObject => this;
@_fac9.override void add(property) { 
_36c2.Closure closure = table["add"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDiagnosticPropertiesBuilder({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'diagnosticPropertiesBuilder'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedDiagnosticPropertiesBuilder(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_eaf3.DiagnosticPropertiesBuilder>(boxer: ({required _eaf3.DiagnosticPropertiesBuilder vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDiagnosticPropertiesBuilder(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
