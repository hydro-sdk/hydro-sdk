import 'dart:core' as _fac9;

import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/tolerance.dart' as _192a;
import 'package:flutter/src/widgets/scroll_simulation.dart' as _567b;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedClampingScrollSimulation extends _36c2.VMManagedBox<_567b.ClampingScrollSimulation> {VMManagedClampingScrollSimulation({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'position'
] = vmObject.position;
table  [
'velocity'
] = vmObject.velocity;
table  [
'friction'
] = vmObject.friction;
table  [
'tolerance'
] = _36c2.maybeBoxObject<_192a.Tolerance>(object: vmObject.tolerance, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'x'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.x(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'dx'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.dx(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'isDone'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isDone(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _567b.ClampingScrollSimulation vmObject;

 }

class RTManagedClampingScrollSimulation extends _567b.ClampingScrollSimulation implements _36c2.Box<_567b.ClampingScrollSimulation> {RTManagedClampingScrollSimulation({required _fac9.double friction, required _192a.Tolerance tolerance, required _fac9.double position, required _fac9.double velocity, required this.table, required this.hydroState}) : super(friction: friction,tolerance: tolerance,position: position,velocity: velocity) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'position'
] = _36c2.maybeBoxObject(object: this.position, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'velocity'
] = _36c2.maybeBoxObject(object: this.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'friction'
] = _36c2.maybeBoxObject(object: this.friction, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'tolerance'
] = _36c2.maybeBoxObject(object: this.tolerance, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_x'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.x(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_dx'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.dx(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_isDone'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isDone(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
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
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_567b.ClampingScrollSimulation unwrap() => this;
_567b.ClampingScrollSimulation get vmObject => this;
@_fac9.override _fac9.double x(time) { 
_36c2.Closure closure = table["x"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double dx(time) { 
_36c2.Closure closure = table["dx"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.bool isDone(time) { 
_36c2.Closure closure = table["isDone"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadClampingScrollSimulation({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'clampingScrollSimulation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedClampingScrollSimulation(table: luaCallerArguments  [
0
], hydroState: hydroState, friction: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'friction'
] : null?.toDouble(), tolerance: _36c2.maybeUnBoxAndBuildArgument<_192a.Tolerance, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'tolerance'
] : null, parentState: hydroState), position: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'position'
] : null?.toDouble(), velocity: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'velocity'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_567b.ClampingScrollSimulation>(boxer: ({required _567b.ClampingScrollSimulation vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedClampingScrollSimulation(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
