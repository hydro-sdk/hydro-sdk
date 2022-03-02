import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDragStartDetails extends _36c2.VMManagedBox<_4bc7.DragStartDetails> {VMManagedDragStartDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'sourceTimeStamp'
] = _36c2.maybeBoxObject<_fac9.Duration?>(object: vmObject.sourceTimeStamp, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'globalPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.globalPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == vmObject.kind; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4bc7.DragStartDetails vmObject;

 }

class RTManagedDragStartDetails extends _4bc7.DragStartDetails implements _36c2.Box<_4bc7.DragStartDetails> {RTManagedDragStartDetails({required _a643.Offset globalPosition, _a643.PointerDeviceKind? kind, _a643.Offset? localPosition, _fac9.Duration? sourceTimeStamp, required this.table, required this.hydroState}) : super(globalPosition: globalPosition,kind: kind,localPosition: localPosition,sourceTimeStamp: sourceTimeStamp) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'sourceTimeStamp'
] = _36c2.maybeBoxObject(object: this.sourceTimeStamp, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'globalPosition'
] = _36c2.maybeBoxObject(object: this.globalPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localPosition'
] = _36c2.maybeBoxObject(object: this.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == this.kind; } );
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

_4bc7.DragStartDetails unwrap() => this;
_4bc7.DragStartDetails get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadDragStartDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'dragStartDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedDragStartDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, globalPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'globalPosition'
] : null, parentState: hydroState), kind: _36c2.maybeUnBoxEnum(values: _a643.PointerDeviceKind.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'kind'
] : null), localPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'localPosition'
] : null, parentState: hydroState), sourceTimeStamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'sourceTimeStamp'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4bc7.DragStartDetails>(boxer: ({required _4bc7.DragStartDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDragStartDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
