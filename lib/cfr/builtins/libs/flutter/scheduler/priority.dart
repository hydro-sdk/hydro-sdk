import 'dart:core' as _fac9;

import 'package:flutter/src/scheduler/priority.dart' as _49c2;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPriority extends _36c2.VMManagedBox<_49c2.Priority> {VMManagedPriority({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.value,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _49c2.Priority vmObject;

 }

void loadPriority({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'priorityIdle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_49c2.Priority>(object: _49c2.Priority.idle, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'priorityAnimation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_49c2.Priority>(object: _49c2.Priority.animation, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'priorityTouch'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_49c2.Priority>(object: _49c2.Priority.touch, hydroState: hydroState, table: _36c2.HydroTable())]; } );
_36c2.registerBoxer<_49c2.Priority>(boxer: ({required _49c2.Priority vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPriority(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
