import 'dart:core' as _fac9;

import 'package:flutter/src/material/animated_icons.dart' as _953c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimatedIcons extends _36c2.VMManagedBox<_953c.AnimatedIcons> {
  VMManagedAnimatedIcons(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _953c.AnimatedIcons vmObject;
}

class RTManagedAnimatedIcons extends _953c.AnimatedIcons
    implements _36c2.Box<_953c.AnimatedIcons> {
  RTManagedAnimatedIcons({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _953c.AnimatedIcons unwrap() => this;
  _953c.AnimatedIcons get vmObject => this;
}

void loadAnimatedIcons(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['animatedIcons'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAnimatedIcons(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_953c.AnimatedIcons>(boxer: (
      {required _953c.AnimatedIcons vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimatedIcons(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
