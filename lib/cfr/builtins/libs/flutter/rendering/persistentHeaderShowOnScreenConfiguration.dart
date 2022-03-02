import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver_persistent_header.dart' as _2805;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPersistentHeaderShowOnScreenConfiguration extends _36c2.VMManagedBox<_2805.PersistentHeaderShowOnScreenConfiguration> {VMManagedPersistentHeaderShowOnScreenConfiguration({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'minShowOnScreenExtent'
] = vmObject.minShowOnScreenExtent;
table  [
'maxShowOnScreenExtent'
] = vmObject.maxShowOnScreenExtent; }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2805.PersistentHeaderShowOnScreenConfiguration vmObject;

 }

class RTManagedPersistentHeaderShowOnScreenConfiguration extends _2805.PersistentHeaderShowOnScreenConfiguration implements _36c2.Box<_2805.PersistentHeaderShowOnScreenConfiguration> {RTManagedPersistentHeaderShowOnScreenConfiguration({required _fac9.double maxShowOnScreenExtent, required _fac9.double minShowOnScreenExtent, required this.table, required this.hydroState}) : super(maxShowOnScreenExtent: maxShowOnScreenExtent,minShowOnScreenExtent: minShowOnScreenExtent) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'minShowOnScreenExtent'
] = _36c2.maybeBoxObject(object: this.minShowOnScreenExtent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'maxShowOnScreenExtent'
] = _36c2.maybeBoxObject(object: this.maxShowOnScreenExtent, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_2805.PersistentHeaderShowOnScreenConfiguration unwrap() => this;
_2805.PersistentHeaderShowOnScreenConfiguration get vmObject => this;
 }
void loadPersistentHeaderShowOnScreenConfiguration({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'persistentHeaderShowOnScreenConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedPersistentHeaderShowOnScreenConfiguration(table: luaCallerArguments  [
0
], hydroState: hydroState, maxShowOnScreenExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxShowOnScreenExtent'
] : null?.toDouble(), minShowOnScreenExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minShowOnScreenExtent'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_2805.PersistentHeaderShowOnScreenConfiguration>(boxer: ({required _2805.PersistentHeaderShowOnScreenConfiguration vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPersistentHeaderShowOnScreenConfiguration(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
