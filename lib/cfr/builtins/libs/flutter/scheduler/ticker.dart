import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTicker extends _36c2.VMManagedBox<_e067.Ticker> {VMManagedTicker({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'debugLabel'
] = vmObject.debugLabel;
table  [
'getMuted'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.muted,]; } );
table  [
'setMuted'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.muted=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsTicking'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isTicking,]; } );
table  [
'getIsActive'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isActive,]; } );
table  [
'start'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e067.TickerFuture>(object: vmObject.start(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'describeForError'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.describeForError(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'stop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.stop(canceled: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'canceled'
] : null);
return []; } );
table  [
'absorbTicker'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.absorbTicker(_36c2.maybeUnBoxAndBuildArgument<_e067.Ticker, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(debugIncludeStack: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'debugIncludeStack'
] : null),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e067.Ticker vmObject;

 }

class RTManagedTicker extends _e067.Ticker implements _36c2.Box<_e067.Ticker> {RTManagedTicker( _onTick, {_fac9.String? debugLabel, required this.table, required this.hydroState}) : super(_onTick,debugLabel: debugLabel) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'debugLabel'
] = _36c2.maybeBoxObject(object: this.debugLabel, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getMuted'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.muted];
});
table['_dart_setMuted'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.muted = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getIsTicking'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isTicking];
});
table['_dart_getIsActive'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isActive];
});
table['_dart_start'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.start(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_describeForError'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.describeForError(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_stop'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.stop(
      canceled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['canceled']
              : null,
          parentState: hydroState));
  return [];
});
table['_dart_getScheduled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scheduled];
});
table['_dart_getShouldScheduleTick'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.shouldScheduleTick];
});
table['_dart_scheduleTick'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scheduleTick(
      rescheduling: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['rescheduling']
              : null,
          parentState: hydroState));
  return [];
});
table['_dart_unscheduleTick'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.unscheduleTick();
  return [];
});
table['_dart_absorbTicker'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.absorbTicker(
      _36c2.maybeUnBoxAndBuildArgument<_e067.Ticker, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(
            debugIncludeStack:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['debugIncludeStack']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e067.Ticker unwrap() => this;
_e067.Ticker get vmObject => this;
@_fac9.override _fac9.bool get muted { 
_36c2.Closure closure = table["getMuted"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set muted(value) { 
_36c2.Closure closure = table["setMuted"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isTicking { 
_36c2.Closure closure = table["getIsTicking"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isActive { 
_36c2.Closure closure = table["getIsActive"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e067.TickerFuture start() { 
_36c2.Closure closure = table["start"];
return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _eaf3.DiagnosticsNode describeForError(name) { 
_36c2.Closure closure = table["describeForError"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void stop({_fac9.bool canceled = false}) { 
_36c2.Closure closure = table["stop"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get scheduled { 
_36c2.Closure closure = table["getScheduled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get shouldScheduleTick { 
_36c2.Closure closure = table["getShouldScheduleTick"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void scheduleTick({_fac9.bool rescheduling = false}) { 
_36c2.Closure closure = table["scheduleTick"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void unscheduleTick() { 
_36c2.Closure closure = table["unscheduleTick"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void absorbTicker(originalTicker) { 
_36c2.Closure closure = table["absorbTicker"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_fac9.bool debugIncludeStack = false}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTicker({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'ticker'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpacked_onTick=luaCallerArguments  [
1
];

return  [RTManagedTicker((elapsed) => unpacked_onTick.dispatch([luaCallerArguments[0],elapsed],parentState:hydroState,), table: luaCallerArguments  [
0
], hydroState: hydroState, debugLabel: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'debugLabel'
] : null)]; } );
_36c2.registerBoxer<_e067.Ticker>(boxer: ({required _e067.Ticker vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTicker(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
