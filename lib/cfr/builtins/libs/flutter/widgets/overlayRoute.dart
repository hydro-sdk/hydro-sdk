import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/overlay.dart' as _0049;
import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOverlayRoute
    extends _36c2.VMManagedBox<_8c2a.OverlayRoute<_fac9.dynamic>> {
  VMManagedOverlayRoute(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['createOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.createOverlayEntries(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject.overlayEntries
                .map((x) => _36c2.maybeBoxObject<_0049.OverlayEntry>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['install'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.install();
      return [];
    });
    table['didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.didPop(luaCallerArguments[1]),
      ];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
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
    table['getSettings'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a37d.RouteSettings>(
            object: vmObject.settings,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getRestorationScopeId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e644.ValueListenable>(
            object: vmObject.restorationScopeId,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getWillHandlePopInternally'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.willHandlePopInternally,
      ];
    });
    table['getCurrentResult'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentResult;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getPopped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.popped,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIsCurrent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isCurrent,
      ];
    });
    table['getIsFirst'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isFirst,
      ];
    });
    table['getIsActive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isActive,
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

  final _8c2a.OverlayRoute<_fac9.dynamic> vmObject;
}

class RTManagedOverlayRoute extends _8c2a.OverlayRoute
    implements _36c2.Box<_8c2a.OverlayRoute> {
  RTManagedOverlayRoute(
      {_a37d.RouteSettings? settings,
      required this.table,
      required this.hydroState})
      : super(settings: settings) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_createOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: createOverlayEntries(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.overlayEntries];
    });
    table['_dart_install'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.install();
      return [];
    });
    table['_dart_getFinishedWhenPopped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.finishedWhenPopped];
    });
    table['_dart_didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.didPop(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_didPush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.didPush(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didAdd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didAdd();
      return [];
    });
    table['_dart_didReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didReplace(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_willPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.willPop(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didComplete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didComplete(luaCallerArguments[1]);
      return [];
    });
    table['_dart_didPopNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didPopNext(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_didChangeNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeNext(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_didChangePrevious'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangePrevious(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_changedInternalState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.changedInternalState();
      return [];
    });
    table['_dart_changedExternalState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.changedExternalState();
      return [];
    });
    table['_dart_getNavigator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.navigator];
    });
    table['_dart_getSettings'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.settings];
    });
    table['_dart_getRestorationScopeId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.restorationScopeId];
    });
    table['_dart_getWillHandlePopInternally'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.willHandlePopInternally];
    });
    table['_dart_getCurrentResult'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentResult];
    });
    table['_dart_getPopped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.popped];
    });
    table['_dart_getIsCurrent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isCurrent];
    });
    table['_dart_getIsFirst'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isFirst];
    });
    table['_dart_getHasActiveRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasActiveRouteBelow];
    });
    table['_dart_getIsActive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isActive];
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

  _8c2a.OverlayRoute unwrap() => this;
  _8c2a.OverlayRoute get vmObject => this;
  @_fac9.override
  _fac9.Iterable<_0049.OverlayEntry> createOverlayEntries() {
    _36c2.Closure closure = table["createOverlayEntries"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_0049.OverlayEntry>,
            _0049.OverlayEntry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_0049.OverlayEntry> get overlayEntries {
    _36c2.Closure closure = table["getOverlayEntries"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_0049.OverlayEntry>,
            _0049.OverlayEntry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void install() {
    super.install();
    _36c2.Closure closure = table["install"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get finishedWhenPopped {
    _36c2.Closure closure = table["getFinishedWhenPopped"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool didPop(result) {
    super.didPop(result);
    _36c2.Closure closure = table["didPop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e067.TickerFuture didPush() {
    super.didPush();
    _36c2.Closure closure = table["didPush"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void didAdd() {
    super.didAdd();
    _36c2.Closure closure = table["didAdd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didReplace(oldRoute) {
    super.didReplace(oldRoute);
    _36c2.Closure closure = table["didReplace"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_a37d.RoutePopDisposition> willPop() {
    _36c2.Closure closure = table["willPop"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _7de1.Future<_a37d.RoutePopDisposition>, _a37d.RoutePopDisposition>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void didComplete(result) {
    super.didComplete(result);
    _36c2.Closure closure = table["didComplete"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didPopNext(nextRoute) {
    super.didPopNext(nextRoute);
    _36c2.Closure closure = table["didPopNext"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeNext(nextRoute) {
    super.didChangeNext(nextRoute);
    _36c2.Closure closure = table["didChangeNext"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangePrevious(previousRoute) {
    super.didChangePrevious(previousRoute);
    _36c2.Closure closure = table["didChangePrevious"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void changedInternalState() {
    super.changedInternalState();
    _36c2.Closure closure = table["changedInternalState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void changedExternalState() {
    super.changedExternalState();
    _36c2.Closure closure = table["changedExternalState"];
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
  _a37d.RouteSettings get settings {
    _36c2.Closure closure = table["getSettings"];
    return _36c2.maybeUnBoxAndBuildArgument<_a37d.RouteSettings, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e644.ValueListenable<_fac9.String?> get restorationScopeId {
    _36c2.Closure closure = table["getRestorationScopeId"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e644.ValueListenable<_fac9.String?>, _fac9.String?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get willHandlePopInternally {
    _36c2.Closure closure = table["getWillHandlePopInternally"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.dynamic? get currentResult {
    _36c2.Closure closure = table["getCurrentResult"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.dynamic?> get popped {
    _36c2.Closure closure = table["getPopped"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic?>,
            _fac9.dynamic?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isCurrent {
    _36c2.Closure closure = table["getIsCurrent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isFirst {
    _36c2.Closure closure = table["getIsFirst"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasActiveRouteBelow {
    _36c2.Closure closure = table["getHasActiveRouteBelow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isActive {
    _36c2.Closure closure = table["getIsActive"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadOverlayRoute(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['overlayRoute'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedOverlayRoute(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          settings: _36c2
              .maybeUnBoxAndBuildArgument<_a37d.RouteSettings?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['settings']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_8c2a.OverlayRoute>(boxer: (
      {required _8c2a.OverlayRoute vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedOverlayRoute(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
