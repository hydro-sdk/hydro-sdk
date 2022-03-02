import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/flow.dart' as _43b9;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFlowParentData extends _36c2.VMManagedBox<_43b9.FlowParentData> {VMManagedFlowParentData({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'previousSibling'
] = _36c2.maybeBoxObject<_be2e.RenderBox?>(object: vmObject.previousSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'nextSibling'
] = _36c2.maybeBoxObject<_be2e.RenderBox?>(object: vmObject.nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'detach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.detach();
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _43b9.FlowParentData vmObject;

 }

class RTManagedFlowParentData extends _43b9.FlowParentData implements _36c2.Box<_43b9.FlowParentData> {RTManagedFlowParentData({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'previousSibling'
] = _36c2.maybeBoxObject(object: previousSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'nextSibling'
] = _36c2.maybeBoxObject(object: nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'offset'
] = _36c2.maybeBoxObject(object: offset, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_detach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.detach();
  return [];
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

_43b9.FlowParentData unwrap() => this;
_43b9.FlowParentData get vmObject => this;
@_fac9.override void detach() { super.detach();
_36c2.Closure closure = table["detach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadFlowParentData({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'flowParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedFlowParentData(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_43b9.FlowParentData>(boxer: ({required _43b9.FlowParentData vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedFlowParentData(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
