import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/router.dart' as _f6ef;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBackButtonDispatcher extends _36c2.VMManagedBox<_f6ef.BackButtonDispatcher> {VMManagedBackButtonDispatcher({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getHasCallbacks'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasCallbacks,]; } );
table  [
'invokeCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.invokeCallback(_36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'createChildBackButtonDispatcher'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_f6ef.ChildBackButtonDispatcher>(object: vmObject.createChildBackButtonDispatcher(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'takePriority'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.takePriority();
return []; } );
table  [
'deferTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.deferTo(_36c2.maybeUnBoxAndBuildArgument<_f6ef.ChildBackButtonDispatcher, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'forget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.forget(_36c2.maybeUnBoxAndBuildArgument<_f6ef.ChildBackButtonDispatcher, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'addCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedcallback=luaCallerArguments  [
1
];vmObject.addCallback(() => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(unpackedcallback.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState));
return []; } );
table  [
'removeCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedcallback=luaCallerArguments  [
1
];vmObject.removeCallback(() => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(unpackedcallback.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState));
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f6ef.BackButtonDispatcher vmObject;

 }

class RTManagedBackButtonDispatcher extends _f6ef.BackButtonDispatcher implements _36c2.Box<_f6ef.BackButtonDispatcher> {RTManagedBackButtonDispatcher({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getHasCallbacks'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasCallbacks];
});
table['_dart_invokeCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.invokeCallback(_36c2.maybeUnBoxAndBuildArgument<
            _7de1.Future<_fac9.bool>,
            _fac9.bool>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_createChildBackButtonDispatcher'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createChildBackButtonDispatcher(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_takePriority'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.takePriority();
  return [];
});
table['_dart_deferTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.deferTo(_36c2.maybeUnBoxAndBuildArgument<
      _f6ef.ChildBackButtonDispatcher,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_forget'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.forget(_36c2.maybeUnBoxAndBuildArgument<_f6ef.ChildBackButtonDispatcher,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_addCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[1];
  super.addCallback(() =>
      _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
          unpackedcallback.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )[0],
          parentState: hydroState));
  return [];
});
table['_dart_removeCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[1];
  super.removeCallback(() =>
      _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
          unpackedcallback.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )[0],
          parentState: hydroState));
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
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f6ef.BackButtonDispatcher unwrap() => this;
_f6ef.BackButtonDispatcher get vmObject => this;
@_fac9.override _fac9.bool get hasCallbacks { 
_36c2.Closure closure = table["getHasCallbacks"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<_fac9.bool> invokeCallback(defaultValue) { 
_36c2.Closure closure = table["invokeCallback"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _f6ef.ChildBackButtonDispatcher createChildBackButtonDispatcher() { 
_36c2.Closure closure = table["createChildBackButtonDispatcher"];
return _36c2.maybeUnBoxAndBuildArgument<_f6ef.ChildBackButtonDispatcher, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void takePriority() { 
_36c2.Closure closure = table["takePriority"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void deferTo(child) { 
_36c2.Closure closure = table["deferTo"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void forget(child) { 
_36c2.Closure closure = table["forget"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void addCallback(callback) { 
_36c2.Closure closure = table["addCallback"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void removeCallback(callback) { 
_36c2.Closure closure = table["removeCallback"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadBackButtonDispatcher({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'backButtonDispatcher'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedBackButtonDispatcher(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_f6ef.BackButtonDispatcher>(boxer: ({required _f6ef.BackButtonDispatcher vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBackButtonDispatcher(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
