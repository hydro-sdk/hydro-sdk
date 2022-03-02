import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;
import 'package:flutter/src/widgets/drag_target.dart' as _0705;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDraggableDetails extends _36c2.VMManagedBox<_0705.DraggableDetails> {VMManagedDraggableDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'wasAccepted'
] = vmObject.wasAccepted;
table  [
'velocity'
] = _36c2.maybeBoxObject<_10cb.Velocity>(object: vmObject.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _0705.DraggableDetails vmObject;

 }

class RTManagedDraggableDetails extends _0705.DraggableDetails implements _36c2.Box<_0705.DraggableDetails> {RTManagedDraggableDetails({required _fac9.bool wasAccepted, required _a643.Offset offset, required _10cb.Velocity velocity, required this.table, required this.hydroState}) : super(wasAccepted: wasAccepted,offset: offset,velocity: velocity) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'wasAccepted'
] = _36c2.maybeBoxObject(object: this.wasAccepted, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'velocity'
] = _36c2.maybeBoxObject(object: this.velocity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject(object: this.offset, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_0705.DraggableDetails unwrap() => this;
_0705.DraggableDetails get vmObject => this;
 }
void loadDraggableDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'draggableDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedDraggableDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, wasAccepted: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'wasAccepted'
] : null, offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null, parentState: hydroState), velocity: _36c2.maybeUnBoxAndBuildArgument<_10cb.Velocity, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'velocity'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_0705.DraggableDetails>(boxer: ({required _0705.DraggableDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDraggableDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
