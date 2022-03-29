import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRelayoutWhenSystemFontsChangeMixin
    extends _36c2.VMManagedBox<_9742.RelayoutWhenSystemFontsChangeMixin> {
  VMManagedRelayoutWhenSystemFontsChangeMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attach(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9742.RelayoutWhenSystemFontsChangeMixin vmObject;
}

void loadRelayoutWhenSystemFontsChangeMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_9742.RelayoutWhenSystemFontsChangeMixin>(boxer: (
      {required _9742.RelayoutWhenSystemFontsChangeMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRelayoutWhenSystemFontsChangeMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
