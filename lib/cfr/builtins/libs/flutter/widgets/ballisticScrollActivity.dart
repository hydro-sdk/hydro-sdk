import 'dart:core' as _fac9;

import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_activity.dart' as _ca8b;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBallisticScrollActivity
    extends _36c2.VMManagedBox<_ca8b.BallisticScrollActivity> {
  VMManagedBallisticScrollActivity(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['resetActivity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resetActivity();
      return [];
    });
    table['applyNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.applyNewDimensions();
      return [];
    });
    table['dispatchOverscrollNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchOverscrollNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          luaCallerArguments[3]?.toDouble());
      return [];
    });
    table['getShouldIgnorePointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldIgnorePointer,
      ];
    });
    table['getIsScrolling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isScrolling,
      ];
    });
    table['getVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.velocity,
      ];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['updateDelegate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateDelegate(_36c2.maybeUnBoxAndBuildArgument<
          _ca8b.ScrollActivityDelegate,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['dispatchScrollStartNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchScrollStartNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['dispatchScrollUpdateNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchScrollUpdateNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          luaCallerArguments[3]?.toDouble());
      return [];
    });
    table['dispatchScrollEndNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchScrollEndNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getDelegate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ca8b.ScrollActivityDelegate>(
            object: vmObject.delegate,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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

  final _ca8b.BallisticScrollActivity vmObject;
}

class RTManagedBallisticScrollActivity extends _ca8b.BallisticScrollActivity
    implements _36c2.Box<_ca8b.BallisticScrollActivity> {
  RTManagedBallisticScrollActivity(_ca8b.ScrollActivityDelegate delegate$,
      _5437.Simulation simulation, _e067.TickerProvider vsync,
      {required this.table, required this.hydroState})
      : super(
          delegate$,
          simulation,
          vsync,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_resetActivity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resetActivity();
      return [];
    });
    table['_dart_applyNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.applyNewDimensions();
      return [];
    });
    table['_dart_applyMoveTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyMoveTo(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dispatchOverscrollNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchOverscrollNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_getShouldIgnorePointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.shouldIgnorePointer];
    });
    table['_dart_getIsScrolling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isScrolling];
    });
    table['_dart_getVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.velocity];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
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
    table['_dart_updateDelegate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateDelegate(_36c2.maybeUnBoxAndBuildArgument<
          _ca8b.ScrollActivityDelegate,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_dispatchScrollStartNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchScrollStartNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispatchScrollUpdateNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchScrollUpdateNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispatchScrollEndNotification'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchScrollEndNotification(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDelegate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.delegate];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ca8b.BallisticScrollActivity unwrap() => this;
  _ca8b.BallisticScrollActivity get vmObject => this;
  @_fac9.override
  void resetActivity() {
    _36c2.Closure closure = table["resetActivity"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void applyNewDimensions() {
    _36c2.Closure closure = table["applyNewDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool applyMoveTo(value) {
    _36c2.Closure closure = table["applyMoveTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchOverscrollNotification(metrics, context, overscroll) {
    _36c2.Closure closure = table["dispatchOverscrollNotification"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get shouldIgnorePointer {
    _36c2.Closure closure = table["getShouldIgnorePointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isScrolling {
    _36c2.Closure closure = table["getIsScrolling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get velocity {
    _36c2.Closure closure = table["getVelocity"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateDelegate(value) {
    _36c2.Closure closure = table["updateDelegate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchScrollStartNotification(metrics, context) {
    _36c2.Closure closure = table["dispatchScrollStartNotification"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchScrollUpdateNotification(metrics, context, scrollDelta) {
    _36c2.Closure closure = table["dispatchScrollUpdateNotification"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchScrollEndNotification(metrics, context) {
    _36c2.Closure closure = table["dispatchScrollEndNotification"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _ca8b.ScrollActivityDelegate get delegate {
    _36c2.Closure closure = table["getDelegate"];
    return _36c2.maybeUnBoxAndBuildArgument<_ca8b.ScrollActivityDelegate,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBallisticScrollActivity(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['ballisticScrollActivity'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedBallisticScrollActivity(
          _36c2.maybeUnBoxAndBuildArgument<_ca8b.ScrollActivityDelegate,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_5437.Simulation, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e067.TickerProvider, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_ca8b.BallisticScrollActivity>(boxer: (
      {required _ca8b.BallisticScrollActivity vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBallisticScrollActivity(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
