import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/cupertino/route.dart' as _76db;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/pages.dart' as _18d3;
import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoRouteTransitionMixin extends _36c2
    .VMManagedBox<_76db.CupertinoRouteTransitionMixin<_fac9.dynamic>> {
  VMManagedCupertinoRouteTransitionMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.title;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getPreviousTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e644.ValueListenable>(
            object: vmObject.previousTitle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didChangePrevious'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangePrevious(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getTransitionDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.transitionDuration,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getBarrierColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.barrierColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getBarrierLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.barrierLabel;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['canTransitionTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.canTransitionTo(_36c2.maybeUnBoxAndBuildArgument<
            _8c2a.TransitionRoute<_fac9.dynamic>,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getPopGestureInProgress'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.popGestureInProgress,
      ];
    });
    table['getPopGestureEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.popGestureEnabled,
      ];
    });
    table['buildPage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildPage(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
                        _fac9.double>(luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
                    _fac9.double>(luaCallerArguments[3], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildTransitions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildTransitions(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
                        _fac9.double>(luaCallerArguments[2],
                    parentState: hydroState),
                _36c2
                    .maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                        luaCallerArguments[3],
                        parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[4],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _76db.CupertinoRouteTransitionMixin<_fac9.dynamic> vmObject;
}

void loadCupertinoRouteTransitionMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoRouteTransitionMixinIsPopGestureInProgress'] = _36c2
      .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _76db.CupertinoRouteTransitionMixin.isPopGestureInProgress(
          _36c2.maybeUnBoxAndBuildArgument<_18d3.PageRoute<_fac9.dynamic>,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
    ];
  });
  table['cupertinoRouteTransitionMixinBuildPageTransitions'] = _36c2
      .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_e2dc.Widget>(
          object: _76db.CupertinoRouteTransitionMixin.buildPageTransitions(
              _36c2.maybeUnBoxAndBuildArgument<_18d3.PageRoute<_fac9.dynamic>, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                  luaCallerArguments[3],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
                  _fac9.double>(luaCallerArguments[4], parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  luaCallerArguments[5],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_76db.CupertinoRouteTransitionMixin>(boxer: (
      {required _76db.CupertinoRouteTransitionMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoRouteTransitionMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
