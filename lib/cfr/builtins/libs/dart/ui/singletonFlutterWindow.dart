import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedSingletonFlutterWindow
    extends VMManagedBox<SingletonFlutterWindow> {
  VMManagedSingletonFlutterWindow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getOnMetricsChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnMetricsChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onMetricsChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Locale>(
            object: vmObject.locale,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getLocales'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.locales
                .map((x) => maybeBoxObject<Locale>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['computePlatformResolvedLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Locale?>(
            object: vmObject.computePlatformResolvedLocale(
                maybeUnBoxAndBuildArgument<List<Locale>>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getOnLocaleChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnLocaleChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onLocaleChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getInitialLifecycleState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.initialLifecycleState];
    });
    table['getTextScaleFactor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.textScaleFactor];
    });
    table['getAlwaysUse24HourFormat'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.alwaysUse24HourFormat];
    });
    table['getOnTextScaleFactorChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnTextScaleFactorChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onTextScaleFactorChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getPlatformBrightness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        Brightness.values.indexWhere((x) {
          return x == vmObject.platformBrightness;
        })
      ];
    });
    table['getOnPlatformBrightnessChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnPlatformBrightnessChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onPlatformBrightnessChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnBeginFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnBeginFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onBeginFrame = (unpackedcallback != null
          ? (duration) => unpackedcallback.dispatch(
                [luaCallerArguments[0], duration],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnDrawFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnDrawFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onDrawFrame = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnReportTimings'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnReportTimings'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onReportTimings = (unpackedcallback != null
          ? (timings) => unpackedcallback.dispatch(
                [luaCallerArguments[0], timings],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnPointerDataPacket'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnPointerDataPacket'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onPointerDataPacket = (unpackedcallback != null
          ? (packet) => unpackedcallback.dispatch(
                [luaCallerArguments[0], packet],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getDefaultRouteName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.defaultRouteName];
    });
    table['scheduleFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleFrame();
      return [];
    });
    table['getSemanticsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.semanticsEnabled];
    });
    table['getOnSemanticsEnabledChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnSemanticsEnabledChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onSemanticsEnabledChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnSemanticsAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnSemanticsAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onSemanticsAction = (unpackedcallback != null
          ? (id, action, args) => unpackedcallback.dispatch(
                [luaCallerArguments[0], id, action, args],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getAccessibilityFeatures'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AccessibilityFeatures>(
            object: vmObject.accessibilityFeatures,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getOnAccessibilityFeaturesChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnAccessibilityFeaturesChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onAccessibilityFeaturesChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['updateSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.updateSemantics(maybeUnBoxAndBuildArgument<SemanticsUpdate>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['sendPlatformMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[3];
      vmObject.sendPlatformMessage(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<ByteData?>(luaCallerArguments[2],
              parentState: hydroState),
          unpackedcallback != null
              ? (data) => unpackedcallback.dispatch(
                    [luaCallerArguments[0], data],
                    parentState: hydroState,
                  )
              : null);
      return [];
    });
    table['getOnPlatformMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [];
    });
    table['setOnPlatformMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onPlatformMessage = (unpackedcallback != null
          ? (name, data, callback) => unpackedcallback.dispatch(
                [luaCallerArguments[0], name, data, callback],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['setIsolateDebugName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setIsolateDebugName(luaCallerArguments[1]);
      return [];
    });
    table['getPlatformDispatcher'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PlatformDispatcher>(
            object: vmObject.platformDispatcher,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getViewConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: vmObject.viewConfiguration,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['render'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.render(maybeUnBoxAndBuildArgument<Scene>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getDevicePixelRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.devicePixelRatio];
    });
    table['getPhysicalGeometry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.physicalGeometry,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getPhysicalSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.physicalSize,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getViewInsets'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.viewInsets,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getViewPadding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.viewPadding,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getSystemGestureInsets'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.systemGestureInsets,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getPadding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<WindowPadding>(
            object: vmObject.padding,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.toString()];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SingletonFlutterWindow vmObject;
}

void loadSingletonFlutterWindow(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<SingletonFlutterWindow>(boxer: (
      {required SingletonFlutterWindow vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSingletonFlutterWindow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
