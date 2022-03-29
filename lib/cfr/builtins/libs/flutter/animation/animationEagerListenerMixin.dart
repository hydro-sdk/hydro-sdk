import 'dart:core' as _fac9;

import 'package:flutter/src/animation/listener_helpers.dart' as _7ec6;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimationEagerListenerMixin
    extends _36c2.VMManagedBox<_7ec6.AnimationEagerListenerMixin> {
  VMManagedAnimationEagerListenerMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7ec6.AnimationEagerListenerMixin vmObject;
}

void loadAnimationEagerListenerMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7ec6.AnimationEagerListenerMixin>(boxer: (
      {required _7ec6.AnimationEagerListenerMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimationEagerListenerMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
