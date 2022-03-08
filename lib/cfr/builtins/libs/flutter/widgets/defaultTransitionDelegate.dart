import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/navigator.dart' as _a37d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDefaultTransitionDelegate
    extends _36c2.VMManagedBox<_a37d.DefaultTransitionDelegate<_fac9.dynamic>> {
  VMManagedDefaultTransitionDelegate(
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

  final _a37d.DefaultTransitionDelegate<_fac9.dynamic> vmObject;
}

class RTManagedDefaultTransitionDelegate extends _a37d.DefaultTransitionDelegate
    implements _36c2.Box<_a37d.DefaultTransitionDelegate> {
  RTManagedDefaultTransitionDelegate(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.resolve(
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
            table: _36c2.HydroTable())
      ];
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

  _a37d.DefaultTransitionDelegate unwrap() => this;
  _a37d.DefaultTransitionDelegate get vmObject => this;
  @_fac9.override
  _fac9.Iterable<_a37d.RouteTransitionRecord> resolve(
      {required _fac9.Map locationToExitingPageRoute,
      required _fac9.List newPageRouteHistory,
      required _fac9.Map pageRouteToPagelessRoutes}) {
    _36c2.Closure closure = table["resolve"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Iterable<_a37d.RouteTransitionRecord>,
            _a37d.RouteTransitionRecord>(
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

void loadDefaultTransitionDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['defaultTransitionDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDefaultTransitionDelegate(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_a37d.DefaultTransitionDelegate>(boxer: (
      {required _a37d.DefaultTransitionDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDefaultTransitionDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
