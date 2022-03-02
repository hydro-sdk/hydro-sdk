import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/scale.dart' as _bb2d;
import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaleEndDetails extends _36c2.VMManagedBox<_bb2d.ScaleEndDetails> {VMManagedScaleEndDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'velocity'
] = _36c2.maybeBoxObject<_10cb.Velocity>(object: vmObject.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'pointerCount'
] = vmObject.pointerCount;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _bb2d.ScaleEndDetails vmObject;

 }

class RTManagedScaleEndDetails extends _bb2d.ScaleEndDetails implements _36c2.Box<_bb2d.ScaleEndDetails> {RTManagedScaleEndDetails({required _fac9.int pointerCount, required _10cb.Velocity velocity, required this.table, required this.hydroState}) : super(pointerCount: pointerCount,velocity: velocity) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'velocity'
] = _36c2.maybeBoxObject(object: this.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'pointerCount'
] = _36c2.maybeBoxObject(object: this.pointerCount, hydroState: hydroState, table: _36c2.HydroTable());
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

_bb2d.ScaleEndDetails unwrap() => this;
_bb2d.ScaleEndDetails get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadScaleEndDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scaleEndDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedScaleEndDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, pointerCount: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pointerCount'
] : null, velocity: _36c2.maybeUnBoxAndBuildArgument<_10cb.Velocity, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'velocity'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_bb2d.ScaleEndDetails>(boxer: ({required _bb2d.ScaleEndDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScaleEndDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
