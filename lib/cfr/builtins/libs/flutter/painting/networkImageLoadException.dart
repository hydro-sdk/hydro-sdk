import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_provider.dart' as _61fa;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNetworkImageLoadException extends _36c2.VMManagedBox<_61fa.NetworkImageLoadException> {VMManagedNetworkImageLoadException({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'statusCode'
] = vmObject.statusCode;
table  [
'uri'
] = _36c2.maybeBoxObject<_fac9.Uri>(object: vmObject.uri, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _61fa.NetworkImageLoadException vmObject;

 }

class RTManagedNetworkImageLoadException extends _61fa.NetworkImageLoadException implements _36c2.Box<_61fa.NetworkImageLoadException> {RTManagedNetworkImageLoadException({required _fac9.int statusCode, required _fac9.Uri uri, required this.table, required this.hydroState}) : super(statusCode: statusCode,uri: uri) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'statusCode'
] = _36c2.maybeBoxObject(object: this.statusCode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'uri'
] = _36c2.maybeBoxObject(object: this.uri, hydroState: hydroState, table: _36c2.HydroTable());
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

_61fa.NetworkImageLoadException unwrap() => this;
_61fa.NetworkImageLoadException get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadNetworkImageLoadException({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'networkImageLoadException'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedNetworkImageLoadException(table: luaCallerArguments  [
0
], hydroState: hydroState, statusCode: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'statusCode'
] : null, uri: _36c2.maybeUnBoxAndBuildArgument<_fac9.Uri, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'uri'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_61fa.NetworkImageLoadException>(boxer: ({required _61fa.NetworkImageLoadException vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedNetworkImageLoadException(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
