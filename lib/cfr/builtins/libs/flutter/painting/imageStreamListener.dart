import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageStreamListener extends _36c2.VMManagedBox<_f25c.ImageStreamListener> {VMManagedImageStreamListener({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f25c.ImageStreamListener vmObject;

 }

class RTManagedImageStreamListener extends _f25c.ImageStreamListener implements _36c2.Box<_f25c.ImageStreamListener> {RTManagedImageStreamListener( onImage, {void Function(_f25c.ImageChunkEvent event)? onChunk, void Function(_fac9.Object exception, _fac9.StackTrace? stackTrace)? onError, required this.table, required this.hydroState}) : super(onImage,onChunk: onChunk,onError: onError) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f25c.ImageStreamListener unwrap() => this;
_f25c.ImageStreamListener get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadImageStreamListener({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'imageStreamListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedonImage=luaCallerArguments  [
1
];
_36c2.Closure? unpackedonChunk=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'onChunk'
] : null;
_36c2.Closure? unpackedonError=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'onError'
] : null;
return  [RTManagedImageStreamListener((image, synchronousCall) => unpackedonImage.dispatch([luaCallerArguments[0],image,synchronousCall],parentState:hydroState,), table: luaCallerArguments  [
0
], hydroState: hydroState, onChunk: unpackedonChunk != null ? (event) => unpackedonChunk.dispatch([luaCallerArguments[0],event],parentState:hydroState,) : null , onError: unpackedonError != null ? (exception, stackTrace) => unpackedonError.dispatch([luaCallerArguments[0],exception,stackTrace],parentState:hydroState,) : null )]; } );
_36c2.registerBoxer<_f25c.ImageStreamListener>(boxer: ({required _f25c.ImageStreamListener vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedImageStreamListener(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
