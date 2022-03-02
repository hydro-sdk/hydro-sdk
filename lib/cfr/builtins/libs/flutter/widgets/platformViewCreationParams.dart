import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/platform_view.dart' as _172d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPlatformViewCreationParams extends _36c2.VMManagedBox<_172d.PlatformViewCreationParams> {VMManagedPlatformViewCreationParams({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'id'
] = vmObject.id;
table  [
'viewType'
] = vmObject.viewType; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _172d.PlatformViewCreationParams vmObject;

 }

void loadPlatformViewCreationParams({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_172d.PlatformViewCreationParams>(boxer: ({required _172d.PlatformViewCreationParams vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPlatformViewCreationParams(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
