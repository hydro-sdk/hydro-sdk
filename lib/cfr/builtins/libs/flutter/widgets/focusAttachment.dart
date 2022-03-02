import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/focus_manager.dart' as _b485;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFocusAttachment
    extends _36c2.VMManagedBox<_b485.FocusAttachment> {
  VMManagedFocusAttachment(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isAttached,
      ];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['reparent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reparent(
          parent:
              _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['parent']
                      : null,
                  parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b485.FocusAttachment vmObject;
}

void loadFocusAttachment(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_b485.FocusAttachment>(boxer: (
      {required _b485.FocusAttachment vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFocusAttachment(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
