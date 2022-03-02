import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/viewport.dart' as _01f8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRevealedOffset extends _36c2.VMManagedBox<_01f8.RevealedOffset> {VMManagedRevealedOffset({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'offset'
] = vmObject.offset;
table  [
'rect'
] = _36c2.maybeBoxObject<_a643.Rect>(object: vmObject.rect, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _01f8.RevealedOffset vmObject;

 }

class RTManagedRevealedOffset extends _01f8.RevealedOffset implements _36c2.Box<_01f8.RevealedOffset> {RTManagedRevealedOffset({required _fac9.double offset, required _a643.Rect rect, required this.table, required this.hydroState}) : super(offset: offset,rect: rect) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'offset'
] = _36c2.maybeBoxObject(object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'rect'
] = _36c2.maybeBoxObject(object: this.rect, hydroState: hydroState, table: _36c2.HydroTable());
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

_01f8.RevealedOffset unwrap() => this;
_01f8.RevealedOffset get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadRevealedOffset({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'revealedOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedRevealedOffset(table: luaCallerArguments  [
0
], hydroState: hydroState, offset: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null?.toDouble(), rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'rect'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_01f8.RevealedOffset>(boxer: ({required _01f8.RevealedOffset vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRevealedOffset(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
