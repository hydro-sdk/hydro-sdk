import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGlobalObjectKey extends _36c2.VMManagedBox<_e2dc.GlobalObjectKey<_e2dc.State<_e2dc.StatefulWidget>>> {VMManagedGlobalObjectKey({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'value'
] = _36c2.maybeBoxObject<_fac9.Object>(object: vmObject.value, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getCurrentContext'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.currentContext;if(returnValue!= null){return [_36c2.maybeBoxObject<_e2dc.BuildContext?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getCurrentWidget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.currentWidget;if(returnValue!= null){return [_36c2.maybeBoxObject<_e2dc.Widget?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getCurrentState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.currentState;if(returnValue!= null){return [returnValue,];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e2dc.GlobalObjectKey<_e2dc.State<_e2dc.StatefulWidget>> vmObject;

 }

class RTManagedGlobalObjectKey extends _e2dc.GlobalObjectKey implements _36c2.Box<_e2dc.GlobalObjectKey> {RTManagedGlobalObjectKey(_fac9.Object value$, {required this.table, required this.hydroState}) : super(value$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'value'
] = _36c2.maybeBoxObject(object: this.value, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
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
table['_dart_getCurrentContext'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.currentContext];
});
table['_dart_getCurrentWidget'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.currentWidget];
});
table['_dart_getCurrentState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.currentState];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e2dc.GlobalObjectKey unwrap() => this;
_e2dc.GlobalObjectKey get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.BuildContext? get currentContext { 
_36c2.Closure closure = table["getCurrentContext"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.Widget? get currentWidget { 
_36c2.Closure closure = table["getCurrentWidget"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.State<_e2dc.StatefulWidget>? get currentState { 
_36c2.Closure closure = table["getCurrentState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_e2dc.StatefulWidget>?, _e2dc.StatefulWidget>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadGlobalObjectKey({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'globalObjectKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedGlobalObjectKey(_36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_e2dc.GlobalObjectKey>(boxer: ({required _e2dc.GlobalObjectKey vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedGlobalObjectKey(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
