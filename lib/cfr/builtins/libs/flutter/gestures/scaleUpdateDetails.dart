import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/scale.dart' as _bb2d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaleUpdateDetails extends _36c2.VMManagedBox<_bb2d.ScaleUpdateDetails> {VMManagedScaleUpdateDetails({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'focalPointDelta'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.focalPointDelta, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'focalPoint'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.focalPoint, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localFocalPoint'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localFocalPoint, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scale'
] = vmObject.scale;
table  [
'horizontalScale'
] = vmObject.horizontalScale;
table  [
'verticalScale'
] = vmObject.verticalScale;
table  [
'rotation'
] = vmObject.rotation;
table  [
'pointerCount'
] = vmObject.pointerCount;
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _bb2d.ScaleUpdateDetails vmObject;

 }

class RTManagedScaleUpdateDetails extends _bb2d.ScaleUpdateDetails implements _36c2.Box<_bb2d.ScaleUpdateDetails> {RTManagedScaleUpdateDetails({required _a643.Offset focalPoint, required _a643.Offset focalPointDelta, required _fac9.double horizontalScale, _a643.Offset? localFocalPoint, required _fac9.int pointerCount, required _fac9.double rotation, required _fac9.double scale, required _fac9.double verticalScale, required this.table, required this.hydroState}) : super(focalPoint: focalPoint,focalPointDelta: focalPointDelta,horizontalScale: horizontalScale,localFocalPoint: localFocalPoint,pointerCount: pointerCount,rotation: rotation,scale: scale,verticalScale: verticalScale) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'focalPointDelta'
] = _36c2.maybeBoxObject(object: this.focalPointDelta, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'focalPoint'
] = _36c2.maybeBoxObject(object: this.focalPoint, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'localFocalPoint'
] = _36c2.maybeBoxObject(object: this.localFocalPoint, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scale'
] = _36c2.maybeBoxObject(object: this.scale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'horizontalScale'
] = _36c2.maybeBoxObject(object: this.horizontalScale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'verticalScale'
] = _36c2.maybeBoxObject(object: this.verticalScale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'rotation'
] = _36c2.maybeBoxObject(object: this.rotation, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'pointerCount'
] = _36c2.maybeBoxObject(object: this.pointerCount, hydroState: hydroState, table: _36c2.HydroTable());
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

_bb2d.ScaleUpdateDetails unwrap() => this;
_bb2d.ScaleUpdateDetails get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadScaleUpdateDetails({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scaleUpdateDetails'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 







return  [RTManagedScaleUpdateDetails(table: luaCallerArguments  [
0
], hydroState: hydroState, focalPoint: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focalPoint'
] : null, parentState: hydroState), focalPointDelta: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focalPointDelta'
] : null, parentState: hydroState), horizontalScale: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'horizontalScale'
] : null?.toDouble(), localFocalPoint: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'localFocalPoint'
] : null, parentState: hydroState), pointerCount: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pointerCount'
] : null, rotation: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'rotation'
] : null?.toDouble(), scale: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scale'
] : null?.toDouble(), verticalScale: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'verticalScale'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_bb2d.ScaleUpdateDetails>(boxer: ({required _bb2d.ScaleUpdateDetails vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScaleUpdateDetails(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
