import 'dart:core' as _fac9;

import 'package:flutter/src/services/restoration.dart' as _6d4f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRestorationBucket
    extends _36c2.VMManagedBox<_6d4f.RestorationBucket> {
  VMManagedRestorationBucket(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDebugOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugOwner;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Object?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getIsReplacing'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isReplacing,
      ];
    });
    table['getRestorationId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.restorationId,
      ];
    });
    table['read'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.read(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['write'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.write(luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['remove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.remove(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['contains'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.contains(luaCallerArguments[1]),
      ];
    });
    table['claimChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6d4f.RestorationBucket>(
            object: vmObject.claimChild(luaCallerArguments[1],
                debugOwner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['debugOwner']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['adoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.adoptChild(_36c2.maybeUnBoxAndBuildArgument<
          _6d4f.RestorationBucket,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['rename'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rename(luaCallerArguments[1]);
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6d4f.RestorationBucket vmObject;
}

void loadRestorationBucket(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_6d4f.RestorationBucket>(boxer: (
      {required _6d4f.RestorationBucket vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRestorationBucket(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
