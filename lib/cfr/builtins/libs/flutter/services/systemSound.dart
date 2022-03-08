import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/system_sound.dart' as _289c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSystemSound extends _36c2.VMManagedBox<_289c.SystemSound> {
  VMManagedSystemSound(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _289c.SystemSound vmObject;
}

void loadSystemSound(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['systemSoundPlay'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _289c.SystemSound.play(_36c2.maybeUnBoxEnum(
              values: _289c.SystemSoundType.values,
              boxedEnum: luaCallerArguments[1])),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_289c.SystemSound>(boxer: (
      {required _289c.SystemSound vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSystemSound(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
