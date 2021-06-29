import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

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
    return [
      maybeBoxObject<CallbackHandle?>(
          object: PluginUtilities.getCallbackHandle(
              maybeUnBoxAndBuildArgument<Function>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['pluginUtilitiesGetCallbackFromHandle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Function?>(
          object: PluginUtilities.getCallbackFromHandle(
              maybeUnBoxAndBuildArgument<CallbackHandle>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<PluginUtilities>(boxer: (
      {required PluginUtilities vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPluginUtilities(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
