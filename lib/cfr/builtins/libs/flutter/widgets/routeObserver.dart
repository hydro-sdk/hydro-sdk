import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRouteObserver extends _36c2
    .VMManagedBox<_8c2a.RouteObserver<_a37d.Route<_fac9.dynamic>>> {
  VMManagedRouteObserver(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['subscribe'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.subscribe(
          _36c2.maybeUnBoxAndBuildArgument<_8c2a.RouteAware, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['unsubscribe'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.unsubscribe(
          _36c2.maybeUnBoxAndBuildArgument<_8c2a.RouteAware, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPop(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['didPush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPush(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['didRemove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didRemove(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['didReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didReplace(
          newRoute: _36c2.maybeUnBoxAndBuildArgument<
                  _a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newRoute']
                  : null,
              parentState: hydroState),
          oldRoute: _36c2.maybeUnBoxAndBuildArgument<
                  _a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['oldRoute']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['didStartUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStartUserGesture(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['didStopUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStopUserGesture();
      return [];
    });
    table['getNavigator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.navigator;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a37d.NavigatorState?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c2a.RouteObserver<_a37d.Route<_fac9.dynamic>> vmObject;
}

class RTManagedRouteObserver extends _8c2a.RouteObserver
    implements _36c2.Box<_8c2a.RouteObserver> {
  RTManagedRouteObserver({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_subscribe'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.subscribe(
          _36c2.maybeUnBoxAndBuildArgument<_8c2a.RouteAware, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['_dart_unsubscribe'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.unsubscribe(
          _36c2.maybeUnBoxAndBuildArgument<_8c2a.RouteAware, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPop(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_didPush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPush(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_didRemove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didRemove(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_didReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didReplace(
          newRoute: _36c2.maybeUnBoxAndBuildArgument<
                  _a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newRoute']
                  : null,
              parentState: hydroState),
          oldRoute: _36c2.maybeUnBoxAndBuildArgument<
                  _a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['oldRoute']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_didStartUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStartUserGesture(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_didStopUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStopUserGesture();
      return [];
    });
    table['_dart_getNavigator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.navigator];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c2a.RouteObserver unwrap() => this;
  _8c2a.RouteObserver get vmObject => this;
  @_fac9.override
  _fac9.bool debugObservingRoute(route) {
    _36c2.Closure closure = table["debugObservingRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void subscribe(routeAware, route) {
    _36c2.Closure closure = table["subscribe"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void unsubscribe(routeAware) {
    _36c2.Closure closure = table["unsubscribe"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didPop(route, previousRoute) {
    _36c2.Closure closure = table["didPop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didPush(route, previousRoute) {
    _36c2.Closure closure = table["didPush"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didRemove(route, previousRoute) {
    _36c2.Closure closure = table["didRemove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didReplace({_a37d.Route? newRoute, _a37d.Route? oldRoute}) {
    _36c2.Closure closure = table["didReplace"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStartUserGesture(route, previousRoute) {
    _36c2.Closure closure = table["didStartUserGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStopUserGesture() {
    _36c2.Closure closure = table["didStopUserGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a37d.NavigatorState? get navigator {
    _36c2.Closure closure = table["getNavigator"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a37d.NavigatorState?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRouteObserver(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['routeObserver'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRouteObserver(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_8c2a.RouteObserver>(boxer: (
      {required _8c2a.RouteObserver vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRouteObserver(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
