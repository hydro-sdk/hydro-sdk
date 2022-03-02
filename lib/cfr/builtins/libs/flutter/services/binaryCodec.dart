import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/message_codecs.dart' as _860d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBinaryCodec extends _36c2.VMManagedBox<_860d.BinaryCodec> {VMManagedBinaryCodec({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'decodeMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.decodeMessage(_36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_7537.ByteData?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'encodeMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.encodeMessage(_36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_7537.ByteData?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _860d.BinaryCodec vmObject;

 }

class RTManagedBinaryCodec extends _860d.BinaryCodec implements _36c2.Box<_860d.BinaryCodec> {RTManagedBinaryCodec({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_decodeMessage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.decodeMessage(
            _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_encodeMessage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.encodeMessage(
            _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_860d.BinaryCodec unwrap() => this;
_860d.BinaryCodec get vmObject => this;
@_fac9.override _7537.ByteData? decodeMessage(message) { 
_36c2.Closure closure = table["decodeMessage"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7537.ByteData? encodeMessage(message) { 
_36c2.Closure closure = table["encodeMessage"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadBinaryCodec({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'binaryCodec'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedBinaryCodec(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_860d.BinaryCodec>(boxer: ({required _860d.BinaryCodec vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBinaryCodec(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
