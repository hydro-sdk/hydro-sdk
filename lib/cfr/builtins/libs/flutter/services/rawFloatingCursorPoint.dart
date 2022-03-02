import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawFloatingCursorPoint extends _36c2.VMManagedBox<_8577.RawFloatingCursorPoint> {VMManagedRawFloatingCursorPoint({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'offset'
] = _36c2.maybeBoxObject<_a643.Offset?>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'state'
] = _8577.FloatingCursorDragState.values.indexWhere((x) { return x == vmObject.state; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8577.RawFloatingCursorPoint vmObject;

 }

class RTManagedRawFloatingCursorPoint extends _8577.RawFloatingCursorPoint implements _36c2.Box<_8577.RawFloatingCursorPoint> {RTManagedRawFloatingCursorPoint({_a643.Offset? offset, required _8577.FloatingCursorDragState state, required this.table, required this.hydroState}) : super(offset: offset,state: state) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'offset'
] = _36c2.maybeBoxObject(object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'state'
] = _8577.FloatingCursorDragState.values.indexWhere((x) { return x == this.state; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_8577.RawFloatingCursorPoint unwrap() => this;
_8577.RawFloatingCursorPoint get vmObject => this;
 }
void loadRawFloatingCursorPoint({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'rawFloatingCursorPoint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedRawFloatingCursorPoint(table: luaCallerArguments  [
0
], hydroState: hydroState, offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null, parentState: hydroState), state: _36c2.maybeUnBoxEnum(values: _8577.FloatingCursorDragState.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'state'
] : null))]; } );
_36c2.registerBoxer<_8577.RawFloatingCursorPoint>(boxer: ({required _8577.RawFloatingCursorPoint vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRawFloatingCursorPoint(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
