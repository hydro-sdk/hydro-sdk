import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHitTestResult extends _36c2.VMManagedBox<_baac.HitTestResult> {VMManagedHitTestResult({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getPath'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Iterable>(object: vmObject.path, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _baac.HitTestResult vmObject;

 }

class RTManagedHitTestResult extends _baac.HitTestResult implements _36c2.Box<_baac.HitTestResult> {RTManagedHitTestResult({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getPath'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.path];
});
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.add(_36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_pushTransform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.pushTransform(
      _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_pushOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.pushOffset(
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_popTransform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.popTransform();
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_baac.HitTestResult unwrap() => this;
_baac.HitTestResult get vmObject => this;
@_fac9.override _fac9.Iterable<_baac.HitTestEntry> get path { 
_36c2.Closure closure = table["getPath"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_baac.HitTestEntry>, _baac.HitTestEntry>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void add(entry) { 
_36c2.Closure closure = table["add"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void pushTransform(transform) { 
_36c2.Closure closure = table["pushTransform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void pushOffset(offset) { 
_36c2.Closure closure = table["pushOffset"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void popTransform() { 
_36c2.Closure closure = table["popTransform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadHitTestResult({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'hitTestResult'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedHitTestResult(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_baac.HitTestResult>(boxer: ({required _baac.HitTestResult vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedHitTestResult(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
