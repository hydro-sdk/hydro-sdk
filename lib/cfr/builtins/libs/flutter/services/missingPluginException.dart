import 'dart:core' as _fac9;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMissingPluginException extends _36c2.VMManagedBox<_7fbb.MissingPluginException> {VMManagedMissingPluginException({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'message'
] = vmObject.message;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7fbb.MissingPluginException vmObject;

 }

class RTManagedMissingPluginException extends _7fbb.MissingPluginException implements _36c2.Box<_7fbb.MissingPluginException> {RTManagedMissingPluginException(_fac9.String? message$, {required this.table, required this.hydroState}) : super(message$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'message'
] = _36c2.maybeBoxObject(object: message, hydroState: hydroState, table: _36c2.HydroTable());
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

_7fbb.MissingPluginException unwrap() => this;
_7fbb.MissingPluginException get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadMissingPluginException({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'missingPluginException'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedMissingPluginException(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_7fbb.MissingPluginException>(boxer: ({required _7fbb.MissingPluginException vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedMissingPluginException(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
