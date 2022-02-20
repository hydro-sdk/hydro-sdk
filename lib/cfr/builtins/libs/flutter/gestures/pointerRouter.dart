import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/pointer_router.dart' as _f3e5;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPointerRouter extends _36c2.VMManagedBox<_f3e5.PointerRouter> {
  VMManagedPointerRouter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[2];
      vmObject.addRoute(
          luaCallerArguments[1],
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['removeRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[2];
      vmObject.removeRoute(
          luaCallerArguments[1],
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['addGlobalRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[1];
      vmObject.addGlobalRoute(
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['removeGlobalRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[1];
      vmObject.removeGlobalRoute((event) => unpackedroute.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['getDebugGlobalRouteCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugGlobalRouteCount,
      ];
    });
    table['route'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.route(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _f3e5.PointerRouter vmObject;
}

class RTManagedPointerRouter extends _f3e5.PointerRouter
    implements _36c2.Box<_f3e5.PointerRouter> {
  RTManagedPointerRouter({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[2];
      super.addRoute(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[2];
      super.removeRoute(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_addGlobalRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[1];
      super.addGlobalRoute(
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeGlobalRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedroute = luaCallerArguments[1];
      super.removeGlobalRoute((event) => unpackedroute.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getDebugGlobalRouteCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugGlobalRouteCount];
    });
    table['_dart_route'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.route(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _f3e5.PointerRouter unwrap() => this;
  _f3e5.PointerRouter get vmObject => this;
  @_fac9.override
  void addRoute(pointer, route, [_db98.Matrix4? transform]) {
    _36c2.Closure closure = table["addRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeRoute(pointer, route) {
    _36c2.Closure closure = table["removeRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addGlobalRoute(route, [_db98.Matrix4? transform]) {
    _36c2.Closure closure = table["addGlobalRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeGlobalRoute(route) {
    _36c2.Closure closure = table["removeGlobalRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get debugGlobalRouteCount {
    _36c2.Closure closure = table["getDebugGlobalRouteCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void route(event) {
    _36c2.Closure closure = table["route"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerRouter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pointerRouter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPointerRouter(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_f3e5.PointerRouter>(boxer: (
      {required _f3e5.PointerRouter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPointerRouter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
