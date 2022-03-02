import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/binary_messenger.dart' as _71d1;
import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/platform_channel.dart' as _aebe;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBasicMessageChannel extends _36c2.VMManagedBox<_aebe.BasicMessageChannel<_fac9.dynamic>> {VMManagedBasicMessageChannel({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'name'
] = vmObject.name;
table  [
'codec'
] = _36c2.maybeBoxObject<_7fbb.MessageCodec>(object: vmObject.codec, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getBinaryMessenger'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_71d1.BinaryMessenger>(object: vmObject.binaryMessenger, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'send'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.send(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setMessageHandler'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.setMessageHandler(unpackedhandler != null ? (message) => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(unpackedhandler.dispatch([luaCallerArguments[0],message],parentState:hydroState,)[0], parentState: hydroState) : null );
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _aebe.BasicMessageChannel<_fac9.dynamic> vmObject;

 }

class RTManagedBasicMessageChannel extends _aebe.BasicMessageChannel implements _36c2.Box<_aebe.BasicMessageChannel> {RTManagedBasicMessageChannel(_fac9.String name$, _7fbb.MessageCodec<_fac9.dynamic> codec$, {_71d1.BinaryMessenger? binaryMessenger, required this.table, required this.hydroState}) : super(name$,codec$,binaryMessenger: binaryMessenger) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'name'
] = _36c2.maybeBoxObject(object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'codec'
] = _36c2.maybeBoxObject(object: this.codec, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getBinaryMessenger'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.binaryMessenger];
});
table['_dart_send'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.send(luaCallerArguments[1]),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_setMessageHandler'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.setMessageHandler(unpackedhandler != null
      ? (message) => _36c2.maybeUnBoxAndBuildArgument<
              _7de1.Future<_fac9.dynamic>, _fac9.dynamic>(
          unpackedhandler.dispatch(
            [luaCallerArguments[0], message],
            parentState: hydroState,
          )[0],
          parentState: hydroState)
      : null);
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_aebe.BasicMessageChannel unwrap() => this;
_aebe.BasicMessageChannel get vmObject => this;
@_fac9.override _71d1.BinaryMessenger get binaryMessenger { 
_36c2.Closure closure = table["getBinaryMessenger"];
return _36c2.maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.dynamic?> send(message) { 
_36c2.Closure closure = table["send"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic?>, _fac9.dynamic?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void setMessageHandler(handler) { 
_36c2.Closure closure = table["setMessageHandler"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadBasicMessageChannel({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'basicMessageChannel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedBasicMessageChannel(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_7fbb.MessageCodec<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState, binaryMessenger: _36c2.maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'binaryMessenger'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_aebe.BasicMessageChannel>(boxer: ({required _aebe.BasicMessageChannel vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBasicMessageChannel(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
