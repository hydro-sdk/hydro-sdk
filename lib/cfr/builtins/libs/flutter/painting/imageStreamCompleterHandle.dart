import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageStreamCompleterHandle
    extends _36c2.VMManagedBox<_f25c.ImageStreamCompleterHandle> {
  VMManagedImageStreamCompleterHandle(
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

  final _f25c.ImageStreamCompleterHandle vmObject;
}

void loadImageStreamCompleterHandle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_f25c.ImageStreamCompleterHandle>(boxer: (
      {required _f25c.ImageStreamCompleterHandle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedImageStreamCompleterHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
