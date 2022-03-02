import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteSettings extends _36c2.VMManagedBox<_a37d.RouteSettings> {VMManagedRouteSettings({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'name'
] = vmObject.name;
table  [
'arguments'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.arguments, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a37d.RouteSettings>(object: vmObject.copyWith(arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'arguments'
] : null, parentState: hydroState), name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a37d.RouteSettings vmObject;

 }

class RTManagedRouteSettings extends _a37d.RouteSettings implements _36c2.Box<_a37d.RouteSettings> {RTManagedRouteSettings({_fac9.Object? arguments, _fac9.String? name, required this.table, required this.hydroState}) : super(arguments: arguments,name: name) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'name'
] = _36c2.maybeBoxObject(object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'arguments'
] = _36c2.maybeBoxObject(object: this.arguments, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['arguments']
                        : null,
                    parentState: hydroState),
            name:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['name']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_a37d.RouteSettings unwrap() => this;
_a37d.RouteSettings get vmObject => this;
@_fac9.override _a37d.RouteSettings copyWith({_fac9.Object? arguments, _fac9.String? name}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_a37d.RouteSettings, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadRouteSettings({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'routeSettings'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedRouteSettings(table: luaCallerArguments  [
0
], hydroState: hydroState, arguments: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'arguments'
] : null, parentState: hydroState), name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null)]; } );
_36c2.registerBoxer<_a37d.RouteSettings>(boxer: ({required _a37d.RouteSettings vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRouteSettings(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
