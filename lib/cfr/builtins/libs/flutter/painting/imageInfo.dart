import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageInfo extends _36c2.VMManagedBox<_f25c.ImageInfo> {VMManagedImageInfo({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'image'
] = _36c2.maybeBoxObject<_a643.Image>(object: vmObject.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scale'
] = vmObject.scale;
table  [
'debugLabel'
] = vmObject.debugLabel;
table  [
'clone'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_f25c.ImageInfo>(object: vmObject.clone(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'isCloneOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isCloneOf(_36c2.maybeUnBoxAndBuildArgument<_f25c.ImageInfo, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'getSizeBytes'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.sizeBytes,]; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f25c.ImageInfo vmObject;

 }

class RTManagedImageInfo extends _f25c.ImageInfo implements _36c2.Box<_f25c.ImageInfo> {RTManagedImageInfo({_fac9.String? debugLabel, required _fac9.double scale, required _a643.Image image, required this.table, required this.hydroState}) : super(debugLabel: debugLabel,scale: scale,image: image) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'image'
] = _36c2.maybeBoxObject(object: this.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scale'
] = _36c2.maybeBoxObject(object: this.scale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugLabel'
] = _36c2.maybeBoxObject(object: this.debugLabel, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_clone'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.clone(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_isCloneOf'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isCloneOf(
            _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageInfo, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getSizeBytes'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.sizeBytes];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f25c.ImageInfo unwrap() => this;
_f25c.ImageInfo get vmObject => this;
@_fac9.override _f25c.ImageInfo clone() { 
_36c2.Closure closure = table["clone"];
return _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageInfo, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool isCloneOf(other) { 
_36c2.Closure closure = table["isCloneOf"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get sizeBytes { 
_36c2.Closure closure = table["getSizeBytes"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { 
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadImageInfo({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'imageInfo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedImageInfo(table: luaCallerArguments  [
0
], hydroState: hydroState, debugLabel: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'debugLabel'
] : null, scale: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scale'
] : null?.toDouble(), image: _36c2.maybeUnBoxAndBuildArgument<_a643.Image, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_f25c.ImageInfo>(boxer: ({required _f25c.ImageInfo vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedImageInfo(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
