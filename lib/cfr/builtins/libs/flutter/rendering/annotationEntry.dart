import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/layer.dart' as _7d70;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnnotationEntry extends _36c2.VMManagedBox<_7d70.AnnotationEntry<_fac9.dynamic>> {VMManagedAnnotationEntry({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'localPosition'
] = _36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7d70.AnnotationEntry<_fac9.dynamic> vmObject;

 }

class RTManagedAnnotationEntry extends _7d70.AnnotationEntry implements _36c2.Box<_7d70.AnnotationEntry> {RTManagedAnnotationEntry({required _fac9.dynamic annotation, required _a643.Offset localPosition, required this.table, required this.hydroState}) : super(annotation: annotation,localPosition: localPosition) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'localPosition'
] = _36c2.maybeBoxObject(object: this.localPosition, hydroState: hydroState, table: _36c2.HydroTable());
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

_7d70.AnnotationEntry unwrap() => this;
_7d70.AnnotationEntry get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAnnotationEntry({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'annotationEntry'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedAnnotationEntry(table: luaCallerArguments  [
0
], hydroState: hydroState, annotation: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'annotation'
] : null, localPosition: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'localPosition'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_7d70.AnnotationEntry>(boxer: ({required _7d70.AnnotationEntry vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAnnotationEntry(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
