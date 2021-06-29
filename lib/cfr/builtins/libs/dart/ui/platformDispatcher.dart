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

class VMManagedPlatformDispatcher extends VMManagedBox<PlatformDispatcher> {
  VMManagedPlatformDispatcher(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getConfiguration'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PlatformConfiguration>(
            object: vmObject.configuration,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getOnPlatformConfigurationChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnPlatformConfigurationChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onPlatformConfigurationChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getViews'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.views, hydroState: hydroState, table: HydroTable())
      ];
    });
    table['getOnMetricsChanged'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnMetricsChanged'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onMetricsChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnBeginFrame'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnBeginFrame'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onBeginFrame = (unpackedcallback != null
          ? (duration) => unpackedcallback.dispatch(
                [args[0], duration],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnDrawFrame'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnDrawFrame'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onDrawFrame = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnPointerDataPacket'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnPointerDataPacket'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onPointerDataPacket = (unpackedcallback != null
          ? (packet) => unpackedcallback.dispatch(
                [args[0], packet],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnReportTimings'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnReportTimings'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onReportTimings = (unpackedcallback != null
          ? (timings) => unpackedcallback.dispatch(
                [args[0], timings],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['sendPlatformMessage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[3];
      vmObject.sendPlatformMessage(
          args[1],
          maybeUnBoxAndBuildArgument<ByteData?>(args[2],
              parentState: hydroState),
          unpackedcallback != null
              ? (data) => unpackedcallback.dispatch(
                    [args[0], data],
                    parentState: hydroState,
                  )
              : null);
      return [];
    });
    table['getOnPlatformMessage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnPlatformMessage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onPlatformMessage = (unpackedcallback != null
          ? (name, data, callback) => unpackedcallback.dispatch(
                [args[0], name, data, callback],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['setIsolateDebugName'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setIsolateDebugName(args[1]);
      return [];
    });
    table['getPersistentIsolateData'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteData?>(
            object: vmObject.getPersistentIsolateData(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['scheduleFrame'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.scheduleFrame();
      return [];
    });
    table['getAccessibilityFeatures'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<AccessibilityFeatures>(
            object: vmObject.accessibilityFeatures,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getOnAccessibilityFeaturesChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnAccessibilityFeaturesChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onAccessibilityFeaturesChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['updateSemantics'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.updateSemantics(maybeUnBoxAndBuildArgument<SemanticsUpdate>(
          args[1],
          parentState: hydroState));
      return [];
    });
    table['getLocale'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Locale>(
            object: vmObject.locale,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getLocales'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Locale?>(
            object: vmObject.computePlatformResolvedLocale(
                maybeUnBoxAndBuildArgument<List<Locale>>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getOnLocaleChanged'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnLocaleChanged'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onLocaleChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getInitialLifecycleState'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.initialLifecycleState];
    });
    table['getAlwaysUse24HourFormat'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.alwaysUse24HourFormat];
    });
    table['getTextScaleFactor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.textScaleFactor];
    });
    table['getOnTextScaleFactorChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnTextScaleFactorChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onTextScaleFactorChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getPlatformBrightness'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        Brightness.values.indexWhere((x) {
          return x == vmObject.platformBrightness;
        })
      ];
    });
    table['getOnPlatformBrightnessChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnPlatformBrightnessChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onPlatformBrightnessChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getSemanticsEnabled'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.semanticsEnabled];
    });
    table['getOnSemanticsEnabledChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnSemanticsEnabledChanged'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onSemanticsEnabledChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  args[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnSemanticsAction'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [];
    });
    table['setOnSemanticsAction'] = makeLuaDartFunc(func: (List<dynamic> args) {
      Closure? unpackedcallback = args[1];
      vmObject.onSemanticsAction = (unpackedcallback != null
          ? (id, action, args) => unpackedcallback.dispatch(
                [args[0], id, action, args],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getDefaultRouteName'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.defaultRouteName];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PlatformDispatcher vmObject;
}

void loadPlatformDispatcher(
    {required HydroState hydroState, required HydroTable table}) {
  table['platformDispatcherInstance'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<PlatformDispatcher>(
          object: PlatformDispatcher.instance,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<PlatformDispatcher>(boxer: (
      {required PlatformDispatcher vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPlatformDispatcher(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
