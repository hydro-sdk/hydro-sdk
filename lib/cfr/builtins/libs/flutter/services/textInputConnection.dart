import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextInputConnection extends _36c2.VMManagedBox<_8577.TextInputConnection> {VMManagedTextInputConnection({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getAttached'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.attached,]; } );
table  [
'show'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.show();
return []; } );
table  [
'requestAutofill'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.requestAutofill();
return []; } );
table  [
'updateConfig'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.updateConfig(_36c2.maybeUnBoxAndBuildArgument<_8577.TextInputConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'setEditingState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setEditingState(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'setEditableSizeAndTransform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.setEditableSizeAndTransform(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'setComposingRect'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setComposingRect(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'setCaretRect'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setCaretRect(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'setStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



vmObject.setStyle(fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontFamily'
] : null, fontSize: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontSize'
] : null?.toDouble(), fontWeight: _36c2.maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontWeight'
] : null, parentState: hydroState), textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textAlign'
] : null), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textDirection'
] : null));
return []; } );
table  [
'close'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.close();
return []; } );
table  [
'connectionClosedReceived'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.connectionClosedReceived();
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _8577.TextInputConnection vmObject;

 }

void loadTextInputConnection({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'textInputConnectionDebugResetId'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _8577.TextInputConnection.debugResetId(to: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'to'
] : null);
return []; } );
_36c2.registerBoxer<_8577.TextInputConnection>(boxer: ({required _8577.TextInputConnection vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextInputConnection(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
