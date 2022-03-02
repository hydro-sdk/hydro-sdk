import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedIOSScrollViewFlingVelocityTracker extends _36c2.VMManagedBox<_10cb.IOSScrollViewFlingVelocityTracker> {VMManagedIOSScrollViewFlingVelocityTracker({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == vmObject.kind; } );
table  [
'addPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.addPosition(_36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'getVelocityEstimate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_10cb.VelocityEstimate>(object: vmObject.getVelocityEstimate(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getVelocity'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_10cb.Velocity>(object: vmObject.getVelocity(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _10cb.IOSScrollViewFlingVelocityTracker vmObject;

 }

class RTManagedIOSScrollViewFlingVelocityTracker extends _10cb.IOSScrollViewFlingVelocityTracker implements _36c2.Box<_10cb.IOSScrollViewFlingVelocityTracker> {RTManagedIOSScrollViewFlingVelocityTracker(_a643.PointerDeviceKind kind$, {required this.table, required this.hydroState}) : super(kind$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == this.kind; } );
table['_dart_addPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addPosition(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_getVelocityEstimate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getVelocityEstimate(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getVelocity'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getVelocity(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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

_10cb.IOSScrollViewFlingVelocityTracker unwrap() => this;
_10cb.IOSScrollViewFlingVelocityTracker get vmObject => this;
@_fac9.override void addPosition(time, position) { 
_36c2.Closure closure = table["addPosition"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _10cb.VelocityEstimate getVelocityEstimate() { 
_36c2.Closure closure = table["getVelocityEstimate"];
return _36c2.maybeUnBoxAndBuildArgument<_10cb.VelocityEstimate, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _10cb.Velocity getVelocity() { 
_36c2.Closure closure = table["getVelocity"];
return _36c2.maybeUnBoxAndBuildArgument<_10cb.Velocity, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadIOSScrollViewFlingVelocityTracker({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'iOSScrollViewFlingVelocityTracker'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedIOSScrollViewFlingVelocityTracker(_36c2.maybeUnBoxEnum(values: _a643.PointerDeviceKind.values, boxedEnum: luaCallerArguments  [
1
]), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_10cb.IOSScrollViewFlingVelocityTracker>(boxer: ({required _10cb.IOSScrollViewFlingVelocityTracker vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedIOSScrollViewFlingVelocityTracker(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
