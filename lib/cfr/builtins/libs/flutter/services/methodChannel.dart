import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/binary_messenger.dart' as _71d1;
import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/platform_channel.dart' as _aebe;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMethodChannel extends _36c2.VMManagedBox<_aebe.MethodChannel> {VMManagedMethodChannel({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'name'
] = vmObject.name;
table  [
'codec'
] = _36c2.maybeBoxObject<_7fbb.MethodCodec>(object: vmObject.codec, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getBinaryMessenger'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_71d1.BinaryMessenger>(object: vmObject.binaryMessenger, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'invokeMethod'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.invokeMethod(luaCallerArguments  [
1
], luaCallerArguments  [
2
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'invokeListMethod'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.invokeListMethod(luaCallerArguments  [
1
], luaCallerArguments  [
2
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'invokeMapMethod'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.invokeMapMethod(luaCallerArguments  [
1
], luaCallerArguments  [
2
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setMethodCallHandler'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.setMethodCallHandler(unpackedhandler != null ? (call) => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>, _fac9.dynamic>(unpackedhandler.dispatch([luaCallerArguments[0],call],parentState:hydroState,)[0], parentState: hydroState) : null );
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _aebe.MethodChannel vmObject;

 }

class RTManagedMethodChannel extends _aebe.MethodChannel implements _36c2.Box<_aebe.MethodChannel> {RTManagedMethodChannel(_fac9.String name$, _7fbb.MethodCodec codec$, _71d1.BinaryMessenger? binaryMessenger$, {required this.table, required this.hydroState}) : super(name$,codec$,binaryMessenger$,) { table  [
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
] = _36c2.maybeBoxObject(object: codec, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getBinaryMessenger'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.binaryMessenger];
});
table['_dart_invokeMethod'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.invokeMethod(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_invokeListMethod'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.invokeListMethod(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_invokeMapMethod'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.invokeMapMethod(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_setMethodCallHandler'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.setMethodCallHandler(unpackedhandler != null
      ? (call) => _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic>,
              _fac9.dynamic>(
          unpackedhandler.dispatch(
            [luaCallerArguments[0], call],
            parentState: hydroState,
          )[0],
          parentState: hydroState)
      : null);
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_aebe.MethodChannel unwrap() => this;
_aebe.MethodChannel get vmObject => this;
@_fac9.override _71d1.BinaryMessenger get binaryMessenger { 
_36c2.Closure closure = table["getBinaryMessenger"];
return _36c2.maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<T?> invokeMethod<T>(method, [_fac9.dynamic? arguments]) { 
_36c2.Closure closure = table["invokeMethod"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.List<T>?> invokeListMethod<T>(method, [_fac9.dynamic? arguments]) { 
_36c2.Closure closure = table["invokeListMethod"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.List<T>?>, _fac9.List<T>?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.Map<K,V>?> invokeMapMethod<K,V>(method, [_fac9.dynamic? arguments]) { 
_36c2.Closure closure = table["invokeMapMethod"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.Map<K,V>?>, _fac9.Map<K,V>?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void setMethodCallHandler(handler) { 
_36c2.Closure closure = table["setMethodCallHandler"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadMethodChannel({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'methodChannel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedMethodChannel(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_7fbb.MethodCodec, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger?, _fac9.dynamic>(luaCallerArguments  [
3
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_aebe.MethodChannel>(boxer: ({required _aebe.MethodChannel vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedMethodChannel(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
