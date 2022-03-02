import 'dart:core' as _fac9;

import 'package:flutter/src/physics/spring_simulation.dart' as _5917;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSpringDescription extends _36c2.VMManagedBox<_5917.SpringDescription> {VMManagedSpringDescription({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'mass'
] = vmObject.mass;
table  [
'stiffness'
] = vmObject.stiffness;
table  [
'damping'
] = vmObject.damping;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _5917.SpringDescription vmObject;

 }

class RTManagedSpringDescription extends _5917.SpringDescription implements _36c2.Box<_5917.SpringDescription> {RTManagedSpringDescription({required _fac9.double damping, required _fac9.double mass, required _fac9.double stiffness, required this.table, required this.hydroState}) : super(damping: damping,mass: mass,stiffness: stiffness) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'mass'
] = _36c2.maybeBoxObject(object: this.mass, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'stiffness'
] = _36c2.maybeBoxObject(object: this.stiffness, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'damping'
] = _36c2.maybeBoxObject(object: this.damping, hydroState: hydroState, table: _36c2.HydroTable());
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

_5917.SpringDescription unwrap() => this;
_5917.SpringDescription get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadSpringDescription({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'springDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedSpringDescription(table: luaCallerArguments  [
0
], hydroState: hydroState, damping: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'damping'
] : null?.toDouble(), mass: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'mass'
] : null?.toDouble(), stiffness: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'stiffness'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_5917.SpringDescription>(boxer: ({required _5917.SpringDescription vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSpringDescription(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
