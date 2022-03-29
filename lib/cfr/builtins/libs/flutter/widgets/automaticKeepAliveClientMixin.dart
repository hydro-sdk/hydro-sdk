import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/automatic_keep_alive.dart' as _78f9;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAutomaticKeepAliveClientMixin extends _36c2
    .VMManagedBox<_78f9.AutomaticKeepAliveClientMixin<_e2dc.StatefulWidget>> {
  VMManagedAutomaticKeepAliveClientMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initState();
      return [];
    });
    table['deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deactivate();
      return [];
    });
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _78f9.AutomaticKeepAliveClientMixin<_e2dc.StatefulWidget> vmObject;
}

void loadAutomaticKeepAliveClientMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_78f9.AutomaticKeepAliveClientMixin>(boxer: (
      {required _78f9.AutomaticKeepAliveClientMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAutomaticKeepAliveClientMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
