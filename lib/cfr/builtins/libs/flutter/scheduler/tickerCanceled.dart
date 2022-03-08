import 'dart:core' as _fac9;

import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTickerCanceled extends _36c2.VMManagedBox<_e067.TickerCanceled> {
  VMManagedTickerCanceled(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['ticker'] = _36c2.maybeBoxObject<_e067.Ticker?>(
        object: vmObject.ticker,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e067.TickerCanceled vmObject;
}

class RTManagedTickerCanceled extends _e067.TickerCanceled
    implements _36c2.Box<_e067.TickerCanceled> {
  RTManagedTickerCanceled(_e067.Ticker? ticker$,
      {required this.table, required this.hydroState})
      : super(
          ticker$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['ticker'] = _36c2.maybeBoxObject(
        object: ticker, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _e067.TickerCanceled unwrap() => this;
  _e067.TickerCanceled get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTickerCanceled(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tickerCanceled'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTickerCanceled(
          _36c2.maybeUnBoxAndBuildArgument<_e067.Ticker?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_e067.TickerCanceled>(boxer: (
      {required _e067.TickerCanceled vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTickerCanceled(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
