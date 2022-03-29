import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart' as _35be;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeepAliveParentDataMixin
    extends _36c2.VMManagedBox<_35be.KeepAliveParentDataMixin> {
  VMManagedKeepAliveParentDataMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['keepAlive'] = vmObject.keepAlive;
    table['getKeptAlive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.keptAlive,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _35be.KeepAliveParentDataMixin vmObject;
}

void loadKeepAliveParentDataMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_35be.KeepAliveParentDataMixin>(boxer: (
      {required _35be.KeepAliveParentDataMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedKeepAliveParentDataMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
