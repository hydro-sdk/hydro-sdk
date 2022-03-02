import 'dart:core' as _fac9;

import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPlatformViewsRegistry extends _36c2.VMManagedBox<_40e3.PlatformViewsRegistry> {VMManagedPlatformViewsRegistry({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getNextPlatformViewId'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getNextPlatformViewId(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _40e3.PlatformViewsRegistry vmObject;

 }

void loadPlatformViewsRegistry({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_40e3.PlatformViewsRegistry>(boxer: ({required _40e3.PlatformViewsRegistry vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPlatformViewsRegistry(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
