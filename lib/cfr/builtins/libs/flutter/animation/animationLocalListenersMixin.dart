import 'dart:core' as _fac9;

import 'package:flutter/src/animation/listener_helpers.dart' as _7ec6;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimationLocalListenersMixin
    extends _36c2.VMManagedBox<_7ec6.AnimationLocalListenersMixin> {
  VMManagedAnimationLocalListenersMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7ec6.AnimationLocalListenersMixin vmObject;
}

void loadAnimationLocalListenersMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7ec6.AnimationLocalListenersMixin>(boxer: (
      {required _7ec6.AnimationLocalListenersMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimationLocalListenersMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
