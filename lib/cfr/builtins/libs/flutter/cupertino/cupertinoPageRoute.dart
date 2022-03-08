import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/animation_controller.dart' as _c169;
import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/cupertino/route.dart' as _76db;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/overlay.dart' as _0049;
import 'package:flutter/src/widgets/pages.dart' as _18d3;
import 'package:flutter/src/widgets/routes.dart' as _8c2a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoPageRoute
    extends _36c2.VMManagedBox<_76db.CupertinoPageRoute<_fac9.dynamic>> {
  VMManagedCupertinoPageRoute(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['title'] = vmObject.title;
    table['maintainState'] = vmObject.maintainState;
    table['fullscreenDialog'] = vmObject.fullscreenDialog;
    table['filter'] = _36c2.maybeBoxObject<_a643.ImageFilter?>(
        object: vmObject.filter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['willDisposeAnimationController'] =
        vmObject.willDisposeAnimationController;
    table['buildContent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildContent(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDebugLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugLabel,
      ];
    });
    table['didChangePrevious'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangePrevious(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
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
    table['canTransitionFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.canTransitionFrom(_36c2.maybeUnBoxAndBuildArgument<
            _8c2a.TransitionRoute<_fac9.dynamic>,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.opaque,
      ];
    });
    table['getBarrierDismissible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.barrierDismissible,
      ];
    });
    table['install'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.install();
      return [];
    });
    table['didPush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerFuture>(
            object: vmObject.didPush(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didAdd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didAdd();
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
    table['addScopedWillPopCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addScopedWillPopCallback(() => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
              unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['removeScopedWillPopCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.removeScopedWillPopCallback(() => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
              unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['changedInternalState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.changedInternalState();
      return [];
    });
    table['changedExternalState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.changedExternalState();
      return [];
    });
    table['createOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.createOverlayEntries(),
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
    table['getSemanticsDismissible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.semanticsDismissible,
      ];
    });
    table['getBarrierCurve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8c47.Curve>(
            object: vmObject.barrierCurve,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMaintainState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maintainState,
      ];
    });
    table['getOffstage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.offstage,
      ];
    });
    table['setOffstage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.offstage = (luaCallerArguments[1]);
      return [];
    });
    table['getSubtreeContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.subtreeContext;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.BuildContext?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.animation;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_86ca.Animation?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getSecondaryAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.secondaryAnimation;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_86ca.Animation?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getCanPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.canPop,
      ];
    });
    table['addLocalHistoryEntry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addLocalHistoryEntry(_36c2.maybeUnBoxAndBuildArgument<
          _8c2a.LocalHistoryEntry,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['removeLocalHistoryEntry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeLocalHistoryEntry(_36c2.maybeUnBoxAndBuildArgument<
          _8c2a.LocalHistoryEntry,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['didPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.didPop(luaCallerArguments[1]),
      ];
    });
    table['getWillHandlePopInternally'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.willHandlePopInternally,
      ];
    });
    table['createAnimationController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_c169.AnimationController>(
            object: vmObject.createAnimationController(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.createAnimation(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didReplace(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['didPopNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didPopNext(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['didChangeNext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeNext(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getCompleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.completed,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getReverseTransitionDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.reverseTransitionDuration,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getFinishedWhenPopped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.finishedWhenPopped,
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _76db.CupertinoPageRoute<_fac9.dynamic> vmObject;
}

class RTManagedCupertinoPageRoute extends _76db.CupertinoPageRoute
    implements _36c2.Box<_76db.CupertinoPageRoute> {
  RTManagedCupertinoPageRoute(
      {required _fac9.bool fullscreenDialog,
      required _fac9.bool maintainState,
      _a37d.RouteSettings? settings,
      _fac9.String? title,
      required _e2dc.Widget Function(_e2dc.BuildContext context) builder,
      required this.table,
      required this.hydroState})
      : super(
            fullscreenDialog: fullscreenDialog,
            maintainState: maintainState,
            settings: settings,
            title: title,
            builder: builder) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['maintainState'] = _36c2.maybeBoxObject(
        object: this.maintainState,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fullscreenDialog'] = _36c2.maybeBoxObject(
        object: this.fullscreenDialog,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['filter'] = _36c2.maybeBoxObject(
        object: filter, hydroState: hydroState, table: _36c2.HydroTable());
    table['willDisposeAnimationController'] = _36c2.maybeBoxObject(
        object: willDisposeAnimationController,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_buildContent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildContent(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDebugLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugLabel];
    });
    table['_dart_didChangePrevious'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangePrevious(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_canTransitionTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.canTransitionTo(_36c2.maybeUnBoxAndBuildArgument<
                _8c2a.TransitionRoute<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildPage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildPage(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
                        _fac9.double>(luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
                        _fac9.double>(luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildTransitions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildTransitions(
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
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [title];
    });
    table['_dart_getPreviousTitle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.previousTitle];
    });
    table['_dart_getTransitionDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.transitionDuration];
    });
    table['_dart_getBarrierColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.barrierColor];
    });
    table['_dart_getBarrierLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.barrierLabel];
    });
    table['_dart_getPopGestureInProgress'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.popGestureInProgress];
    });
    table['_dart_getPopGestureEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.popGestureEnabled];
    });
    table['_dart_canTransitionFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.canTransitionFrom(_36c2.maybeUnBoxAndBuildArgument<
                _8c2a.TransitionRoute<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.opaque];
    });
    table['_dart_getBarrierDismissible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.barrierDismissible];
    });
    table['_dart_setState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedfn = luaCallerArguments[1];
      super.setState(() => unpackedfn.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_install'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.install();
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
    table['_dart_willPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.willPop(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addScopedWillPopCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.addScopedWillPopCallback(() => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
              unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeScopedWillPopCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.removeScopedWillPopCallback(() => _36c2
          .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
              unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
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
    table['_dart_createOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createOverlayEntries(),
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
    table['_dart_getSemanticsDismissible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.semanticsDismissible];
    });
    table['_dart_getBarrierCurve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.barrierCurve];
    });
    table['_dart_getMaintainState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [maintainState];
    });
    table['_dart_getOffstage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.offstage];
    });
    table['_dart_setOffstage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.offstage =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getSubtreeContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.subtreeContext];
    });
    table['_dart_getAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.animation];
    });
    table['_dart_getSecondaryAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.secondaryAnimation];
    });
    table['_dart_getHasScopedWillPopCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasScopedWillPopCallback];
    });
    table['_dart_getCanPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.canPop];
    });
    table['_dart_addLocalHistoryEntry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addLocalHistoryEntry(_36c2.maybeUnBoxAndBuildArgument<
          _8c2a.LocalHistoryEntry,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_removeLocalHistoryEntry'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeLocalHistoryEntry(_36c2.maybeUnBoxAndBuildArgument<
          _8c2a.LocalHistoryEntry,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
    table['_dart_getWillHandlePopInternally'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.willHandlePopInternally];
    });
    table['_dart_createAnimationController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createAnimationController(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createAnimation(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didReplace(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
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
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getCompleted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.completed];
    });
    table['_dart_getReverseTransitionDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reverseTransitionDuration];
    });
    table['_dart_getFinishedWhenPopped'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.finishedWhenPopped];
    });
    table['_dart_getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.controller];
    });
    table['_dart_getOverlayEntries'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.overlayEntries];
    });
    table['_dart_didComplete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didComplete(luaCallerArguments[1]);
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _76db.CupertinoPageRoute unwrap() => this;
  _76db.CupertinoPageRoute get vmObject => this;
  @_fac9.override
  _e2dc.Widget buildContent(context) {
    _36c2.Closure closure = table["buildContent"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get debugLabel {
    _36c2.Closure closure = table["getDebugLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangePrevious(previousRoute) {
    super.didChangePrevious(previousRoute);
    _36c2.Closure closure = table["didChangePrevious"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool canTransitionTo(nextRoute) {
    _36c2.Closure closure = table["canTransitionTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget buildPage(context, animation, secondaryAnimation) {
    _36c2.Closure closure = table["buildPage"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.Widget buildTransitions(context, animation, secondaryAnimation, child) {
    _36c2.Closure closure = table["buildTransitions"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? get title {
    _36c2.Closure closure = table["getTitle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e644.ValueListenable<_fac9.String?> get previousTitle {
    _36c2.Closure closure = table["getPreviousTitle"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e644.ValueListenable<_fac9.String?>, _fac9.String?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Duration get transitionDuration {
    _36c2.Closure closure = table["getTransitionDuration"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get barrierColor {
    _36c2.Closure closure = table["getBarrierColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? get barrierLabel {
    _36c2.Closure closure = table["getBarrierLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get popGestureInProgress {
    _36c2.Closure closure = table["getPopGestureInProgress"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get popGestureEnabled {
    _36c2.Closure closure = table["getPopGestureEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool canTransitionFrom(previousRoute) {
    _36c2.Closure closure = table["canTransitionFrom"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get opaque {
    _36c2.Closure closure = table["getOpaque"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get barrierDismissible {
    _36c2.Closure closure = table["getBarrierDismissible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setState(fn) {
    _36c2.Closure closure = table["setState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void install() {
    super.install();
    _36c2.Closure closure = table["install"];
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
  _7de1.Future<_a37d.RoutePopDisposition> willPop() {
    _36c2.Closure closure = table["willPop"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _7de1.Future<_a37d.RoutePopDisposition>, _a37d.RoutePopDisposition>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void addScopedWillPopCallback(callback) {
    _36c2.Closure closure = table["addScopedWillPopCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeScopedWillPopCallback(callback) {
    _36c2.Closure closure = table["removeScopedWillPopCallback"];
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
  _fac9.Iterable<_0049.OverlayEntry> createOverlayEntries() {
    _36c2.Closure closure = table["createOverlayEntries"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_0049.OverlayEntry>,
            _0049.OverlayEntry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get semanticsDismissible {
    _36c2.Closure closure = table["getSemanticsDismissible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _8c47.Curve get barrierCurve {
    _36c2.Closure closure = table["getBarrierCurve"];
    return _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get maintainState {
    _36c2.Closure closure = table["getMaintainState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get offstage {
    _36c2.Closure closure = table["getOffstage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set offstage(value) {
    _36c2.Closure closure = table["setOffstage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.BuildContext? get subtreeContext {
    _36c2.Closure closure = table["getSubtreeContext"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_fac9.double>? get animation {
    _36c2.Closure closure = table["getAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>?,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_fac9.double>? get secondaryAnimation {
    _36c2.Closure closure = table["getSecondaryAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>?,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get hasScopedWillPopCallback {
    _36c2.Closure closure = table["getHasScopedWillPopCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get canPop {
    _36c2.Closure closure = table["getCanPop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addLocalHistoryEntry(entry) {
    _36c2.Closure closure = table["addLocalHistoryEntry"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeLocalHistoryEntry(entry) {
    _36c2.Closure closure = table["removeLocalHistoryEntry"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool didPop(result) {
    super.didPop(result);
    _36c2.Closure closure = table["didPop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get willHandlePopInternally {
    _36c2.Closure closure = table["getWillHandlePopInternally"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _c169.AnimationController createAnimationController() {
    _36c2.Closure closure = table["createAnimationController"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_c169.AnimationController, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> createAnimation() {
    _36c2.Closure closure = table["createAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void didReplace(oldRoute) {
    super.didReplace(oldRoute);
    _36c2.Closure closure = table["didReplace"];
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
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.dynamic?> get completed {
    _36c2.Closure closure = table["getCompleted"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.dynamic?>,
            _fac9.dynamic?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Duration get reverseTransitionDuration {
    _36c2.Closure closure = table["getReverseTransitionDuration"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get finishedWhenPopped {
    _36c2.Closure closure = table["getFinishedWhenPopped"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _c169.AnimationController? get controller {
    _36c2.Closure closure = table["getController"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_c169.AnimationController?, _fac9.dynamic>(
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
  void didComplete(result) {
    super.didComplete(result);
    _36c2.Closure closure = table["didComplete"];
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
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoPageRoute(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoPageRoute'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedbuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['builder']
        : null;
    return [
      RTManagedCupertinoPageRoute(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          fullscreenDialog: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['fullscreenDialog']
              : null,
          maintainState: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maintainState']
              : null,
          settings: _36c2
              .maybeUnBoxAndBuildArgument<_a37d.RouteSettings?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['settings']
                      : null,
                  parentState: hydroState),
          title: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['title']
              : null,
          builder: (context) =>
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedbuilder.dispatch(
                    [luaCallerArguments[0], context],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_76db.CupertinoPageRoute>(boxer: (
      {required _76db.CupertinoPageRoute vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoPageRoute(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
