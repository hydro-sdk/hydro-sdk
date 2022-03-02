import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/actions.dart' as _c0f4;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDoNothingAndStopPropagationIntent extends _36c2.VMManagedBox<_c0f4.DoNothingAndStopPropagationIntent> {VMManagedDoNothingAndStopPropagationIntent({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'toDiagnosticsNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.toDiagnosticsNode(name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _c0f4.DoNothingAndStopPropagationIntent vmObject;

 }

void loadDoNothingAndStopPropagationIntent({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'doNothingAndStopPropagationIntent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [_36c2.maybeBoxObject<_c0f4.DoNothingAndStopPropagationIntent>(object: _c0f4.DoNothingAndStopPropagationIntent(), hydroState: hydroState, table: luaCallerArguments  [
0
])]; } );
_36c2.registerBoxer<_c0f4.DoNothingAndStopPropagationIntent>(boxer: ({required _c0f4.DoNothingAndStopPropagationIntent vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDoNothingAndStopPropagationIntent(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
