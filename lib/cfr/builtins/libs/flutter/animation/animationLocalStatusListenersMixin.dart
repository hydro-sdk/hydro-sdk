import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/listener_helpers.dart' as _7ec6;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimationLocalStatusListenersMixin
    extends _36c2.VMManagedBox<_7ec6.AnimationLocalStatusListenersMixin> {
  VMManagedAnimationLocalStatusListenersMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeStatusListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeStatusListener((status) => unpackedlistener.dispatch(
            [luaCallerArguments[0], status],
            parentState: hydroState,
          ));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7ec6.AnimationLocalStatusListenersMixin vmObject;
}

void loadAnimationLocalStatusListenersMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7ec6.AnimationLocalStatusListenersMixin>(boxer: (
      {required _7ec6.AnimationLocalStatusListenersMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimationLocalStatusListenersMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
