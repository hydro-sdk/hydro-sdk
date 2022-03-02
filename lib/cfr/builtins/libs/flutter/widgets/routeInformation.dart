import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/router.dart' as _f6ef;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteInformation extends _36c2.VMManagedBox<_f6ef.RouteInformation> {VMManagedRouteInformation({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'location'
] = vmObject.location;
table  [
'state'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.state, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f6ef.RouteInformation vmObject;

 }

class RTManagedRouteInformation extends _f6ef.RouteInformation implements _36c2.Box<_f6ef.RouteInformation> {RTManagedRouteInformation({_fac9.String? location, _fac9.Object? state, required this.table, required this.hydroState}) : super(location: location,state: state) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'location'
] = _36c2.maybeBoxObject(object: this.location, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'state'
] = _36c2.maybeBoxObject(object: this.state, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f6ef.RouteInformation unwrap() => this;
_f6ef.RouteInformation get vmObject => this;
 }
void loadRouteInformation({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'routeInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedRouteInformation(table: luaCallerArguments  [
0
], hydroState: hydroState, location: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'location'
] : null, state: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'state'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_f6ef.RouteInformation>(boxer: ({required _f6ef.RouteInformation vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRouteInformation(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
