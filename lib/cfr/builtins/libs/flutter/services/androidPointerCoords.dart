import 'dart:core' as _fac9;

import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAndroidPointerCoords extends _36c2.VMManagedBox<_40e3.AndroidPointerCoords> {VMManagedAndroidPointerCoords({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'orientation'
] = vmObject.orientation;
table  [
'pressure'
] = vmObject.pressure;
table  [
'size'
] = vmObject.size;
table  [
'toolMajor'
] = vmObject.toolMajor;
table  [
'toolMinor'
] = vmObject.toolMinor;
table  [
'touchMajor'
] = vmObject.touchMajor;
table  [
'touchMinor'
] = vmObject.touchMinor;
table  [
'x'
] = vmObject.x;
table  [
'y'
] = vmObject.y;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _40e3.AndroidPointerCoords vmObject;

 }

class RTManagedAndroidPointerCoords extends _40e3.AndroidPointerCoords implements _36c2.Box<_40e3.AndroidPointerCoords> {RTManagedAndroidPointerCoords({required _fac9.double orientation, required _fac9.double pressure, required _fac9.double size, required _fac9.double toolMajor, required _fac9.double toolMinor, required _fac9.double touchMajor, required _fac9.double touchMinor, required _fac9.double x, required _fac9.double y, required this.table, required this.hydroState}) : super(orientation: orientation,pressure: pressure,size: size,toolMajor: toolMajor,toolMinor: toolMinor,touchMajor: touchMajor,touchMinor: touchMinor,x: x,y: y) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'orientation'
] = _36c2.maybeBoxObject(object: this.orientation, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'pressure'
] = _36c2.maybeBoxObject(object: this.pressure, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'size'
] = _36c2.maybeBoxObject(object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toolMajor'
] = _36c2.maybeBoxObject(object: this.toolMajor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toolMinor'
] = _36c2.maybeBoxObject(object: this.toolMinor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'touchMajor'
] = _36c2.maybeBoxObject(object: this.touchMajor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'touchMinor'
] = _36c2.maybeBoxObject(object: this.touchMinor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'x'
] = _36c2.maybeBoxObject(object: this.x, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'y'
] = _36c2.maybeBoxObject(object: this.y, hydroState: hydroState, table: _36c2.HydroTable());
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

_40e3.AndroidPointerCoords unwrap() => this;
_40e3.AndroidPointerCoords get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAndroidPointerCoords({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'androidPointerCoords'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 








return  [RTManagedAndroidPointerCoords(table: luaCallerArguments  [
0
], hydroState: hydroState, orientation: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'orientation'
] : null?.toDouble(), pressure: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pressure'
] : null?.toDouble(), size: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'size'
] : null?.toDouble(), toolMajor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'toolMajor'
] : null?.toDouble(), toolMinor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'toolMinor'
] : null?.toDouble(), touchMajor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'touchMajor'
] : null?.toDouble(), touchMinor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'touchMinor'
] : null?.toDouble(), x: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'x'
] : null?.toDouble(), y: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'y'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_40e3.AndroidPointerCoords>(boxer: ({required _40e3.AndroidPointerCoords vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAndroidPointerCoords(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
