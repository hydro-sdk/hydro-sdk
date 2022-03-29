import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/animation_controller.dart' as _c169;
import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/animation/listener_helpers.dart' as _7ec6;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/spring_simulation.dart' as _5917;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimationController
    extends _36c2.VMManagedBox<_c169.AnimationController> {
  VMManagedAnimationController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['lowerBound'] = vmObject.lowerBound;
    table['upperBound'] = vmObject.upperBound;
    table['debugLabel'] = vmObject.debugLabel;
    table['animationBehavior'] = _c169.AnimationBehavior.values.indexWhere((x) {
      return x == vmObject.animationBehavior;
    });
    table['duration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['reverseDuration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.reverseDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.view,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['resync'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resync(
          _36c2.maybeUnBoxAndBuildArgument<_e067.TickerProvider, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.value,
      ];
    });
    table['setValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.value = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['reset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reset();
      return [];
    });
    table['getVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.velocity,
      ];
    });
    table['getLastElapsedDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastElapsedDuration;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Duration?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getIsAnimating'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isAnimating,
      ];
    });
    table['getStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _86ca.AnimationStatus.values.indexWhere((x) {
          return x == vmObject.status;
        }),
      ];
    });
    table['forward'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.forward(
                from: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['from']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['reverse'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.reverse(
                from: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['from']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['animateTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.animateTo(luaCallerArguments[1]?.toDouble(),
                curve:
                    _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['curve']
                            : null,
                        parentState: hydroState),
                duration: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['duration']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['animateBack'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.animateBack(luaCallerArguments[1]?.toDouble(),
                curve:
                    _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['curve']
                            : null,
                        parentState: hydroState),
                duration: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['duration']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['repeat'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.repeat(
                max: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['max']
                    : null?.toDouble(),
                min: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['min']
                    : null?.toDouble(),
                period: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['period']
                            : null,
                        parentState: hydroState),
                reverse: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['reverse']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['fling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.fling(
                animationBehavior: _36c2.maybeUnBoxEnum(
                    values: _c169.AnimationBehavior.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['animationBehavior']
                        : null),
                springDescription: _36c2.maybeUnBoxAndBuildArgument<
                        _5917.SpringDescription?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['springDescription']
                        : null,
                    parentState: hydroState),
                velocity: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['velocity']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['animateWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.animateWith(_36c2.maybeUnBoxAndBuildArgument<
                _5437.Simulation,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['stop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.stop(
          canceled: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['canceled']
              : null);
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['toStringDetails'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDetails(),
      ];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['addStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['drive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.drive(_36c2.maybeUnBoxAndBuildArgument<
                _e83e.Animatable<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
    table['getIsDismissed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isDismissed,
      ];
    });
    table['getIsCompleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isCompleted,
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

  final _c169.AnimationController vmObject;
}

class RTManagedAnimationController extends _c169.AnimationController
    implements _36c2.Box<_c169.AnimationController> {
  RTManagedAnimationController(
      {required _c169.AnimationBehavior animationBehavior,
      _fac9.String? debugLabel,
      _fac9.Duration? duration,
      required _fac9.double lowerBound,
      _fac9.Duration? reverseDuration,
      required _fac9.double upperBound,
      _fac9.double? value,
      required _e067.TickerProvider vsync,
      required this.table,
      required this.hydroState})
      : super(
            animationBehavior: animationBehavior,
            debugLabel: debugLabel,
            duration: duration,
            lowerBound: lowerBound,
            reverseDuration: reverseDuration,
            upperBound: upperBound,
            value: value,
            vsync: vsync) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['lowerBound'] = _36c2.maybeBoxObject(
        object: this.lowerBound,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['upperBound'] = _36c2.maybeBoxObject(
        object: this.upperBound,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugLabel'] = _36c2.maybeBoxObject(
        object: this.debugLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['animationBehavior'] = _c169.AnimationBehavior.values.indexWhere((x) {
      return x == this.animationBehavior;
    });
    table['duration'] = _36c2.maybeBoxObject(
        object: this.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['reverseDuration'] = _36c2.maybeBoxObject(
        object: this.reverseDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.view];
    });
    table['_dart_resync'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resync(
          _36c2.maybeUnBoxAndBuildArgument<_e067.TickerProvider, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_setValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.value =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_reset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reset();
      return [];
    });
    table['_dart_getVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.velocity];
    });
    table['_dart_getLastElapsedDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.lastElapsedDuration];
    });
    table['_dart_getIsAnimating'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isAnimating];
    });
    table['_dart_getStatus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.status];
    });
    table['_dart_forward'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.forward(
                from: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['from']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_reverse'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.reverse(
                from: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['from']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_animateTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.animateTo(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                curve:
                    _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['curve']
                            : null,
                        parentState: hydroState),
                duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_animateBack'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.animateBack(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_repeat'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.repeat(
                max: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['max'] : null,
                    parentState: hydroState),
                min: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['min'] : null,
                    parentState: hydroState),
                period: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['period']
                        : null,
                    parentState: hydroState),
                reverse: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['reverse'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_fling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.fling(
                animationBehavior: _36c2.maybeUnBoxEnum(
                    values: _c169.AnimationBehavior.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['animationBehavior']
                        : null),
                springDescription: _36c2.maybeUnBoxAndBuildArgument<
                        _5917.SpringDescription?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['springDescription']
                        : null,
                    parentState: hydroState),
                velocity: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['velocity'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_animateWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.animateWith(_36c2.maybeUnBoxAndBuildArgument<
                _5437.Simulation,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_stop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.stop(
          canceled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['canceled']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_toStringDetails'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDetails(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didRegisterListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didRegisterListener();
      return [];
    });
    table['_dart_didUnregisterListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUnregisterListener();
      return [];
    });
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_clearListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clearListeners();
      return [];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_addStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_clearStatusListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clearStatusListeners();
      return [];
    });
    table['_dart_notifyStatusListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyStatusListeners(_36c2.maybeUnBoxEnum(
          values: _86ca.AnimationStatus.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_drive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.drive(_36c2.maybeUnBoxAndBuildArgument<
                _e83e.Animatable<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
    table['_dart_getIsDismissed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isDismissed];
    });
    table['_dart_getIsCompleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isCompleted];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _c169.AnimationController unwrap() => this;
  _c169.AnimationController get vmObject => this;
  @_fac9.override
  _86ca.Animation<_fac9.double> get view {
    _36c2.Closure closure = table["getView"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void resync(vsync) {
    _36c2.Closure closure = table["resync"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get value {
    _36c2.Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set value(newValue) {
    _36c2.Closure closure = table["setValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void reset() {
    _36c2.Closure closure = table["reset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get velocity {
    _36c2.Closure closure = table["getVelocity"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.Duration? get lastElapsedDuration {
    _36c2.Closure closure = table["getLastElapsedDuration"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isAnimating {
    _36c2.Closure closure = table["getIsAnimating"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.AnimationStatus get status {
    _36c2.Closure closure = table["getStatus"];
    return _36c2.maybeUnBoxEnum(
        values: _86ca.AnimationStatus.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _e067.TickerFuture forward({_fac9.double? from}) {
    _36c2.Closure closure = table["forward"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.TickerFuture reverse({_fac9.double? from}) {
    _36c2.Closure closure = table["reverse"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.TickerFuture animateTo(target,
      {_8c47.Curve curve = _8c47.Curves.linear, _fac9.Duration? duration}) {
    _36c2.Closure closure = table["animateTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.TickerFuture animateBack(target,
      {_8c47.Curve curve = _8c47.Curves.linear, _fac9.Duration? duration}) {
    _36c2.Closure closure = table["animateBack"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.TickerFuture repeat(
      {_fac9.double? max,
      _fac9.double? min,
      _fac9.Duration? period,
      _fac9.bool reverse = false}) {
    _36c2.Closure closure = table["repeat"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.TickerFuture fling(
      {_c169.AnimationBehavior? animationBehavior,
      _5917.SpringDescription? springDescription,
      _fac9.double velocity = 1.0}) {
    _36c2.Closure closure = table["fling"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.TickerFuture animateWith(simulation) {
    _36c2.Closure closure = table["animateWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.TickerFuture, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void stop({_fac9.bool canceled = true}) {
    _36c2.Closure closure = table["stop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDetails() {
    _36c2.Closure closure = table["toStringDetails"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didRegisterListener() {
    _36c2.Closure closure = table["didRegisterListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUnregisterListener() {
    _36c2.Closure closure = table["didUnregisterListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clearListeners() {
    _36c2.Closure closure = table["clearListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addStatusListener(listener) {
    _36c2.Closure closure = table["addStatusListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeStatusListener(listener) {
    _36c2.Closure closure = table["removeStatusListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clearStatusListeners() {
    _36c2.Closure closure = table["clearStatusListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyStatusListeners(status) {
    _36c2.Closure closure = table["notifyStatusListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<U> drive<U>(child) {
    _36c2.Closure closure = table["drive"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<U>, U>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isDismissed {
    _36c2.Closure closure = table["getIsDismissed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isCompleted {
    _36c2.Closure closure = table["getIsCompleted"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAnimationController(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['animationController'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAnimationController(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          animationBehavior: _36c2.maybeUnBoxEnum(
              values: _c169.AnimationBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['animationBehavior']
                  : null),
          debugLabel: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['debugLabel']
              : null,
          duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          lowerBound: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['lowerBound']
              : null?.toDouble(),
          reverseDuration:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['reverseDuration']
                      : null,
                  parentState: hydroState),
          upperBound: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['upperBound']
              : null?.toDouble(),
          value: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null?.toDouble(),
          vsync: _36c2.maybeUnBoxAndBuildArgument<_e067.TickerProvider, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['vsync'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_c169.AnimationController>(boxer: (
      {required _c169.AnimationController vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimationController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
