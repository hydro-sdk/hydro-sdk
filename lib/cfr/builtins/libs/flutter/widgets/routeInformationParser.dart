import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/router.dart' as _f6ef;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteInformationParser extends _36c2.VMManagedBox<_f6ef.RouteInformationParser<_fac9.dynamic>> {VMManagedRouteInformationParser({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'parseRouteInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.parseRouteInformation(_36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'restoreRouteInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.restoreRouteInformation(luaCallerArguments  [
1
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_f6ef.RouteInformation?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f6ef.RouteInformationParser<_fac9.dynamic> vmObject;

 }

class RTManagedRouteInformationParser extends _f6ef.RouteInformationParser implements _36c2.Box<_f6ef.RouteInformationParser> {RTManagedRouteInformationParser({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_parseRouteInformation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: parseRouteInformation(_36c2.maybeUnBoxAndBuildArgument<
            _f6ef.RouteInformation,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_restoreRouteInformation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.restoreRouteInformation(luaCallerArguments[1]),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f6ef.RouteInformationParser unwrap() => this;
_f6ef.RouteInformationParser get vmObject => this;
@_fac9.override _7de1.Future<_fac9.dynamic> parseRouteInformation(routeInformation) { 
_36c2.Closure closure = table["parseRouteInformation"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _f6ef.RouteInformation? restoreRouteInformation(configuration) { 
_36c2.Closure closure = table["restoreRouteInformation"];
return _36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadRouteInformationParser({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'routeInformationParser'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedRouteInformationParser(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_f6ef.RouteInformationParser>(boxer: ({required _f6ef.RouteInformationParser vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRouteInformationParser(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
