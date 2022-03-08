import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/deferred_component.dart' as _a6fd;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDeferredComponent
    extends _36c2.VMManagedBox<_a6fd.DeferredComponent> {
  VMManagedDeferredComponent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a6fd.DeferredComponent vmObject;
}

void loadDeferredComponent(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['deferredComponentInstallDeferredComponent'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _a6fd.DeferredComponent.installDeferredComponent(
              componentName: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['componentName']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['deferredComponentUninstallDeferredComponent'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _a6fd.DeferredComponent.uninstallDeferredComponent(
              componentName: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['componentName']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_a6fd.DeferredComponent>(boxer: (
      {required _a6fd.DeferredComponent vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDeferredComponent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
