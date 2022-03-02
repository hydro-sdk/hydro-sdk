import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/arena.dart' as _be6e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureArenaManager extends _36c2.VMManagedBox<_be6e.GestureArenaManager> {VMManagedGestureArenaManager({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_be6e.GestureArenaEntry>(object: vmObject.add(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_be6e.GestureArenaMember, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'close'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.close(luaCallerArguments  [
1
]);
return []; } );
table  [
'sweep'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.sweep(luaCallerArguments  [
1
]);
return []; } );
table  [
'hold'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.hold(luaCallerArguments  [
1
]);
return []; } );
table  [
'release'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.release(luaCallerArguments  [
1
]);
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _be6e.GestureArenaManager vmObject;

 }

class RTManagedGestureArenaManager extends _be6e.GestureArenaManager implements _36c2.Box<_be6e.GestureArenaManager> {RTManagedGestureArenaManager({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.add(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_be6e.GestureArenaMember,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_close'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.close(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_sweep'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.sweep(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_hold'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.hold(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_release'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.release(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_be6e.GestureArenaManager unwrap() => this;
_be6e.GestureArenaManager get vmObject => this;
@_fac9.override _be6e.GestureArenaEntry add(pointer, member) { 
_36c2.Closure closure = table["add"];
return _36c2.maybeUnBoxAndBuildArgument<_be6e.GestureArenaEntry, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void close(pointer) { 
_36c2.Closure closure = table["close"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void sweep(pointer) { 
_36c2.Closure closure = table["sweep"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void hold(pointer) { 
_36c2.Closure closure = table["hold"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void release(pointer) { 
_36c2.Closure closure = table["release"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadGestureArenaManager({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'gestureArenaManager'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedGestureArenaManager(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_be6e.GestureArenaManager>(boxer: ({required _be6e.GestureArenaManager vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGestureArenaManager(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
