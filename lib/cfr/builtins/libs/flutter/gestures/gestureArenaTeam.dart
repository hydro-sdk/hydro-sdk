import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/arena.dart' as _be6e;
import 'package:flutter/src/gestures/team.dart' as _c0ad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGestureArenaTeam extends _36c2.VMManagedBox<_c0ad.GestureArenaTeam> {VMManagedGestureArenaTeam({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'captain'
] = _36c2.maybeBoxObject<_be6e.GestureArenaMember?>(object: vmObject.captain, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_be6e.GestureArenaEntry>(object: vmObject.add(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_be6e.GestureArenaMember, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _c0ad.GestureArenaTeam vmObject;

 }

class RTManagedGestureArenaTeam extends _c0ad.GestureArenaTeam implements _36c2.Box<_c0ad.GestureArenaTeam> {RTManagedGestureArenaTeam({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'captain'
] = _36c2.maybeBoxObject(object: captain, hydroState: hydroState, table: _36c2.HydroTable());
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_c0ad.GestureArenaTeam unwrap() => this;
_c0ad.GestureArenaTeam get vmObject => this;
@_fac9.override _be6e.GestureArenaEntry add(pointer, member) { 
_36c2.Closure closure = table["add"];
return _36c2.maybeUnBoxAndBuildArgument<_be6e.GestureArenaEntry, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadGestureArenaTeam({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'gestureArenaTeam'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedGestureArenaTeam(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_c0ad.GestureArenaTeam>(boxer: ({required _c0ad.GestureArenaTeam vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGestureArenaTeam(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
