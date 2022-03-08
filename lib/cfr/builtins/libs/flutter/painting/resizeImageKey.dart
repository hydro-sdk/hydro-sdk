import 'dart:core' as _fac9;

import 'package:flutter/src/painting/image_provider.dart' as _61fa;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedResizeImageKey extends _36c2.VMManagedBox<_61fa.ResizeImageKey> {
  VMManagedResizeImageKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _61fa.ResizeImageKey vmObject;
}

void loadResizeImageKey(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_61fa.ResizeImageKey>(boxer: (
      {required _61fa.ResizeImageKey vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedResizeImageKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
