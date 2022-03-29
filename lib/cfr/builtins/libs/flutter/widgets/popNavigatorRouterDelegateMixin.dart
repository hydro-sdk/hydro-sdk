import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/router.dart' as _f6ef;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPopNavigatorRouterDelegateMixin extends _36c2
    .VMManagedBox<_f6ef.PopNavigatorRouterDelegateMixin<_fac9.dynamic>> {
  VMManagedPopNavigatorRouterDelegateMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getNavigatorKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.navigatorKey;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.GlobalKey?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['popRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.popRoute(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _f6ef.PopNavigatorRouterDelegateMixin<_fac9.dynamic> vmObject;
}

void loadPopNavigatorRouterDelegateMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_f6ef.PopNavigatorRouterDelegateMixin>(boxer: (
      {required _f6ef.PopNavigatorRouterDelegateMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPopNavigatorRouterDelegateMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
