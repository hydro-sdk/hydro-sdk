import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/layer.dart' as _7d70;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLayerLink extends _36c2.VMManagedBox<_7d70.LayerLink> {VMManagedLayerLink({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'leaderSize'
] = _36c2.maybeBoxObject<_a643.Size?>(object: vmObject.leaderSize, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getLeaderConnected'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.leaderConnected,]; } );
table  [
'getDebugLeader'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.debugLeader;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.LeaderLayer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7d70.LayerLink vmObject;

 }

class RTManagedLayerLink extends _7d70.LayerLink implements _36c2.Box<_7d70.LayerLink> {RTManagedLayerLink({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'leaderSize'
] = _36c2.maybeBoxObject(object: leaderSize, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getLeaderConnected'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.leaderConnected];
});
table['_dart_getDebugLeader'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugLeader];
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

_7d70.LayerLink unwrap() => this;
_7d70.LayerLink get vmObject => this;
@_fac9.override _fac9.bool get leaderConnected { 
_36c2.Closure closure = table["getLeaderConnected"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.LeaderLayer? get debugLeader { 
_36c2.Closure closure = table["getDebugLeader"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.LeaderLayer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadLayerLink({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'layerLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedLayerLink(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_7d70.LayerLink>(boxer: ({required _7d70.LayerLink vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedLayerLink(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
