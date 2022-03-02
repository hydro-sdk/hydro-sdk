import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDragEndDetails extends _36c2.VMManagedBox<_4bc7.DragEndDetails> {VMManagedDragEndDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'velocity'
] = _36c2.maybeBoxObject<_10cb.Velocity>(object: vmObject.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryVelocity'
] = vmObject.primaryVelocity;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4bc7.DragEndDetails vmObject;

 }

class RTManagedDragEndDetails extends _4bc7.DragEndDetails implements _36c2.Box<_4bc7.DragEndDetails> {RTManagedDragEndDetails({_fac9.double? primaryVelocity, required _10cb.Velocity velocity, required this.table, required this.hydroState}) : super(primaryVelocity: primaryVelocity,velocity: velocity) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'velocity'
] = _36c2.maybeBoxObject(object: this.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryVelocity'
] = _36c2.maybeBoxObject(object: this.primaryVelocity, hydroState: hydroState, table: _36c2.HydroTable());
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

_4bc7.DragEndDetails unwrap() => this;
_4bc7.DragEndDetails get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDragEndDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'dragEndDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedDragEndDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, primaryVelocity: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryVelocity'
] : null?.toDouble(), velocity: _36c2.maybeUnBoxAndBuildArgument<_10cb.Velocity, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'velocity'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4bc7.DragEndDetails>(boxer: ({required _4bc7.DragEndDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDragEndDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
