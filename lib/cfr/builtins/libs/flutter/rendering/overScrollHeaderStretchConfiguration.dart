import 'dart:async';
import 'dart:core';

import 'package:flutter/src/rendering/sliver_persistent_header.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedOverScrollHeaderStretchConfiguration
    extends VMManagedBox<OverScrollHeaderStretchConfiguration> {
  VMManagedOverScrollHeaderStretchConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['stretchTriggerOffset'] = vmObject.stretchTriggerOffset;
  }

  final HydroTable table;

  final HydroState hydroState;

  final OverScrollHeaderStretchConfiguration vmObject;
}

class RTManagedOverScrollHeaderStretchConfiguration
    extends OverScrollHeaderStretchConfiguration
    implements Box<OverScrollHeaderStretchConfiguration> {
  RTManagedOverScrollHeaderStretchConfiguration(
      {onStretchTrigger,
      required double stretchTriggerOffset,
      required this.table,
      required this.hydroState})
      : super(
            onStretchTrigger: onStretchTrigger,
            stretchTriggerOffset: stretchTriggerOffset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['stretchTriggerOffset'] = this.stretchTriggerOffset;
  }

  final HydroTable table;

  final HydroState hydroState;

  OverScrollHeaderStretchConfiguration unwrap() => this;
  OverScrollHeaderStretchConfiguration get vmObject => this;
}

void loadOverScrollHeaderStretchConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['overScrollHeaderStretchConfiguration'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonStretchTrigger = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onStretchTrigger']
        : null;

    return [
      RTManagedOverScrollHeaderStretchConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onStretchTrigger: unpackedonStretchTrigger != null
              ? () => maybeUnBoxAndBuildArgument<Future<void>, void>(
                  unpackedonStretchTrigger.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          stretchTriggerOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['stretchTriggerOffset']
              : null?.toDouble())
    ];
  });
  registerBoxer<OverScrollHeaderStretchConfiguration>(boxer: (
      {required OverScrollHeaderStretchConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedOverScrollHeaderStretchConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
