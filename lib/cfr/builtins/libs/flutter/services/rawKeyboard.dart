import 'dart:core' as _fac9;

import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawKeyboard extends _36c2.VMManagedBox<_94e8.RawKeyboard> {VMManagedRawKeyboard({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'addListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.addListener((value) => unpackedlistener.dispatch([luaCallerArguments[0],value],parentState:hydroState,));
return []; } );
table  [
'removeListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.removeListener((value) => unpackedlistener.dispatch([luaCallerArguments[0],value],parentState:hydroState,));
return []; } );
table  [
'getKeyEventHandler'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.keyEventHandler;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setKeyEventHandler'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.keyEventHandler=(unpackedhandler != null ? (event) => unpackedhandler.dispatch([luaCallerArguments[0],event],parentState:hydroState,)[0] : null );
return []; } );
table  [
'handleRawKeyEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.handleRawKeyEvent(_36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'getKeysPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Set>(object: vmObject.keysPressed, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPhysicalKeysPressed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Set>(object: vmObject.physicalKeysPressed, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'lookUpLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.lookUpLayout(_36c2.maybeUnBoxAndBuildArgument<_e468.PhysicalKeyboardKey, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_e468.LogicalKeyboardKey?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _94e8.RawKeyboard vmObject;

 }

void loadRawKeyboard({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_94e8.RawKeyboard>(boxer: ({required _94e8.RawKeyboard vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRawKeyboard(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
