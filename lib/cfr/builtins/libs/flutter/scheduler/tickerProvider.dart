import 'dart:core' as _fac9;

import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTickerProvider extends _36c2.VMManagedBox<_e067.TickerProvider> {VMManagedTickerProvider({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'createTicker'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedonTick=luaCallerArguments  [
1
];return [_36c2.maybeBoxObject<_e067.Ticker>(object: vmObject.createTicker((elapsed) => unpackedonTick.dispatch([luaCallerArguments[0],elapsed],parentState:hydroState,)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e067.TickerProvider vmObject;

 }

void loadTickerProvider({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_e067.TickerProvider>(boxer: ({required _e067.TickerProvider vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTickerProvider(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
