import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/message_codecs.dart' as _860d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedJSONMessageCodec extends _36c2.VMManagedBox<_860d.JSONMessageCodec> {VMManagedJSONMessageCodec({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'encodeMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.encodeMessage(_36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_7537.ByteData?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'decodeMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.decodeMessage(_36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _860d.JSONMessageCodec vmObject;

 }

class RTManagedJSONMessageCodec extends _860d.JSONMessageCodec implements _36c2.Box<_860d.JSONMessageCodec> {RTManagedJSONMessageCodec({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_encodeMessage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.encodeMessage(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_decodeMessage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    super.decodeMessage(
        _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_860d.JSONMessageCodec unwrap() => this;
_860d.JSONMessageCodec get vmObject => this;
@_fac9.override _7537.ByteData? encodeMessage(message) { 
_36c2.Closure closure = table["encodeMessage"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.dynamic decodeMessage(message) { 
_36c2.Closure closure = table["decodeMessage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadJSONMessageCodec({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'jSONMessageCodec'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedJSONMessageCodec(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_860d.JSONMessageCodec>(boxer: ({required _860d.JSONMessageCodec vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedJSONMessageCodec(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
