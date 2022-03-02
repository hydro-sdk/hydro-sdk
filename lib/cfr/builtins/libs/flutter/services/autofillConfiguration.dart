import 'dart:core' as _fac9;

import 'package:flutter/src/services/autofill.dart' as _7283;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAutofillConfiguration extends _36c2.VMManagedBox<_7283.AutofillConfiguration> {VMManagedAutofillConfiguration({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'enabled'
] = vmObject.enabled;
table  [
'uniqueIdentifier'
] = vmObject.uniqueIdentifier;
table  [
'autofillHints'
] = _36c2.maybeBoxObject<_fac9.List<_fac9.String>>(object: vmObject.autofillHints, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'currentEditingValue'
] = _36c2.maybeBoxObject<_8577.TextEditingValue>(object: vmObject.currentEditingValue, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'hintText'
] = vmObject.hintText;
table  [
'toJson'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.toJson();if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Map?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7283.AutofillConfiguration vmObject;

 }

class RTManagedAutofillConfiguration extends _7283.AutofillConfiguration implements _36c2.Box<_7283.AutofillConfiguration> {RTManagedAutofillConfiguration({_fac9.String? hintText, required _fac9.List<_fac9.String> autofillHints, required _8577.TextEditingValue currentEditingValue, required _fac9.String uniqueIdentifier, required this.table, required this.hydroState}) : super(hintText: hintText,autofillHints: autofillHints,currentEditingValue: currentEditingValue,uniqueIdentifier: uniqueIdentifier) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'enabled'
] = _36c2.maybeBoxObject(object: enabled, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'uniqueIdentifier'
] = _36c2.maybeBoxObject(object: this.uniqueIdentifier, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'autofillHints'
] = _36c2.maybeBoxObject(object: this.autofillHints, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'currentEditingValue'
] = _36c2.maybeBoxObject(object: this.currentEditingValue, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'hintText'
] = _36c2.maybeBoxObject(object: this.hintText, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_toJson'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toJson(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_7283.AutofillConfiguration unwrap() => this;
_7283.AutofillConfiguration get vmObject => this;
@_fac9.override _fac9.Map<_fac9.String,_fac9.dynamic>? toJson() { 
_36c2.Closure closure = table["toJson"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>?, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadAutofillConfiguration({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'autofillConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedAutofillConfiguration(table: luaCallerArguments  [
0
], hydroState: hydroState, hintText: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'hintText'
] : null, autofillHints: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'autofillHints'
] : null, parentState: hydroState), currentEditingValue: _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'currentEditingValue'
] : null, parentState: hydroState), uniqueIdentifier: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'uniqueIdentifier'
] : null)]; } );
table  [
'autofillConfigurationDisabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_7283.AutofillConfiguration>(object: _7283.AutofillConfiguration.disabled, hydroState: hydroState, table: _36c2.HydroTable())]; } );
_36c2.registerBoxer<_7283.AutofillConfiguration>(boxer: ({required _7283.AutofillConfiguration vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedAutofillConfiguration(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
