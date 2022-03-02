import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDragUpdateDetails extends _36c2.VMManagedBox<_4bc7.DragUpdateDetails> {VMManagedDragUpdateDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'sourceTimeStamp'
] = _36c2.maybeBoxObject<_fac9.Duration?>(object: vmObject.sourceTimeStamp, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'delta'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.delta, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryDelta'
] = vmObject.primaryDelta;
table  [
'globalPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.globalPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4bc7.DragUpdateDetails vmObject;

 }

class RTManagedDragUpdateDetails extends _4bc7.DragUpdateDetails implements _36c2.Box<_4bc7.DragUpdateDetails> {RTManagedDragUpdateDetails({required _a643.Offset delta, _a643.Offset? localPosition, _fac9.double? primaryDelta, _fac9.Duration? sourceTimeStamp, required _a643.Offset globalPosition, required this.table, required this.hydroState}) : super(delta: delta,localPosition: localPosition,primaryDelta: primaryDelta,sourceTimeStamp: sourceTimeStamp,globalPosition: globalPosition) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'sourceTimeStamp'
] = _36c2.maybeBoxObject(object: this.sourceTimeStamp, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'delta'
] = _36c2.maybeBoxObject(object: this.delta, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryDelta'
] = _36c2.maybeBoxObject(object: this.primaryDelta, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'globalPosition'
] = _36c2.maybeBoxObject(object: this.globalPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localPosition'
] = _36c2.maybeBoxObject(object: this.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
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

_4bc7.DragUpdateDetails unwrap() => this;
_4bc7.DragUpdateDetails get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDragUpdateDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'dragUpdateDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return  [RTManagedDragUpdateDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, delta: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'delta'
] : null, parentState: hydroState), localPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'localPosition'
] : null, parentState: hydroState), primaryDelta: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryDelta'
] : null?.toDouble(), sourceTimeStamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'sourceTimeStamp'
] : null, parentState: hydroState), globalPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'globalPosition'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4bc7.DragUpdateDetails>(boxer: ({required _4bc7.DragUpdateDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDragUpdateDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
