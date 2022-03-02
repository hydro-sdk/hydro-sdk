import 'dart:core' as _fac9;

import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;
import 'package:flutter/src/widgets/shortcuts.dart' as _1710;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedShortcutActivator extends _36c2.VMManagedBox<_1710.ShortcutActivator> {VMManagedShortcutActivator({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getTriggers'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.triggers;if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Iterable?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'accepts'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.accepts(_36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyboard, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)),]; } );
table  [
'debugDescribeKeys'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDescribeKeys(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1710.ShortcutActivator vmObject;

 }

void loadShortcutActivator({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_1710.ShortcutActivator>(boxer: ({required _1710.ShortcutActivator vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedShortcutActivator(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
