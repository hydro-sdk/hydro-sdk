import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation_controller.dart' as _c169;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/scaffold.dart' as _ece7;
import 'package:flutter/src/material/snack_bar.dart' as _ed7b;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/services/restoration.dart' as _6d4f;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/restoration.dart' as _487b;
import 'package:flutter/src/widgets/ticker_provider.dart' as _3e16;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaffoldState extends _36c2.VMManagedBox<_ece7.ScaffoldState> {
  VMManagedScaffoldState(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['restoreState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.restoreState(
          _36c2.maybeUnBoxAndBuildArgument<_6d4f.RestorationBucket?,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['getHasAppBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasAppBar,
      ];
    });
    table['getHasDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasDrawer,
      ];
    });
    table['getHasEndDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasEndDrawer,
      ];
    });
    table['getHasFloatingActionButton'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasFloatingActionButton,
      ];
    });
    table['getAppBarMaxHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.appBarMaxHeight;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getIsDrawerOpen'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isDrawerOpen,
      ];
    });
    table['getIsEndDrawerOpen'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isEndDrawerOpen,
      ];
    });
    table['openDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.openDrawer();
      return [];
    });
    table['openEndDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.openEndDrawer();
      return [];
    });
    table['showSnackBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ece7.ScaffoldFeatureController>(
            object: vmObject.showSnackBar(
                _36c2.maybeUnBoxAndBuildArgument<_ed7b.SnackBar, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['removeCurrentSnackBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeCurrentSnackBar(
          reason: _36c2.maybeUnBoxEnum(
              values: _ed7b.SnackBarClosedReason.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['reason']
                  : null));
      return [];
    });
    table['hideCurrentSnackBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hideCurrentSnackBar(
          reason: _36c2.maybeUnBoxEnum(
              values: _ed7b.SnackBarClosedReason.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['reason']
                  : null));
      return [];
    });
    table['showBottomSheet'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedbuilder = luaCallerArguments[1];

      return [
        _36c2.maybeBoxObject<_ece7.PersistentBottomSheetController>(
            object: vmObject.showBottomSheet(
                (context) => _36c2
                    .maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                        unpackedbuilder.dispatch(
                          [luaCallerArguments[0], context],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['backgroundColor']
                            : null,
                        parentState: hydroState),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['clipBehavior']
                        : null),
                constraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['constraints'] : null,
                    parentState: hydroState),
                elevation: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['elevation']
                    : null?.toDouble(),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['shape'] : null,
                    parentState: hydroState),
                transitionAnimationController: _36c2.maybeUnBoxAndBuildArgument<_c169.AnimationController?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['transitionAnimationController'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initState();
      return [];
    });
    table['didUpdateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateWidget(
          _36c2.maybeUnBoxAndBuildArgument<_ece7.Scaffold, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeDependencies();
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['showBodyScrim'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showBodyScrim(
          luaCallerArguments[1], luaCallerArguments[2]?.toDouble());
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
        _36c2.maybeBoxObject<_ece7.Scaffold>(
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

  final _ece7.ScaffoldState vmObject;
}

class RTManagedScaffoldState extends _ece7.ScaffoldState
    implements _36c2.Box<_ece7.ScaffoldState> {
  RTManagedScaffoldState({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getRestorationId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.restorationId];
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
    table['_dart_getHasAppBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasAppBar];
    });
    table['_dart_getHasDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasDrawer];
    });
    table['_dart_getHasEndDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasEndDrawer];
    });
    table['_dart_getHasFloatingActionButton'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasFloatingActionButton];
    });
    table['_dart_getAppBarMaxHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.appBarMaxHeight];
    });
    table['_dart_getIsDrawerOpen'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isDrawerOpen];
    });
    table['_dart_getIsEndDrawerOpen'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isEndDrawerOpen];
    });
    table['_dart_openDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.openDrawer();
      return [];
    });
    table['_dart_openEndDrawer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.openEndDrawer();
      return [];
    });
    table['_dart_showSnackBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.showSnackBar(
                _36c2.maybeUnBoxAndBuildArgument<_ed7b.SnackBar, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_removeCurrentSnackBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeCurrentSnackBar(
          reason: _36c2.maybeUnBoxEnum(
              values: _ed7b.SnackBarClosedReason.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['reason']
                  : null));
      return [];
    });
    table['_dart_hideCurrentSnackBar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hideCurrentSnackBar(
          reason: _36c2.maybeUnBoxEnum(
              values: _ed7b.SnackBarClosedReason.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['reason']
                  : null));
      return [];
    });
    table['_dart_showBottomSheet'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedbuilder = luaCallerArguments[1];

      return [
        _36c2.maybeBoxObject(
            object: super.showBottomSheet(
                (context) => _36c2
                    .maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                        unpackedbuilder.dispatch(
                          [luaCallerArguments[0], context],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['backgroundColor']
                            : null,
                        parentState: hydroState),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['clipBehavior']
                        : null),
                constraints:
                    _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['constraints'] : null,
                        parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['elevation'] : null,
                    parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['shape'] : null, parentState: hydroState),
                transitionAnimationController: _36c2.maybeUnBoxAndBuildArgument<_c169.AnimationController?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['transitionAnimationController'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initState();
      return [];
    });
    table['_dart_didUpdateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateWidget(
          _36c2.maybeUnBoxAndBuildArgument<_ece7.Scaffold, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeDependencies();
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_showBodyScrim'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showBodyScrim(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
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
    table['_dart_didToggleBucket'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didToggleBucket(_36c2.maybeUnBoxAndBuildArgument<
          _6d4f.RestorationBucket?,
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
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
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

  _ece7.ScaffoldState unwrap() => this;
  _ece7.ScaffoldState get vmObject => this;
  @_fac9.override
  _fac9.String? get restorationId {
    _36c2.Closure closure = table["getRestorationId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void restoreState(oldBucket, initialRestore) {
    super.restoreState(oldBucket, initialRestore);
    _36c2.Closure closure = table["restoreState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasAppBar {
    _36c2.Closure closure = table["getHasAppBar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasDrawer {
    _36c2.Closure closure = table["getHasDrawer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasEndDrawer {
    _36c2.Closure closure = table["getHasEndDrawer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasFloatingActionButton {
    _36c2.Closure closure = table["getHasFloatingActionButton"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double? get appBarMaxHeight {
    _36c2.Closure closure = table["getAppBarMaxHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get isDrawerOpen {
    _36c2.Closure closure = table["getIsDrawerOpen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isEndDrawerOpen {
    _36c2.Closure closure = table["getIsEndDrawerOpen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void openDrawer() {
    _36c2.Closure closure = table["openDrawer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void openEndDrawer() {
    _36c2.Closure closure = table["openEndDrawer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _ece7.ScaffoldFeatureController<_ed7b.SnackBar, _ed7b.SnackBarClosedReason>
      showSnackBar(snackbar) {
    _36c2.Closure closure = table["showSnackBar"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _ece7.ScaffoldFeatureController<_ed7b.SnackBar,
                _ed7b.SnackBarClosedReason>,
            _ed7b.SnackBar>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void removeCurrentSnackBar(
      {_ed7b.SnackBarClosedReason reason = _ed7b.SnackBarClosedReason.remove}) {
    _36c2.Closure closure = table["removeCurrentSnackBar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void hideCurrentSnackBar(
      {_ed7b.SnackBarClosedReason reason = _ed7b.SnackBarClosedReason.hide}) {
    _36c2.Closure closure = table["hideCurrentSnackBar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _ece7.PersistentBottomSheetController<T> showBottomSheet<T>(builder,
      {_a643.Color? backgroundColor,
      _a643.Clip? clipBehavior,
      _be2e.BoxConstraints? constraints,
      _fac9.double? elevation,
      _6be9.ShapeBorder? shape,
      _c169.AnimationController? transitionAnimationController}) {
    _36c2.Closure closure = table["showBottomSheet"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _ece7.PersistentBottomSheetController<T>,
            T>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void initState() {
    super.initState();
    _36c2.Closure closure = table["initState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _36c2.Closure closure = table["didUpdateWidget"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _36c2.Closure closure = table["didChangeDependencies"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void showBodyScrim(value, opacity) {
    _36c2.Closure closure = table["showBodyScrim"];
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
  void didToggleBucket(oldBucket) {
    super.didToggleBucket(oldBucket);
    _36c2.Closure closure = table["didToggleBucket"];
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
  _ece7.Scaffold get widget {
    _36c2.Closure closure = table["getWidget"];
    return _36c2.maybeUnBoxAndBuildArgument<_ece7.Scaffold, _fac9.dynamic>(
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

void loadScaffoldState(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scaffoldState'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScaffoldState(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_ece7.ScaffoldState>(boxer: (
      {required _ece7.ScaffoldState vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScaffoldState(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
