import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/binary_messenger.dart' as _71d1;
import 'package:flutter/src/services/binding.dart' as _7e2d;
import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/restoration.dart' as _6d4f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedServicesBinding
    extends _36c2.VMManagedBox<_7e2d.ServicesBinding> {
  VMManagedServicesBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['getKeyboard'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9e29.HardwareKeyboard>(
            object: vmObject.keyboard,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getKeyEventManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9e29.KeyEventManager>(
            object: vmObject.keyEventManager,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDefaultBinaryMessenger'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_71d1.BinaryMessenger>(
            object: vmObject.defaultBinaryMessenger,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getChannelBuffers'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.ChannelBuffers>(
            object: vmObject.channelBuffers,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['initServiceExtensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initServiceExtensions();
      return [];
    });
    table['getRestorationManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6d4f.RestorationManager>(
            object: vmObject.restorationManager,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setSystemUiChangeCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.setSystemUiChangeCallback(unpackedcallback != null
          ? (systemOverlaysAreVisible) =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedcallback.dispatch(
                    [luaCallerArguments[0], systemOverlaysAreVisible],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
          : null);
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7e2d.ServicesBinding vmObject;
}

void loadServicesBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['servicesBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _7e2d.ServicesBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_7e2d.ServicesBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_7e2d.ServicesBinding>(boxer: (
      {required _7e2d.ServicesBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedServicesBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
