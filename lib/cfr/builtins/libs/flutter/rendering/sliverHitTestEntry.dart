import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/sliver.dart' as _021d;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverHitTestEntry extends _36c2.VMManagedBox<_021d.SliverHitTestEntry> {VMManagedSliverHitTestEntry({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'mainAxisPosition'
] = vmObject.mainAxisPosition;
table  [
'crossAxisPosition'
] = vmObject.crossAxisPosition;
table  [
'target'
] = _36c2.maybeBoxObject<_baac.HitTestTarget>(object: vmObject.target, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getTarget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_021d.RenderSliver>(object: vmObject.target, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getTransform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.transform;if(returnValue!= null){return [_36c2.maybeBoxObject<_db98.Matrix4?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _021d.SliverHitTestEntry vmObject;

 }

class RTManagedSliverHitTestEntry extends _021d.SliverHitTestEntry implements _36c2.Box<_021d.SliverHitTestEntry> {RTManagedSliverHitTestEntry(_021d.RenderSliver target$, {required _fac9.double crossAxisPosition, required _fac9.double mainAxisPosition, required this.table, required this.hydroState}) : super(target$,crossAxisPosition: crossAxisPosition,mainAxisPosition: mainAxisPosition) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'mainAxisPosition'
] = _36c2.maybeBoxObject(object: this.mainAxisPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'crossAxisPosition'
] = _36c2.maybeBoxObject(object: this.crossAxisPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'target'
] = _36c2.maybeBoxObject(object: this.target, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getTarget'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.target];
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
table['_dart_getTransform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.transform];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_021d.SliverHitTestEntry unwrap() => this;
_021d.SliverHitTestEntry get vmObject => this;
@_fac9.override _021d.RenderSliver get target { 
_36c2.Closure closure = table["getTarget"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _db98.Matrix4? get transform { 
_36c2.Closure closure = table["getTransform"];
return _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadSliverHitTestEntry({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'sliverHitTestEntry'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedSliverHitTestEntry(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState, crossAxisPosition: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'crossAxisPosition'
] : null?.toDouble(), mainAxisPosition: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'mainAxisPosition'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_021d.SliverHitTestEntry>(boxer: ({required _021d.SliverHitTestEntry vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSliverHitTestEntry(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
