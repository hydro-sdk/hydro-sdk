import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/services/restoration.dart' as _6d4f;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/overlay.dart' as _0049;
import 'package:flutter/src/widgets/restoration.dart' as _487b;
import 'package:flutter/src/widgets/ticker_provider.dart' as _3e16;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNavigatorState extends _36c2.VMManagedBox<_a37d.NavigatorState> {
  VMManagedNavigatorState(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['focusScopeNode'] = _36c2.maybeBoxObject<_b485.FocusScopeNode>(
        object: vmObject.focusScopeNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['userGestureInProgressNotifier'] =
        _36c2.maybeBoxObject<_e644.ValueNotifier>(
            object: vmObject.userGestureInProgressNotifier,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initState();
      return [];
    });
    table['restoreState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.restoreState(
          _36c2.maybeUnBoxAndBuildArgument<_6d4f.RestorationBucket?,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['didToggleBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didToggleBucket(_36c2.maybeUnBoxAndBuildArgument<
          _6d4f.RestorationBucket?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getRestorationId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.restorationId;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeDependencies();
      return [];
    });
    table['didUpdateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateWidget(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Navigator, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deactivate();
      return [];
    });
    table['activate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.activate();
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getOverlay'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.overlay;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_0049.OverlayState?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['pushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pushNamed(luaCallerArguments[1],
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.restorablePushNamed(luaCallerArguments[1],
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['arguments']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['pushReplacementNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pushReplacementNamed(luaCallerArguments[1],
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePushReplacementNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.restorablePushReplacementNamed(luaCallerArguments[1],
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['arguments']
                        : null,
                    parentState: hydroState),
            result: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['result']
                : null),
      ];
    });
    table['popAndPushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.popAndPushNamed(luaCallerArguments[1],
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePopAndPushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.restorablePopAndPushNamed(luaCallerArguments[1],
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['arguments']
                        : null,
                    parentState: hydroState),
            result: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['result']
                : null),
      ];
    });
    table['pushNamedAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pushNamedAndRemoveUntil(
                luaCallerArguments[1],
                (route) => unpackedpredicate.dispatch(
                      [luaCallerArguments[0], route],
                      parentState: hydroState,
                    )[0],
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePushNamedAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        vmObject.restorablePushNamedAndRemoveUntil(
            luaCallerArguments[1],
            (route) => unpackedpredicate.dispatch(
                  [luaCallerArguments[0], route],
                  parentState: hydroState,
                )[0],
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['arguments']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['push'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.push(_36c2.maybeUnBoxAndBuildArgument<
                _a37d.Route<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedrouteBuilder = luaCallerArguments[1];
      return [
        vmObject.restorablePush(
            (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<
                    _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                unpackedrouteBuilder.dispatch(
                  [luaCallerArguments[0], context, arguments],
                  parentState: hydroState,
                )[0],
                parentState: hydroState),
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['arguments']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['pushReplacement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pushReplacement(
                _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePushReplacement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedrouteBuilder = luaCallerArguments[1];

      return [
        vmObject.restorablePushReplacement(
            (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<
                    _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                unpackedrouteBuilder.dispatch(
                  [luaCallerArguments[0], context, arguments],
                  parentState: hydroState,
                )[0],
                parentState: hydroState),
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['arguments']
                        : null,
                    parentState: hydroState),
            result: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['result']
                : null),
      ];
    });
    table['pushAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pushAndRemoveUntil(
                _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                (route) => unpackedpredicate.dispatch(
                      [luaCallerArguments[0], route],
                      parentState: hydroState,
                    )[0]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['restorablePushAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackednewRouteBuilder = luaCallerArguments[1];
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        vmObject.restorablePushAndRemoveUntil(
            (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<
                    _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                unpackednewRouteBuilder.dispatch(
                  [luaCallerArguments[0], context, arguments],
                  parentState: hydroState,
                )[0],
                parentState: hydroState),
            (route) => unpackedpredicate.dispatch(
                  [luaCallerArguments[0], route],
                  parentState: hydroState,
                )[0],
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['arguments']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['replace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.replace(
          newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newRoute']
                  : null,
              parentState: hydroState),
          oldRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['oldRoute']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['restorableReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackednewRouteBuilder = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['newRouteBuilder']
          : null;
      return [
        vmObject.restorableReplace(
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['arguments']
                        : null,
                    parentState: hydroState),
            newRouteBuilder: (context, arguments) =>
                _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                        _fac9.dynamic>(
                    unpackednewRouteBuilder.dispatch(
                      [luaCallerArguments[0], context, arguments],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
            oldRoute: _36c2.maybeUnBoxAndBuildArgument<
                    _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['oldRoute']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['replaceRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.replaceRouteBelow(
          anchorRoute: _36c2.maybeUnBoxAndBuildArgument<
                  _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['anchorRoute']
                  : null,
              parentState: hydroState),
          newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newRoute']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['restorableReplaceRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackednewRouteBuilder = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['newRouteBuilder']
          : null;
      return [
        vmObject.restorableReplaceRouteBelow(
            arguments:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['arguments']
                        : null,
                    parentState: hydroState),
            anchorRoute: _36c2.maybeUnBoxAndBuildArgument<
                    _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['anchorRoute']
                    : null,
                parentState: hydroState),
            newRouteBuilder: (context, arguments) => _36c2
                .maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                    unpackednewRouteBuilder.dispatch(
                      [luaCallerArguments[0], context, arguments],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
      ];
    });
    table['canPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.canPop(),
      ];
    });
    table['maybePop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.maybePop(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['pop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.pop(luaCallerArguments[1]);
      return [];
    });
    table['popUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[1];
      vmObject.popUntil((route) => unpackedpredicate.dispatch(
            [luaCallerArguments[0], route],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['removeRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeRoute(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['removeRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeRouteBelow(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['finalizeRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.finalizeRoute(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getUserGestureInProgress'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.userGestureInProgress,
      ];
    });
    table['didStartUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStartUserGesture();
      return [];
    });
    table['didStopUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStopUserGesture();
      return [];
    });
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createTicker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonTick = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_e067.Ticker>(
            object: vmObject.createTicker((elapsed) => unpackedonTick.dispatch(
                  [luaCallerArguments[0], elapsed],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.bucket;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6d4f.RestorationBucket?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getRestorePending'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.restorePending,
      ];
    });
    table['getWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a37d.Navigator>(
            object: vmObject.widget,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.BuildContext>(
            object: vmObject.context,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMounted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.mounted,
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
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

  final _a37d.NavigatorState vmObject;
}

class RTManagedNavigatorState extends _a37d.NavigatorState
    implements _36c2.Box<_a37d.NavigatorState> {
  RTManagedNavigatorState({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['focusScopeNode'] = _36c2.maybeBoxObject(
        object: focusScopeNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['userGestureInProgressNotifier'] = _36c2.maybeBoxObject(
        object: userGestureInProgressNotifier,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initState();
      return [];
    });
    table['_dart_restoreState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.restoreState(
          _36c2.maybeUnBoxAndBuildArgument<_6d4f.RestorationBucket?,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_didToggleBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didToggleBucket(_36c2.maybeUnBoxAndBuildArgument<
          _6d4f.RestorationBucket?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getRestorationId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.restorationId];
    });
    table['_dart_didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeDependencies();
      return [];
    });
    table['_dart_didUpdateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateWidget(
          _36c2.maybeUnBoxAndBuildArgument<_a37d.Navigator, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deactivate();
      return [];
    });
    table['_dart_activate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.activate();
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getOverlay'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.overlay];
    });
    table['_dart_pushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.pushNamed(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.restorablePushNamed(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushReplacementNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.pushReplacementNamed(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePushReplacementNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.restorablePushReplacementNamed(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_popAndPushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.popAndPushNamed(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePopAndPushNamed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.restorablePopAndPushNamed(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushNamedAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject(
            object: super.pushNamedAndRemoveUntil(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                (route) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedpredicate.dispatch(
                          [luaCallerArguments[0], route],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePushNamedAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject(
            object: super.restorablePushNamedAndRemoveUntil(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                (route) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedpredicate.dispatch(
                          [luaCallerArguments[0], route],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_push'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.push(_36c2.maybeUnBoxAndBuildArgument<
                _a37d.Route<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePush'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedrouteBuilder = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.restorablePush(
                (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<
                        _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedrouteBuilder.dispatch(
                      [luaCallerArguments[0], context, arguments],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushReplacement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.pushReplacement(
                _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePushReplacement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedrouteBuilder = luaCallerArguments[1];

      return [
        _36c2.maybeBoxObject(
            object: super.restorablePushReplacement(
                (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<
                        _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedrouteBuilder.dispatch(
                      [luaCallerArguments[0], context, arguments],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['arguments']
                            : null,
                        parentState: hydroState),
                result: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['result']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject(
            object: super.pushAndRemoveUntil(
                _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                (route) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedpredicate.dispatch(
                          [luaCallerArguments[0], route],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_restorablePushAndRemoveUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackednewRouteBuilder = luaCallerArguments[1];
      _36c2.Closure unpackedpredicate = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject(
            object: super.restorablePushAndRemoveUntil(
                (context, arguments) => _36c2.maybeUnBoxAndBuildArgument<
                        _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                    unpackednewRouteBuilder.dispatch(
                      [luaCallerArguments[0], context, arguments],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
                (route) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedpredicate.dispatch(
                          [luaCallerArguments[0], route],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['arguments']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_replace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.replace(
          newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newRoute']
                  : null,
              parentState: hydroState),
          oldRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['oldRoute']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_restorableReplace'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackednewRouteBuilder = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['newRouteBuilder']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.restorableReplace(
                arguments:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['arguments']
                            : null,
                        parentState: hydroState),
                newRouteBuilder: (context, arguments) =>
                    _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                            _fac9.dynamic>(
                        unpackednewRouteBuilder.dispatch(
                          [luaCallerArguments[0], context, arguments],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                oldRoute: _36c2.maybeUnBoxAndBuildArgument<
                        _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['oldRoute']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_replaceRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.replaceRouteBelow(
          anchorRoute: _36c2.maybeUnBoxAndBuildArgument<
                  _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['anchorRoute']
                  : null,
              parentState: hydroState),
          newRoute: _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['newRoute']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_restorableReplaceRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackednewRouteBuilder = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['newRouteBuilder']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.restorableReplaceRouteBelow(
                arguments: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['arguments']
                            : null,
                        parentState: hydroState),
                anchorRoute: _36c2.maybeUnBoxAndBuildArgument<
                        _a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['anchorRoute']
                        : null,
                    parentState: hydroState),
                newRouteBuilder: (context, arguments) =>
                    _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>, _fac9.dynamic>(
                        unpackednewRouteBuilder.dispatch(
                          [luaCallerArguments[0], context, arguments],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_canPop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.canPop(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_maybePop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.maybePop(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pop'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.pop(luaCallerArguments[1]);
      return [];
    });
    table['_dart_popUntil'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpredicate = luaCallerArguments[1];
      super.popUntil((route) =>
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              unpackedpredicate.dispatch(
                [luaCallerArguments[0], route],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeRoute(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_removeRouteBelow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeRouteBelow(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_finalizeRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.finalizeRoute(_36c2.maybeUnBoxAndBuildArgument<
          _a37d.Route<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getUserGestureInProgress'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.userGestureInProgress];
    });
    table['_dart_didStartUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStartUserGesture();
      return [];
    });
    table['_dart_didStopUserGesture'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStopUserGesture();
      return [];
    });
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createTicker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonTick = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.createTicker((elapsed) => unpackedonTick.dispatch(
                  [luaCallerArguments[0], elapsed],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_registerForRestoration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.registerForRestoration(
          _36c2.maybeUnBoxAndBuildArgument<
              _487b.RestorableProperty<_fac9.Object?>,
              _fac9.Object?>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_unregisterFromRestoration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.unregisterFromRestoration(_36c2.maybeUnBoxAndBuildArgument<
          _487b.RestorableProperty<_fac9.Object?>,
          _fac9.Object?>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_didUpdateRestorationId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateRestorationId();
      return [];
    });
    table['_dart_getBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.bucket];
    });
    table['_dart_getRestorePending'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.restorePending];
    });
    table['_dart_reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
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
    table['_dart_getWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.widget];
    });
    table['_dart_getContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.context];
    });
    table['_dart_getMounted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mounted];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
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

  _a37d.NavigatorState unwrap() => this;
  _a37d.NavigatorState get vmObject => this;
  @_fac9.override
  void initState() {
    super.initState();
    _36c2.Closure closure = table["initState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void restoreState(oldBucket, initialRestore) {
    super.restoreState(oldBucket, initialRestore);
    _36c2.Closure closure = table["restoreState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didToggleBucket(oldBucket) {
    super.didToggleBucket(oldBucket);
    _36c2.Closure closure = table["didToggleBucket"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String? get restorationId {
    _36c2.Closure closure = table["getRestorationId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _36c2.Closure closure = table["didChangeDependencies"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _36c2.Closure closure = table["didUpdateWidget"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deactivate() {
    super.deactivate();
    _36c2.Closure closure = table["deactivate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void activate() {
    super.activate();
    _36c2.Closure closure = table["activate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _0049.OverlayState? get overlay {
    _36c2.Closure closure = table["getOverlay"];
    return _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayState?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<T?> pushNamed<T extends _fac9.Object?>(routeName,
      {_fac9.Object? arguments}) {
    _36c2.Closure closure = table["pushNamed"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePushNamed<T extends _fac9.Object?>(routeName,
      {_fac9.Object? arguments}) {
    _36c2.Closure closure = table["restorablePushNamed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T?>
      pushReplacementNamed<T extends _fac9.Object?, TO extends _fac9.Object?>(
          routeName,
          {_fac9.Object? arguments,
          TO? result}) {
    _36c2.Closure closure = table["pushReplacementNamed"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePushReplacementNamed<T extends _fac9.Object?,
          TO extends _fac9.Object?>(routeName,
      {_fac9.Object? arguments, TO? result}) {
    _36c2.Closure closure = table["restorablePushReplacementNamed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T?>
      popAndPushNamed<T extends _fac9.Object?, TO extends _fac9.Object?>(
          routeName,
          {_fac9.Object? arguments,
          TO? result}) {
    _36c2.Closure closure = table["popAndPushNamed"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePopAndPushNamed<T extends _fac9.Object?,
          TO extends _fac9.Object?>(routeName,
      {_fac9.Object? arguments, TO? result}) {
    _36c2.Closure closure = table["restorablePopAndPushNamed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T?> pushNamedAndRemoveUntil<T extends _fac9.Object?>(
      newRouteName, predicate,
      {_fac9.Object? arguments}) {
    _36c2.Closure closure = table["pushNamedAndRemoveUntil"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePushNamedAndRemoveUntil<T extends _fac9.Object?>(
      newRouteName, predicate,
      {_fac9.Object? arguments}) {
    _36c2.Closure closure = table["restorablePushNamedAndRemoveUntil"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T?> push<T extends _fac9.Object?>(route) {
    _36c2.Closure closure = table["push"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePush<T extends _fac9.Object?>(routeBuilder,
      {_fac9.Object? arguments}) {
    _36c2.Closure closure = table["restorablePush"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T?>
      pushReplacement<T extends _fac9.Object?, TO extends _fac9.Object?>(
          newRoute,
          {TO? result}) {
    _36c2.Closure closure = table["pushReplacement"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePushReplacement<T extends _fac9.Object?,
          TO extends _fac9.Object?>(routeBuilder,
      {_fac9.Object? arguments, TO? result}) {
    _36c2.Closure closure = table["restorablePushReplacement"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T?> pushAndRemoveUntil<T extends _fac9.Object?>(
      newRoute, predicate) {
    _36c2.Closure closure = table["pushAndRemoveUntil"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T?>, T?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String restorablePushAndRemoveUntil<T extends _fac9.Object?>(
      newRouteBuilder, predicate,
      {_fac9.Object? arguments}) {
    _36c2.Closure closure = table["restorablePushAndRemoveUntil"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void replace<T extends _fac9.Object?>(
      {required _a37d.Route newRoute, required _a37d.Route oldRoute}) {
    _36c2.Closure closure = table["replace"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String restorableReplace<T extends _fac9.Object?>(
      {_fac9.Object? arguments,
      required _a37d.Route<T> Function(
              _e2dc.BuildContext context, _fac9.Object? arguments)
          newRouteBuilder,
      required _a37d.Route oldRoute}) {
    _36c2.Closure closure = table["restorableReplace"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void replaceRouteBelow<T extends _fac9.Object?>(
      {required _a37d.Route anchorRoute, required _a37d.Route newRoute}) {
    _36c2.Closure closure = table["replaceRouteBelow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String restorableReplaceRouteBelow<T extends _fac9.Object?>(
      {_fac9.Object? arguments,
      required _a37d.Route anchorRoute,
      required _a37d.Route<T> Function(
              _e2dc.BuildContext context, _fac9.Object? arguments)
          newRouteBuilder}) {
    _36c2.Closure closure = table["restorableReplaceRouteBelow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool canPop() {
    _36c2.Closure closure = table["canPop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.bool> maybePop<T extends _fac9.Object?>([T? result]) {
    _36c2.Closure closure = table["maybePop"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void pop<T extends _fac9.Object?>([T? result]) {
    _36c2.Closure closure = table["pop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void popUntil(predicate) {
    _36c2.Closure closure = table["popUntil"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeRoute(route) {
    _36c2.Closure closure = table["removeRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeRouteBelow(anchorRoute) {
    _36c2.Closure closure = table["removeRouteBelow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void finalizeRoute(route) {
    _36c2.Closure closure = table["finalizeRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get userGestureInProgress {
    _36c2.Closure closure = table["getUserGestureInProgress"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStartUserGesture() {
    _36c2.Closure closure = table["didStartUserGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStopUserGesture() {
    _36c2.Closure closure = table["didStopUserGesture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget build(context) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e067.Ticker createTicker(onTick) {
    _36c2.Closure closure = table["createTicker"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.Ticker, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void registerForRestoration(property, restorationId) {
    _36c2.Closure closure = table["registerForRestoration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void unregisterFromRestoration(property) {
    _36c2.Closure closure = table["unregisterFromRestoration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateRestorationId() {
    _36c2.Closure closure = table["didUpdateRestorationId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _6d4f.RestorationBucket? get bucket {
    _36c2.Closure closure = table["getBucket"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_6d4f.RestorationBucket?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get restorePending {
    _36c2.Closure closure = table["getRestorePending"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void reassemble() {
    super.reassemble();
    _36c2.Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setState(fn) {
    _36c2.Closure closure = table["setState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a37d.Navigator get widget {
    _36c2.Closure closure = table["getWidget"];
    return _36c2.maybeUnBoxAndBuildArgument<_a37d.Navigator, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.BuildContext get context {
    _36c2.Closure closure = table["getContext"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get mounted {
    _36c2.Closure closure = table["getMounted"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadNavigatorState(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['navigatorState'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedNavigatorState(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_a37d.NavigatorState>(boxer: (
      {required _a37d.NavigatorState vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedNavigatorState(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
