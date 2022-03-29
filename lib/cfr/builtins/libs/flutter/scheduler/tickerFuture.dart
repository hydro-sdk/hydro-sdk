import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTickerFuture extends _36c2.VMManagedBox<_e067.TickerFuture> {
  VMManagedTickerFuture(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['whenCompleteOrCancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.whenCompleteOrCancel(() => unpackedcallback.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['getOrCancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.orCancel,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['asStream'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Stream>(
            object: vmObject.asStream(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['catchError'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedtest =
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['test'] : null;
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.catchError(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Function, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                test: unpackedtest != null
                    ? (_) => unpackedtest.dispatch(
                          [luaCallerArguments[0], _],
                          parentState: hydroState,
                        )[0]
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['then'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonValue = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.then(
                (value) => _36c2.maybeUnBoxAndBuildArgument<
                        _7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedonValue.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
                onError: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Function?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['onError']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['timeout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedonTimeout = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onTimeout']
          : null;
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.timeout(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                onTimeout: unpackedonTimeout != null
                    ? () => _36c2
                        .maybeUnBoxAndBuildArgument<_7de1.FutureOr<void>, void>(
                            unpackedonTimeout.dispatch(
                              [luaCallerArguments[0]],
                              parentState: hydroState,
                            )[0],
                            parentState: hydroState)
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['whenComplete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedaction = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.whenComplete(() => unpackedaction.dispatch(
                  [luaCallerArguments[0]],
                  parentState: hydroState,
                )[0]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e067.TickerFuture vmObject;
}

void loadTickerFuture(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_e067.TickerFuture>(boxer: (
      {required _e067.TickerFuture vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTickerFuture(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
