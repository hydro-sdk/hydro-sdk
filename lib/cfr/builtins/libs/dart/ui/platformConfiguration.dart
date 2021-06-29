import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedPlatformConfiguration
    extends VMManagedBox<PlatformConfiguration> {
  VMManagedPlatformConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['accessibilityFeatures'] = maybeBoxObject<AccessibilityFeatures>(
        object: vmObject.accessibilityFeatures,
        hydroState: hydroState,
        table: HydroTable());
    table['alwaysUse24HourFormat'] = vmObject.alwaysUse24HourFormat;
    table['semanticsEnabled'] = vmObject.semanticsEnabled;
    table['platformBrightness'] = Brightness.values.indexWhere((x) {
      return x == vmObject.platformBrightness;
    });
    table['textScaleFactor'] = vmObject.textScaleFactor;
    table['locales'] = maybeBoxObject<List<dynamic>>(
        object: vmObject.locales, hydroState: hydroState, table: HydroTable());
    table['defaultRouteName'] = vmObject.defaultRouteName;
    table['copyWith'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PlatformConfiguration>(
            object: vmObject.copyWith(
                accessibilityFeatures:
                    maybeUnBoxAndBuildArgument<AccessibilityFeatures?>(
                        args[1]['accessibilityFeatures'],
                        parentState: hydroState),
                alwaysUse24HourFormat: args[1]['alwaysUse24HourFormat'],
                defaultRouteName: args[1]['defaultRouteName'],
                locales: maybeUnBoxAndBuildArgument<List<Locale>?>(
                    args[1]['locales'],
                    parentState: hydroState),
                platformBrightness: maybeUnBoxEnum(
                    values: Brightness.values,
                    boxedEnum: args[1]['platformBrightness']),
                semanticsEnabled: args[1]['semanticsEnabled'],
                textScaleFactor: args[1]['textScaleFactor']?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PlatformConfiguration vmObject;
}

class RTManagedPlatformConfiguration extends PlatformConfiguration
    implements Box<PlatformConfiguration> {
  RTManagedPlatformConfiguration(
      {required AccessibilityFeatures accessibilityFeatures,
      required bool alwaysUse24HourFormat,
      String? defaultRouteName,
      required List locales,
      required Brightness platformBrightness,
      required bool semanticsEnabled,
      required double textScaleFactor,
      required this.table,
      required this.hydroState})
      : super(
            accessibilityFeatures: accessibilityFeatures,
            alwaysUse24HourFormat: alwaysUse24HourFormat,
            defaultRouteName: defaultRouteName,
            locales: locales,
            platformBrightness: platformBrightness,
            semanticsEnabled: semanticsEnabled,
            textScaleFactor: textScaleFactor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['accessibilityFeatures'] = maybeBoxObject<AccessibilityFeatures>(
        object: accessibilityFeatures,
        hydroState: hydroState,
        table: HydroTable());
    table['alwaysUse24HourFormat'] = alwaysUse24HourFormat;
    table['semanticsEnabled'] = semanticsEnabled;
    table['platformBrightness'] = Brightness.values.indexWhere((x) {
      return x == platformBrightness;
    });
    table['textScaleFactor'] = textScaleFactor;
    table['locales'] = maybeBoxObject<List<dynamic>>(
        object: locales, hydroState: hydroState, table: HydroTable());
    table['defaultRouteName'] = defaultRouteName;
    table['_dart_copyWith'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PlatformConfiguration>(
            object: super.copyWith(
                accessibilityFeatures:
                    maybeUnBoxAndBuildArgument<AccessibilityFeatures?>(
                        args[1]['accessibilityFeatures'],
                        parentState: hydroState),
                alwaysUse24HourFormat: args[1]['alwaysUse24HourFormat'],
                defaultRouteName: args[1]['defaultRouteName'],
                locales: maybeUnBoxAndBuildArgument<List<Locale>?>(
                    args[1]['locales'],
                    parentState: hydroState),
                platformBrightness: maybeUnBoxEnum(
                    values: Brightness.values,
                    boxedEnum: args[1]['platformBrightness']),
                semanticsEnabled: args[1]['semanticsEnabled'],
                textScaleFactor: args[1]['textScaleFactor']?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PlatformConfiguration unwrap() => this;
  PlatformConfiguration get vmObject => this;
  @override
  PlatformConfiguration copyWith(
      {AccessibilityFeatures? accessibilityFeatures,
      bool? alwaysUse24HourFormat,
      String? defaultRouteName,
      List? locales,
      Brightness? platformBrightness,
      bool? semanticsEnabled,
      double? textScaleFactor}) {
    Closure closure = table["copyWith"];
    return maybeUnBoxAndBuildArgument<PlatformConfiguration>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadPlatformConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['platformConfiguration'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedPlatformConfiguration(
          table: args[0],
          hydroState: hydroState,
          accessibilityFeatures:
              maybeUnBoxAndBuildArgument<AccessibilityFeatures>(
                  args[1]['accessibilityFeatures'],
                  parentState: hydroState),
          alwaysUse24HourFormat: args[1]['alwaysUse24HourFormat'],
          defaultRouteName: args[1]['defaultRouteName'],
          locales: maybeUnBoxAndBuildArgument<List<Locale>>(args[1]['locales'],
              parentState: hydroState),
          platformBrightness: maybeUnBoxEnum(
              values: Brightness.values,
              boxedEnum: args[1]['platformBrightness']),
          semanticsEnabled: args[1]['semanticsEnabled'],
          textScaleFactor: args[1]['textScaleFactor']?.toDouble())
    ];
  });
  registerBoxer<PlatformConfiguration>(boxer: (
      {required PlatformConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPlatformConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
