import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedVelocity extends _36c2.VMManagedBox<_10cb.Velocity> {VMManagedVelocity({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'pixelsPerSecond'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.pixelsPerSecond, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'clampMagnitude'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_10cb.Velocity>(object: vmObject.clampMagnitude(luaCallerArguments  [
1
]?.toDouble(), luaCallerArguments  [
2
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _10cb.Velocity vmObject;

 }

class RTManagedVelocity extends _10cb.Velocity implements _36c2.Box<_10cb.Velocity> {RTManagedVelocity({required _a643.Offset pixelsPerSecond, required this.table, required this.hydroState}) : super(pixelsPerSecond: pixelsPerSecond) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'pixelsPerSecond'
] = _36c2.maybeBoxObject(object: this.pixelsPerSecond, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_clampMagnitude'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.clampMagnitude(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
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

_10cb.Velocity unwrap() => this;
_10cb.Velocity get vmObject => this;
@_fac9.override _10cb.Velocity clampMagnitude(minValue, maxValue) { 
_36c2.Closure closure = table["clampMagnitude"];
return _36c2.maybeUnBoxAndBuildArgument<_10cb.Velocity, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadVelocity({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'velocity'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedVelocity(table: luaCallerArguments  [
0
], hydroState: hydroState, pixelsPerSecond: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pixelsPerSecond'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_10cb.Velocity>(boxer: ({required _10cb.Velocity vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedVelocity(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
