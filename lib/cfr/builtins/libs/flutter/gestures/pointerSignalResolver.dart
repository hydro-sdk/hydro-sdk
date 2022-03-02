import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/pointer_signal_resolver.dart' as _cfcd;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPointerSignalResolver extends _36c2.VMManagedBox<_cfcd.PointerSignalResolver> {VMManagedPointerSignalResolver({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'register'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure unpackedcallback=luaCallerArguments  [
2
];vmObject.register(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerSignalEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), (event) => unpackedcallback.dispatch([luaCallerArguments[0],event],parentState:hydroState,));
return []; } );
table  [
'resolve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerSignalEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _cfcd.PointerSignalResolver vmObject;

 }

class RTManagedPointerSignalResolver extends _cfcd.PointerSignalResolver implements _36c2.Box<_cfcd.PointerSignalResolver> {RTManagedPointerSignalResolver({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_register'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[2];
  super.register(
      _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerSignalEvent, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      (event) => unpackedcallback.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
  return [];
});
table['_dart_resolve'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.resolve(
      _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerSignalEvent, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_cfcd.PointerSignalResolver unwrap() => this;
_cfcd.PointerSignalResolver get vmObject => this;
@_fac9.override void register(event, callback) { 
_36c2.Closure closure = table["register"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void resolve(event) { 
_36c2.Closure closure = table["resolve"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPointerSignalResolver({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'pointerSignalResolver'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedPointerSignalResolver(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_cfcd.PointerSignalResolver>(boxer: ({required _cfcd.PointerSignalResolver vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPointerSignalResolver(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
