import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPluginUtilities extends VMManagedBox<PluginUtilities> {
  VMManagedPluginUtilities(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final PluginUtilities vmObject;
}

void loadPluginUtilities(
    {required HydroState hydroState, required HydroTable table}) {
  table['pluginUtilitiesGetCallbackHandle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = PluginUtilities.getCallbackHandle(
        maybeUnBoxAndBuildArgument<Function, dynamic>(luaCallerArguments[1],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        maybeBoxObject<CallbackHandle?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  table['pluginUtilitiesGetCallbackFromHandle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = PluginUtilities.getCallbackFromHandle(
        maybeUnBoxAndBuildArgument<CallbackHandle, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        maybeBoxObject<Function?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<PluginUtilities>(boxer: (
      {required PluginUtilities vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPluginUtilities(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
