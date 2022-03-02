import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_cache.dart' as _2e0e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageCacheStatus extends _36c2.VMManagedBox<_2e0e.ImageCacheStatus> {VMManagedImageCacheStatus({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'pending'
] = vmObject.pending;
table  [
'keepAlive'
] = vmObject.keepAlive;
table  [
'live'
] = vmObject.live;
table  [
'getTracked'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.tracked,]; } );
table  [
'getUntracked'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.untracked,]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2e0e.ImageCacheStatus vmObject;

 }

void loadImageCacheStatus({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_2e0e.ImageCacheStatus>(boxer: ({required _2e0e.ImageCacheStatus vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedImageCacheStatus(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
