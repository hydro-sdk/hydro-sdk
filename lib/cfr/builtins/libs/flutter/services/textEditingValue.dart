import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextEditingValue extends _36c2.VMManagedBox<_8577.TextEditingValue> {VMManagedTextEditingValue({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'text'
] = vmObject.text;
table  [
'selection'
] = _36c2.maybeBoxObject<_7986.TextSelection>(object: vmObject.selection, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'composing'
] = _36c2.maybeBoxObject<_a643.TextRange>(object: vmObject.composing, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_8577.TextEditingValue>(object: vmObject.copyWith(composing: _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'composing'
] : null, parentState: hydroState), selection: _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selection'
] : null, parentState: hydroState), text: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'text'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getIsComposingRangeValid'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isComposingRangeValid,]; } );
table  [
'toJSON'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.toJSON(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8577.TextEditingValue vmObject;

 }

class RTManagedTextEditingValue extends _8577.TextEditingValue implements _36c2.Box<_8577.TextEditingValue> {RTManagedTextEditingValue({required _a643.TextRange composing, required _7986.TextSelection selection, required _fac9.String text, required this.table, required this.hydroState}) : super(composing: composing,selection: selection,text: text) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'text'
] = _36c2.maybeBoxObject(object: this.text, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'selection'
] = _36c2.maybeBoxObject(object: this.selection, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'composing'
] = _36c2.maybeBoxObject(object: this.composing, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            composing: _36c2
                .maybeUnBoxAndBuildArgument<_a643.TextRange?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['composing'] : null,
                    parentState: hydroState),
            selection: _36c2
                .maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['selection']
                        : null,
                    parentState: hydroState),
            text: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['text'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getIsComposingRangeValid'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isComposingRangeValid];
});
table['_dart_toJSON'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toJSON(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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

_8577.TextEditingValue unwrap() => this;
_8577.TextEditingValue get vmObject => this;
@_fac9.override _8577.TextEditingValue copyWith({_a643.TextRange? composing, _7986.TextSelection? selection, _fac9.String? text}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get isComposingRangeValid { 
_36c2.Closure closure = table["getIsComposingRangeValid"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Map<_fac9.String,_fac9.dynamic> toJSON() { 
_36c2.Closure closure = table["toJSON"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTextEditingValue({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'textEditingValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedTextEditingValue(table: luaCallerArguments  [
0
], hydroState: hydroState, composing: _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'composing'
] : null, parentState: hydroState), selection: _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selection'
] : null, parentState: hydroState), text: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'text'
] : null)]; } );
table  [
'textEditingValueFromJSON'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_8577.TextEditingValue>(object: _8577.TextEditingValue.fromJSON(_36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>, _fac9.String>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_8577.TextEditingValue>(boxer: ({required _8577.TextEditingValue vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextEditingValue(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
