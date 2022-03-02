import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBoxHitTestEntry extends _36c2.VMManagedBox<_be2e.BoxHitTestEntry> {VMManagedBoxHitTestEntry({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'localPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'target'
] = _36c2.maybeBoxObject<_baac.HitTestTarget>(object: vmObject.target, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getTarget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.RenderBox>(object: vmObject.target, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _be2e.BoxHitTestEntry vmObject;

 }

class RTManagedBoxHitTestEntry extends _be2e.BoxHitTestEntry implements _36c2.Box<_be2e.BoxHitTestEntry> {RTManagedBoxHitTestEntry(_be2e.RenderBox target$, _a643.Offset localPosition$, {required this.table, required this.hydroState}) : super(target$,localPosition$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'localPosition'
] = _36c2.maybeBoxObject(object: this.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
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

_be2e.BoxHitTestEntry unwrap() => this;
_be2e.BoxHitTestEntry get vmObject => this;
@_fac9.override _be2e.RenderBox get target { 
_36c2.Closure closure = table["getTarget"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadBoxHitTestEntry({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'boxHitTestEntry'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedBoxHitTestEntry(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_be2e.BoxHitTestEntry>(boxer: ({required _be2e.BoxHitTestEntry vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBoxHitTestEntry(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
