import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/inherited_theme.dart' as _ac47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCapturedThemes extends _36c2.VMManagedBox<_ac47.CapturedThemes> {
  VMManagedCapturedThemes(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['wrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.wrap(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ac47.CapturedThemes vmObject;
}

void loadCapturedThemes(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_ac47.CapturedThemes>(boxer: (
      {required _ac47.CapturedThemes vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCapturedThemes(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
