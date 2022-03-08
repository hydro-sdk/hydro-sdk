import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/mergeable_material.dart' as _2117;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMergeableMaterialItem
    extends _36c2.VMManagedBox<_2117.MergeableMaterialItem> {
  VMManagedMergeableMaterialItem(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = _36c2.maybeBoxObject<_ab4a.LocalKey>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2117.MergeableMaterialItem vmObject;
}

class RTManagedMergeableMaterialItem extends _2117.MergeableMaterialItem
    implements _36c2.Box<_2117.MergeableMaterialItem> {
  RTManagedMergeableMaterialItem(_ab4a.LocalKey key$,
      {required this.table, required this.hydroState})
      : super(
          key$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _2117.MergeableMaterialItem unwrap() => this;
  _2117.MergeableMaterialItem get vmObject => this;
}

void loadMergeableMaterialItem(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['mergeableMaterialItem'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMergeableMaterialItem(
          _36c2.maybeUnBoxAndBuildArgument<_ab4a.LocalKey, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_2117.MergeableMaterialItem>(boxer: (
      {required _2117.MergeableMaterialItem vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMergeableMaterialItem(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
