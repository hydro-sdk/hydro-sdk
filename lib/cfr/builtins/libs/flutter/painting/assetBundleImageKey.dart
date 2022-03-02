import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/services/asset_bundle.dart' as _136d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAssetBundleImageKey extends _36c2.VMManagedBox<_61fa.AssetBundleImageKey> {VMManagedAssetBundleImageKey({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'bundle'
] = _36c2.maybeBoxObject<_136d.AssetBundle>(object: vmObject.bundle, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'name'
] = vmObject.name;
table  [
'scale'
] = vmObject.scale;
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _61fa.AssetBundleImageKey vmObject;

 }

class RTManagedAssetBundleImageKey extends _61fa.AssetBundleImageKey implements _36c2.Box<_61fa.AssetBundleImageKey> {RTManagedAssetBundleImageKey({required _136d.AssetBundle bundle, required _fac9.String name, required _fac9.double scale, required this.table, required this.hydroState}) : super(bundle: bundle,name: name,scale: scale) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'bundle'
] = _36c2.maybeBoxObject(object: this.bundle, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'name'
] = _36c2.maybeBoxObject(object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scale'
] = _36c2.maybeBoxObject(object: this.scale, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
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

_61fa.AssetBundleImageKey unwrap() => this;
_61fa.AssetBundleImageKey get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAssetBundleImageKey({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'assetBundleImageKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedAssetBundleImageKey(table: luaCallerArguments  [
0
], hydroState: hydroState, bundle: _36c2.maybeUnBoxAndBuildArgument<_136d.AssetBundle, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'bundle'
] : null, parentState: hydroState), name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, scale: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scale'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_61fa.AssetBundleImageKey>(boxer: ({required _61fa.AssetBundleImageKey vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAssetBundleImageKey(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
