import 'dart:core' as _fac9;

import 'package:flutter/src/material/floating_action_button_location.dart'
    as _b2ee;
import 'package:flutter/src/material/scaffold.dart' as _ece7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFabFloatOffsetY
    extends _36c2.VMManagedBox<_b2ee.FabFloatOffsetY> {
  VMManagedFabFloatOffsetY(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getOffsetY'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getOffsetY(
            _36c2.maybeUnBoxAndBuildArgument<_ece7.ScaffoldPrelayoutGeometry,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b2ee.FabFloatOffsetY vmObject;
}

void loadFabFloatOffsetY(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_b2ee.FabFloatOffsetY>(boxer: (
      {required _b2ee.FabFloatOffsetY vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFabFloatOffsetY(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
