import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/restoration_properties.dart' as _28c9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRestorableTextEditingController extends _36c2.VMManagedBox<_28c9.RestorableTextEditingController> {VMManagedRestorableTextEditingController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'createDefaultValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_d800.TextEditingController>(object: vmObject.createDefaultValue(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'fromPrimitives'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_d800.TextEditingController>(object: vmObject.fromPrimitives(_36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toPrimitives'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Object>(object: vmObject.toPrimitives(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'initWithValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.initWithValue(_36c2.maybeUnBoxAndBuildArgument<_d800.TextEditingController, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_d800.TextEditingController>(object: vmObject.value, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.enabled,]; } );
table  [
'addListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.addListener(() => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'removeListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.removeListener(() => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _28c9.RestorableTextEditingController vmObject;

 }

void loadRestorableTextEditingController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'restorableTextEditingController'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [_36c2.maybeBoxObject<_28c9.RestorableTextEditingController>(object: _28c9.RestorableTextEditingController(text: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'text'
] : null), hydroState: hydroState, table: luaCallerArguments  [
0
])]; } );
_36c2.registerBoxer<_28c9.RestorableTextEditingController>(boxer: ({required _28c9.RestorableTextEditingController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRestorableTextEditingController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
