import 'dart:core';

import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/pointer_router.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerRouter extends VMManagedBox<PointerRouter> {
  VMManagedPointerRouter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[2];
      vmObject.addRoute(
          luaCallerArguments[1],
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['removeRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[2];
      vmObject.removeRoute(
          luaCallerArguments[1],
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['addGlobalRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[1];
      vmObject.addGlobalRoute(
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['removeGlobalRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[1];
      vmObject.removeGlobalRoute((event) => unpackedroute.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['getDebugGlobalRouteCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugGlobalRouteCount,
      ];
    });
    table['route'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.route(maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PointerRouter vmObject;
}

class RTManagedPointerRouter extends PointerRouter
    implements Box<PointerRouter> {
  RTManagedPointerRouter({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[2];
      super.addRoute(
          luaCallerArguments[1],
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[2];
      super.removeRoute(
          luaCallerArguments[1],
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_addGlobalRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[1];
      super.addGlobalRoute(
          (event) => unpackedroute.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ),
          maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeGlobalRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedroute = luaCallerArguments[1];
      super.removeGlobalRoute((event) => unpackedroute.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getDebugGlobalRouteCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugGlobalRouteCount];
    });
    table['_dart_route'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.route(maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PointerRouter unwrap() => this;
  PointerRouter get vmObject => this;
  @override
  void addRoute(pointer, route, [Matrix4? transform]) {
    Closure closure = table["addRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeRoute(pointer, route) {
    Closure closure = table["removeRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addGlobalRoute(route, [Matrix4? transform]) {
    Closure closure = table["addGlobalRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeGlobalRoute(route) {
    Closure closure = table["removeGlobalRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get debugGlobalRouteCount {
    Closure closure = table["getDebugGlobalRouteCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void route(event) {
    Closure closure = table["route"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerRouter(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerRouter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPointerRouter(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<PointerRouter>(boxer: (
      {required PointerRouter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerRouter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
