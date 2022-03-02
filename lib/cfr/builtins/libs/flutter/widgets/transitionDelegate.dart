import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTransitionDelegate
    extends _36c2.VMManagedBox<_a37d.TransitionDelegate<_fac9.dynamic>> {
  VMManagedTransitionDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.resolve(
                locationToExitingPageRoute:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_a37d.RouteTransitionRecord?, _a37d.RouteTransitionRecord>, _a37d.RouteTransitionRecord?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locationToExitingPageRoute'] : null,
                        parentState: hydroState),
                newPageRouteHistory:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a37d.RouteTransitionRecord>, _a37d.RouteTransitionRecord>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['newPageRouteHistory']
                            : null,
                        parentState: hydroState),
                pageRouteToPagelessRoutes:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_a37d.RouteTransitionRecord?, _fac9.List<_a37d.RouteTransitionRecord>>, _a37d.RouteTransitionRecord?>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pageRouteToPagelessRoutes'] : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a37d.TransitionDelegate<_fac9.dynamic> vmObject;
}

void loadTransitionDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_a37d.TransitionDelegate>(boxer: (
      {required _a37d.TransitionDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTransitionDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
