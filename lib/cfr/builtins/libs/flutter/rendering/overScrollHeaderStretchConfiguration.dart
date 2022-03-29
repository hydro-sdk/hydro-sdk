import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/sliver_persistent_header.dart' as _2805;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOverScrollHeaderStretchConfiguration
    extends _36c2.VMManagedBox<_2805.OverScrollHeaderStretchConfiguration> {
  VMManagedOverScrollHeaderStretchConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['stretchTriggerOffset'] = vmObject.stretchTriggerOffset;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2805.OverScrollHeaderStretchConfiguration vmObject;
}

class RTManagedOverScrollHeaderStretchConfiguration
    extends _2805.OverScrollHeaderStretchConfiguration
    implements _36c2.Box<_2805.OverScrollHeaderStretchConfiguration> {
  RTManagedOverScrollHeaderStretchConfiguration(
      {_7de1.Future<void> Function()? onStretchTrigger,
      required _fac9.double stretchTriggerOffset,
      required this.table,
      required this.hydroState})
      : super(
            onStretchTrigger: onStretchTrigger,
            stretchTriggerOffset: stretchTriggerOffset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['stretchTriggerOffset'] = _36c2.maybeBoxObject(
        object: this.stretchTriggerOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2805.OverScrollHeaderStretchConfiguration unwrap() => this;
  _2805.OverScrollHeaderStretchConfiguration get vmObject => this;
}

void loadOverScrollHeaderStretchConfiguration(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['overScrollHeaderStretchConfiguration'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonStretchTrigger = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onStretchTrigger']
        : null;

    return [
      RTManagedOverScrollHeaderStretchConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onStretchTrigger: unpackedonStretchTrigger != null
              ? () =>
                  _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                      unpackedonStretchTrigger.dispatch(
                        [luaCallerArguments[0]],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)
              : null,
          stretchTriggerOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['stretchTriggerOffset']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_2805.OverScrollHeaderStretchConfiguration>(boxer: (
      {required _2805.OverScrollHeaderStretchConfiguration vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedOverScrollHeaderStretchConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
