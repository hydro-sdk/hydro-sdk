import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/painting/inline_span.dart' as _b761;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInlineSpanSemanticsInformation extends _36c2.VMManagedBox<_b761.InlineSpanSemanticsInformation> {VMManagedInlineSpanSemanticsInformation({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'text'
] = vmObject.text;
table  [
'semanticsLabel'
] = vmObject.semanticsLabel;
table  [
'recognizer'
] = _36c2.maybeBoxObject<_02d2.GestureRecognizer?>(object: vmObject.recognizer, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isPlaceholder'
] = vmObject.isPlaceholder;
table  [
'requiresOwnNode'
] = vmObject.requiresOwnNode;
table  [
'stringAttributes'
] = _36c2.maybeBoxObject<_fac9.List<_a643.StringAttribute>>(object: vmObject.stringAttributes, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _b761.InlineSpanSemanticsInformation vmObject;

 }

class RTManagedInlineSpanSemanticsInformation extends _b761.InlineSpanSemanticsInformation implements _36c2.Box<_b761.InlineSpanSemanticsInformation> {RTManagedInlineSpanSemanticsInformation(_fac9.String text$, {required _fac9.bool isPlaceholder, _02d2.GestureRecognizer? recognizer, _fac9.String? semanticsLabel, required _fac9.List<_a643.StringAttribute> stringAttributes, required this.table, required this.hydroState}) : super(text$,isPlaceholder: isPlaceholder,recognizer: recognizer,semanticsLabel: semanticsLabel,stringAttributes: stringAttributes) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'text'
] = _36c2.maybeBoxObject(object: this.text, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticsLabel'
] = _36c2.maybeBoxObject(object: this.semanticsLabel, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'recognizer'
] = _36c2.maybeBoxObject(object: this.recognizer, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isPlaceholder'
] = _36c2.maybeBoxObject(object: this.isPlaceholder, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'requiresOwnNode'
] = _36c2.maybeBoxObject(object: requiresOwnNode, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'stringAttributes'
] = _36c2.maybeBoxObject(object: this.stringAttributes, hydroState: hydroState, table: _36c2.HydroTable());
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

_b761.InlineSpanSemanticsInformation unwrap() => this;
_b761.InlineSpanSemanticsInformation get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadInlineSpanSemanticsInformation({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'inlineSpanSemanticsInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return  [RTManagedInlineSpanSemanticsInformation(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState, isPlaceholder: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'isPlaceholder'
] : null, recognizer: _36c2.maybeUnBoxAndBuildArgument<_02d2.GestureRecognizer?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'recognizer'
] : null, parentState: hydroState), semanticsLabel: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'semanticsLabel'
] : null, stringAttributes: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.StringAttribute>, _a643.StringAttribute>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'stringAttributes'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_b761.InlineSpanSemanticsInformation>(boxer: ({required _b761.InlineSpanSemanticsInformation vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedInlineSpanSemanticsInformation(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
