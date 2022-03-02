import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteTransitionRecord extends _36c2.VMManagedBox<_a37d.RouteTransitionRecord> {VMManagedRouteTransitionRecord({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a37d.Route>(object: vmObject.route, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getIsWaitingForEnteringDecision'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isWaitingForEnteringDecision,]; } );
table  [
'getIsWaitingForExitingDecision'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isWaitingForExitingDecision,]; } );
table  [
'markForPush'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markForPush();
return []; } );
table  [
'markForAdd'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markForAdd();
return []; } );
table  [
'markForPop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markForPop(luaCallerArguments  [
1
]);
return []; } );
table  [
'markForComplete'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markForComplete(luaCallerArguments  [
1
]);
return []; } );
table  [
'markForRemove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markForRemove();
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _a37d.RouteTransitionRecord vmObject;

 }

void loadRouteTransitionRecord({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_a37d.RouteTransitionRecord>(boxer: ({required _a37d.RouteTransitionRecord vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRouteTransitionRecord(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
