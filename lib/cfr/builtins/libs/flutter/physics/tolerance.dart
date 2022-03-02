import 'dart:core' as _fac9;

import 'package:flutter/src/physics/tolerance.dart' as _192a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTolerance extends _36c2.VMManagedBox<_192a.Tolerance> {VMManagedTolerance({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'distance'
] = vmObject.distance;
table  [
'time'
] = vmObject.time;
table  [
'velocity'
] = vmObject.velocity;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _192a.Tolerance vmObject;

 }

class RTManagedTolerance extends _192a.Tolerance implements _36c2.Box<_192a.Tolerance> {RTManagedTolerance({required _fac9.double distance, required _fac9.double time, required _fac9.double velocity, required this.table, required this.hydroState}) : super(distance: distance,time: time,velocity: velocity) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'distance'
] = _36c2.maybeBoxObject(object: this.distance, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'time'
] = _36c2.maybeBoxObject(object: this.time, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'velocity'
] = _36c2.maybeBoxObject(object: this.velocity, hydroState: hydroState, table: _36c2.HydroTable());
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

_192a.Tolerance unwrap() => this;
_192a.Tolerance get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTolerance({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'tolerance'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedTolerance(table: luaCallerArguments  [
0
], hydroState: hydroState, distance: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'distance'
] : null?.toDouble(), time: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'time'
] : null?.toDouble(), velocity: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'velocity'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_192a.Tolerance>(boxer: ({required _192a.Tolerance vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTolerance(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
