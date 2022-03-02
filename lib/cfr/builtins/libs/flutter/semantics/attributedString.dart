import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/semantics/semantics.dart' as _4c98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAttributedString extends _36c2.VMManagedBox<_4c98.AttributedString> {VMManagedAttributedString({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'string'
] = vmObject.string;
table  [
'attributes'
] = _36c2.maybeBoxObject<_fac9.List<_a643.StringAttribute>>(object: vmObject.attributes, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4c98.AttributedString vmObject;

 }

class RTManagedAttributedString extends _4c98.AttributedString implements _36c2.Box<_4c98.AttributedString> {RTManagedAttributedString(_fac9.String string$, {required _fac9.List<_a643.StringAttribute> attributes, required this.table, required this.hydroState}) : super(string$,attributes: attributes) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'string'
] = _36c2.maybeBoxObject(object: this.string, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'attributes'
] = _36c2.maybeBoxObject(object: this.attributes, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
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

_4c98.AttributedString unwrap() => this;
_4c98.AttributedString get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadAttributedString({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'attributedString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedAttributedString(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState, attributes: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.StringAttribute>, _a643.StringAttribute>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'attributes'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4c98.AttributedString>(boxer: ({required _4c98.AttributedString vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAttributedString(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
