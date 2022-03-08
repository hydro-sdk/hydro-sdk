import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/system_navigator.dart' as _8365;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSystemNavigator
    extends _36c2.VMManagedBox<_8365.SystemNavigator> {
  VMManagedSystemNavigator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8365.SystemNavigator vmObject;
}

void loadSystemNavigator(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['systemNavigatorPop'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _8365.SystemNavigator.pop(
              animated: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['animated']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['systemNavigatorSelectSingleEntryHistory'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _8365.SystemNavigator.selectSingleEntryHistory(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['systemNavigatorSelectMultiEntryHistory'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _8365.SystemNavigator.selectMultiEntryHistory(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['systemNavigatorRouteInformationUpdated'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _8365.SystemNavigator.routeInformationUpdated(
              replace: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['replace']
                  : null,
              state: _36c2
                  .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['state']
                          : null,
                      parentState: hydroState),
              location: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['location']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['systemNavigatorRouteUpdated'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _8365.SystemNavigator.routeUpdated(
              previousRouteName: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['previousRouteName']
                  : null,
              routeName: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['routeName']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_8365.SystemNavigator>(boxer: (
      {required _8365.SystemNavigator vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSystemNavigator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
