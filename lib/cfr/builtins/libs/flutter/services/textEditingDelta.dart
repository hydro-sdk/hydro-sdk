import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_editing_delta.dart' as _99ef;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextEditingDelta extends _36c2.VMManagedBox<_99ef.TextEditingDelta> {VMManagedTextEditingDelta({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'oldText'
] = vmObject.oldText;
table  [
'selection'
] = _36c2.maybeBoxObject<_7986.TextSelection>(object: vmObject.selection, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'composing'
] = _36c2.maybeBoxObject<_a643.TextRange>(object: vmObject.composing, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'apply'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_8577.TextEditingValue>(object: vmObject.apply(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _99ef.TextEditingDelta vmObject;

 }

class RTManagedTextEditingDelta extends _99ef.TextEditingDelta implements _36c2.Box<_99ef.TextEditingDelta> {RTManagedTextEditingDelta({required _a643.TextRange composing, required _fac9.String oldText, required _7986.TextSelection selection, required this.table, required this.hydroState}) : super(composing: composing,oldText: oldText,selection: selection) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'oldText'
] = _36c2.maybeBoxObject(object: this.oldText, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'selection'
] = _36c2.maybeBoxObject(object: this.selection, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'composing'
] = _36c2.maybeBoxObject(object: this.composing, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_apply'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: apply(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_99ef.TextEditingDelta unwrap() => this;
_99ef.TextEditingDelta get vmObject => this;
@_fac9.override _8577.TextEditingValue apply(value) { 
_36c2.Closure closure = table["apply"];
return _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadTextEditingDelta({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'textEditingDelta'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedTextEditingDelta(table: luaCallerArguments  [
0
], hydroState: hydroState, composing: _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'composing'
] : null, parentState: hydroState), oldText: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'oldText'
] : null, selection: _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selection'
] : null, parentState: hydroState))]; } );
table  [
'textEditingDeltaFromJSON'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_99ef.TextEditingDelta>(object: _99ef.TextEditingDelta.fromJSON(_36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>, _fac9.String>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_99ef.TextEditingDelta>(boxer: ({required _99ef.TextEditingDelta vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextEditingDelta(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
