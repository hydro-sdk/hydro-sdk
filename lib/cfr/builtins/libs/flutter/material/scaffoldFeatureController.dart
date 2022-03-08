import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/material/scaffold.dart' as _ece7;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaffoldFeatureController extends _36c2.VMManagedBox<
    _ece7.ScaffoldFeatureController<_e2dc.Widget, _fac9.dynamic>> {
  VMManagedScaffoldFeatureController(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getClosed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.closed,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ece7.ScaffoldFeatureController<_e2dc.Widget, _fac9.dynamic> vmObject;
}

void loadScaffoldFeatureController(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_ece7.ScaffoldFeatureController>(boxer: (
      {required _ece7.ScaffoldFeatureController vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScaffoldFeatureController(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
