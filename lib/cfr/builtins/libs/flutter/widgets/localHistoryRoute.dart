import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLocalHistoryRoute
    extends _36c2.VMManagedBox<_8c2a.LocalHistoryRoute<_fac9.dynamic>> {
  VMManagedLocalHistoryRoute(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addLocalHistoryEntry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addLocalHistoryEntry(_36c2.maybeUnBoxAndBuildArgument<
          _8c2a.LocalHistoryEntry,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['removeLocalHistoryEntry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeLocalHistoryEntry(_36c2.maybeUnBoxAndBuildArgument<
          _8c2a.LocalHistoryEntry,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['willPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.willPop(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.didPop(luaCallerArguments[1]),
      ];
    });
    table['getWillHandlePopInternally'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.willHandlePopInternally,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c2a.LocalHistoryRoute<_fac9.dynamic> vmObject;
}

void loadLocalHistoryRoute(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8c2a.LocalHistoryRoute>(boxer: (
      {required _8c2a.LocalHistoryRoute vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLocalHistoryRoute(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
