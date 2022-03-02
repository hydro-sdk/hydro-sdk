import 'dart:core' as _fac9;

import 'package:flutter/src/services/autofill.dart' as _7283;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextInputClient extends _36c2.VMManagedBox<_8577.TextInputClient> {VMManagedTextInputClient({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getCurrentTextEditingValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.currentTextEditingValue;if(returnValue!= null){return [_36c2.maybeBoxObject<_8577.TextEditingValue?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getCurrentAutofillScope'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.currentAutofillScope;if(returnValue!= null){return [_36c2.maybeBoxObject<_7283.AutofillScope?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'updateEditingValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.updateEditingValue(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'performAction'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.performAction(_36c2.maybeUnBoxEnum(values: _8577.TextInputAction.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'performPrivateCommand'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.performPrivateCommand(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String,_fac9.dynamic>, _fac9.String>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'updateFloatingCursor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.updateFloatingCursor(_36c2.maybeUnBoxAndBuildArgument<_8577.RawFloatingCursorPoint, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'showAutocorrectionPromptRect'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.showAutocorrectionPromptRect(luaCallerArguments  [
1
], luaCallerArguments  [
2
]);
return []; } );
table  [
'connectionClosed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.connectionClosed();
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8577.TextInputClient vmObject;

 }

void loadTextInputClient({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_8577.TextInputClient>(boxer: ({required _8577.TextInputClient vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextInputClient(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
