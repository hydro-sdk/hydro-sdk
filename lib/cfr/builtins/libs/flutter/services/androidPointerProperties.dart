import 'dart:core' as _fac9;

import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAndroidPointerProperties extends _36c2.VMManagedBox<_40e3.AndroidPointerProperties> {VMManagedAndroidPointerProperties({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'id'
] = vmObject.id;
table  [
'toolType'
] = vmObject.toolType;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _40e3.AndroidPointerProperties vmObject;

 }

class RTManagedAndroidPointerProperties extends _40e3.AndroidPointerProperties implements _36c2.Box<_40e3.AndroidPointerProperties> {RTManagedAndroidPointerProperties({required _fac9.int id, required _fac9.int toolType, required this.table, required this.hydroState}) : super(id: id,toolType: toolType) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'id'
] = _36c2.maybeBoxObject(object: this.id, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toolType'
] = _36c2.maybeBoxObject(object: this.toolType, hydroState: hydroState, table: _36c2.HydroTable());
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

_40e3.AndroidPointerProperties unwrap() => this;
_40e3.AndroidPointerProperties get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAndroidPointerProperties({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'androidPointerProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedAndroidPointerProperties(table: luaCallerArguments  [
0
], hydroState: hydroState, id: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'id'
] : null, toolType: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'toolType'
] : null)]; } );
_36c2.registerBoxer<_40e3.AndroidPointerProperties>(boxer: ({required _40e3.AndroidPointerProperties vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAndroidPointerProperties(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
