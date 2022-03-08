import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/page_scaffold.dart' as _130f;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/preferred_size.dart' as _75de;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedObstructingPreferredSizeWidget
    extends _36c2.VMManagedBox<_130f.ObstructingPreferredSizeWidget> {
  VMManagedObstructingPreferredSizeWidget(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['shouldFullyObstruct'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldFullyObstruct(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.preferredSize,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _130f.ObstructingPreferredSizeWidget vmObject;
}

void loadObstructingPreferredSizeWidget(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_130f.ObstructingPreferredSizeWidget>(boxer: (
      {required _130f.ObstructingPreferredSizeWidget vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedObstructingPreferredSizeWidget(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
