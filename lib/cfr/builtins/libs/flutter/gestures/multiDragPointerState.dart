import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/arena.dart' as _be6e;
import 'package:flutter/src/gestures/drag.dart' as _d9fd;
import 'package:flutter/src/gestures/gesture_settings.dart' as _352d;
import 'package:flutter/src/gestures/multidrag.dart' as _d5f6;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMultiDragPointerState extends _36c2.VMManagedBox<_d5f6.MultiDragPointerState> {VMManagedMultiDragPointerState({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'gestureSettings'
] = _36c2.maybeBoxObject<_352d.DeviceGestureSettings?>(object: vmObject.gestureSettings, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.initialPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == vmObject.kind; } );
table  [
'getPendingDelta'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.pendingDelta;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Offset?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _d5f6.MultiDragPointerState vmObject;

 }

class RTManagedMultiDragPointerState extends _d5f6.MultiDragPointerState implements _36c2.Box<_d5f6.MultiDragPointerState> {RTManagedMultiDragPointerState(_a643.Offset initialPosition$, _a643.PointerDeviceKind kind$, _352d.DeviceGestureSettings? gestureSettings$, {required this.table, required this.hydroState}) : super(initialPosition$,kind$,gestureSettings$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'gestureSettings'
] = _36c2.maybeBoxObject(object: this.gestureSettings, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'initialPosition'
] = _36c2.maybeBoxObject(object: this.initialPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'kind'
] = _a643.PointerDeviceKind.values.indexWhere((x) { return x == this.kind; } );
table['_dart_getPendingDelta'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.pendingDelta];
});
table['_dart_resolve'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.resolve(_36c2.maybeUnBoxEnum(
      values: _be6e.GestureDisposition.values,
      boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_checkForResolutionAfterMove'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.checkForResolutionAfterMove();
  return [];
});
table['_dart_accepted'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedstarter = luaCallerArguments[1];
  accepted((position) =>
      _36c2.maybeUnBoxAndBuildArgument<_d9fd.Drag?, _fac9.dynamic>(
          ((
            final _fac9.List<_fac9.dynamic>? val,
          ) =>
              val != null && val.length >= 1 ? val[0] : null)(
            unpackedstarter.dispatch(
              [luaCallerArguments[0], position],
              parentState: hydroState,
            ),
          ),
          parentState: hydroState));
  return [];
});
table['_dart_rejected'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.rejected();
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_d5f6.MultiDragPointerState unwrap() => this;
_d5f6.MultiDragPointerState get vmObject => this;
@_fac9.override _a643.Offset? get pendingDelta { 
_36c2.Closure closure = table["getPendingDelta"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void resolve(disposition) { super.resolve(disposition);
_36c2.Closure closure = table["resolve"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void checkForResolutionAfterMove() { 
_36c2.Closure closure = table["checkForResolutionAfterMove"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void accepted(starter) { 
_36c2.Closure closure = table["accepted"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void rejected() { super.rejected();
_36c2.Closure closure = table["rejected"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadMultiDragPointerState({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'multiDragPointerState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedMultiDragPointerState(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxEnum(values: _a643.PointerDeviceKind.values, boxedEnum: luaCallerArguments  [
2
]), _36c2.maybeUnBoxAndBuildArgument<_352d.DeviceGestureSettings?, _fac9.dynamic>(luaCallerArguments  [
3
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_d5f6.MultiDragPointerState>(boxer: ({required _d5f6.MultiDragPointerState vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedMultiDragPointerState(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
