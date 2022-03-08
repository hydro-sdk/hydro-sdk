import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteAware extends _36c2.VMManagedBox<_8c2a.RouteAware> {
  VMManagedRouteAware(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['didPopNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPopNext();
      return [];
    });
    table['didPush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPush();
      return [];
    });
    table['didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPop();
      return [];
    });
    table['didPushNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPushNext();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c2a.RouteAware vmObject;
}

class RTManagedRouteAware extends _8c2a.RouteAware
    implements _36c2.Box<_8c2a.RouteAware> {
  RTManagedRouteAware({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_didPopNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPopNext();
      return [];
    });
    table['_dart_didPush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPush();
      return [];
    });
    table['_dart_didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPop();
      return [];
    });
    table['_dart_didPushNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPushNext();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c2a.RouteAware unwrap() => this;
  _8c2a.RouteAware get vmObject => this;
  @_fac9.override
  void didPopNext() {
    _36c2.Closure closure = table["didPopNext"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didPush() {
    _36c2.Closure closure = table["didPush"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didPop() {
    _36c2.Closure closure = table["didPop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didPushNext() {
    _36c2.Closure closure = table["didPushNext"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRouteAware(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['routeAware'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRouteAware(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_8c2a.RouteAware>(boxer: (
      {required _8c2a.RouteAware vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRouteAware(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
