import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPlatformDispatcher extends VMManagedBox<PlatformDispatcher> {
  VMManagedPlatformDispatcher(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PlatformConfiguration>(
            object: vmObject.configuration,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getOnPlatformConfigurationChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onPlatformConfigurationChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnPlatformConfigurationChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.onPlatformConfigurationChanged = (unpackedcallback != null
          ? () => unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getViews'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Iterable>(
            object: vmObject.views,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getOnMetricsChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onMetricsChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getOnBeginFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onBeginFrame;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
      final returnValue = vmObject.onDrawFrame;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getOnPointerDataPacket'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onPointerDataPacket;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getOnReportTimings'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onReportTimings;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['sendPlatformMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[3];
      vmObject.sendPlatformMessage(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<ByteData?, dynamic>(luaCallerArguments[2],
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
      final returnValue = vmObject.onPlatformMessage;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getPersistentIsolateData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getPersistentIsolateData();
      if (returnValue != null) {
        return [
          maybeBoxObject<ByteData?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['scheduleFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleFrame();
      return [];
    });
    table['getAccessibilityFeatures'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AccessibilityFeatures>(
            object: vmObject.accessibilityFeatures,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getOnAccessibilityFeaturesChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onAccessibilityFeaturesChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
      vmObject.updateSemantics(
          maybeUnBoxAndBuildArgument<SemanticsUpdate, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Locale>(
            object: vmObject.locale,
            hydroState: hydroState,
            table: HydroTable()),
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
            table: HydroTable()),
      ];
    });
    table['computePlatformResolvedLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.computePlatformResolvedLocale(
          maybeUnBoxAndBuildArgument<List<Locale>, Locale>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Locale?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getOnLocaleChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onLocaleChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
      return [
        vmObject.initialLifecycleState,
      ];
    });
    table['getAlwaysUse24HourFormat'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.alwaysUse24HourFormat,
      ];
    });
    table['getTextScaleFactor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.textScaleFactor,
      ];
    });
    table['getOnTextScaleFactorChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onTextScaleFactorChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
        }),
      ];
    });
    table['getOnPlatformBrightnessChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onPlatformBrightnessChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getSemanticsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.semanticsEnabled,
      ];
    });
    table['getOnSemanticsEnabledChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onSemanticsEnabledChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
      final returnValue = vmObject.onSemanticsAction;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getDefaultRouteName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.defaultRouteName,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PlatformDispatcher vmObject;
}

void loadPlatformDispatcher(
    {required HydroState hydroState, required HydroTable table}) {
  table['platformDispatcherInstance'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<PlatformDispatcher>(
          object: PlatformDispatcher.instance,
          hydroState: hydroState,
          table: HydroTable()),
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
