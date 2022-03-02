import 'dart:core' as _fac9;

import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/keyboard_key.dart' as _e468;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeyboardLockMode extends _36c2.VMManagedBox<_9e29.KeyboardLockMode> {VMManagedKeyboardLockMode({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'logicalKey'
] = _36c2.maybeBoxObject<_e468.LogicalKeyboardKey>(object: vmObject.logicalKey, hydroState: hydroState, table: _36c2.HydroTable()); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _9e29.KeyboardLockMode vmObject;

 }

void loadKeyboardLockMode({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'keyboardLockModeNumLock'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_9e29.KeyboardLockMode>(object: _9e29.KeyboardLockMode.numLock, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'keyboardLockModeScrollLock'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_9e29.KeyboardLockMode>(object: _9e29.KeyboardLockMode.scrollLock, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'keyboardLockModeCapsLock'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_9e29.KeyboardLockMode>(object: _9e29.KeyboardLockMode.capsLock, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'keyboardLockModeFindLockByLogicalKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = _9e29.KeyboardLockMode.findLockByLogicalKey(_36c2.maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_9e29.KeyboardLockMode?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_9e29.KeyboardLockMode>(boxer: ({required _9e29.KeyboardLockMode vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedKeyboardLockMode(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
