import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDragDownDetails extends _36c2.VMManagedBox<_4bc7.DragDownDetails> {VMManagedDragDownDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
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

final _4bc7.DragDownDetails vmObject;

 }

class RTManagedDragDownDetails extends _4bc7.DragDownDetails implements _36c2.Box<_4bc7.DragDownDetails> {RTManagedDragDownDetails({required _a643.Offset globalPosition, _a643.Offset? localPosition, required this.table, required this.hydroState}) : super(globalPosition: globalPosition,localPosition: localPosition) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
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

_4bc7.DragDownDetails unwrap() => this;
_4bc7.DragDownDetails get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDragDownDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'dragDownDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedDragDownDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, globalPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'globalPosition'
] : null, parentState: hydroState), localPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'localPosition'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4bc7.DragDownDetails>(boxer: ({required _4bc7.DragDownDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDragDownDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
