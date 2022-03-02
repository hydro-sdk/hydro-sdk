import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMessageCodec extends _36c2.VMManagedBox<_7fbb.MessageCodec<_fac9.dynamic>> {VMManagedMessageCodec({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'encodeMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.encodeMessage(luaCallerArguments  [
1
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_7537.ByteData?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'decodeMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.decodeMessage(_36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7fbb.MessageCodec<_fac9.dynamic> vmObject;

 }

void loadMessageCodec({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_7fbb.MessageCodec>(boxer: ({required _7fbb.MessageCodec vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedMessageCodec(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
