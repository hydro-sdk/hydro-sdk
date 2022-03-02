import 'dart:core' as _fac9;

import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeyMessage extends _36c2.VMManagedBox<_9e29.KeyMessage> {VMManagedKeyMessage({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'events'
] = _36c2.maybeBoxObject<_fac9.List<_9e29.KeyEvent>>(object: vmObject.events, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'rawEvent'
] = _36c2.maybeBoxObject<_94e8.RawKeyEvent>(object: vmObject.rawEvent, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _9e29.KeyMessage vmObject;

 }

class RTManagedKeyMessage extends _9e29.KeyMessage implements _36c2.Box<_9e29.KeyMessage> {RTManagedKeyMessage(_fac9.List<_9e29.KeyEvent> events$, _94e8.RawKeyEvent rawEvent$, {required this.table, required this.hydroState}) : super(events$,rawEvent$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'events'
] = _36c2.maybeBoxObject(object: this.events, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'rawEvent'
] = _36c2.maybeBoxObject(object: this.rawEvent, hydroState: hydroState, table: _36c2.HydroTable());
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

_9e29.KeyMessage unwrap() => this;
_9e29.KeyMessage get vmObject => this;
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadKeyMessage({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'keyMessage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedKeyMessage(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9e29.KeyEvent>, _9e29.KeyEvent>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyEvent, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_9e29.KeyMessage>(boxer: ({required _9e29.KeyMessage vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedKeyMessage(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
