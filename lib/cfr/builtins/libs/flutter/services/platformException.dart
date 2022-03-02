import 'dart:core' as _fac9;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPlatformException extends _36c2.VMManagedBox<_7fbb.PlatformException> {VMManagedPlatformException({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'code'
] = vmObject.code;
table  [
'message'
] = vmObject.message;
table  [
'stacktrace'
] = vmObject.stacktrace;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7fbb.PlatformException vmObject;

 }

class RTManagedPlatformException extends _7fbb.PlatformException implements _36c2.Box<_7fbb.PlatformException> {RTManagedPlatformException({required _fac9.dynamic details, _fac9.String? message, _fac9.String? stacktrace, required _fac9.String code, required this.table, required this.hydroState}) : super(details: details,message: message,stacktrace: stacktrace,code: code) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'code'
] = _36c2.maybeBoxObject(object: this.code, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'message'
] = _36c2.maybeBoxObject(object: this.message, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'stacktrace'
] = _36c2.maybeBoxObject(object: this.stacktrace, hydroState: hydroState, table: _36c2.HydroTable());
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

_7fbb.PlatformException unwrap() => this;
_7fbb.PlatformException get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPlatformException({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'platformException'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedPlatformException(table: luaCallerArguments  [
0
], hydroState: hydroState, details: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'details'
] : null, message: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'message'
] : null, stacktrace: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'stacktrace'
] : null, code: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'code'
] : null)]; } );
_36c2.registerBoxer<_7fbb.PlatformException>(boxer: ({required _7fbb.PlatformException vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPlatformException(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
