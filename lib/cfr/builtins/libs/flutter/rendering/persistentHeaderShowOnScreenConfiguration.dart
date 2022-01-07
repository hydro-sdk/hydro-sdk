import 'dart:core';

import 'package:flutter/src/rendering/sliver_persistent_header.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPersistentHeaderShowOnScreenConfiguration
    extends VMManagedBox<PersistentHeaderShowOnScreenConfiguration> {
  VMManagedPersistentHeaderShowOnScreenConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['minShowOnScreenExtent'] = vmObject.minShowOnScreenExtent;
    table['maxShowOnScreenExtent'] = vmObject.maxShowOnScreenExtent;
  }

  final HydroTable table;

  final HydroState hydroState;

  final PersistentHeaderShowOnScreenConfiguration vmObject;
}

class RTManagedPersistentHeaderShowOnScreenConfiguration
    extends PersistentHeaderShowOnScreenConfiguration
    implements Box<PersistentHeaderShowOnScreenConfiguration> {
  RTManagedPersistentHeaderShowOnScreenConfiguration(
      {required double maxShowOnScreenExtent,
      required double minShowOnScreenExtent,
      required this.table,
      required this.hydroState})
      : super(
            maxShowOnScreenExtent: maxShowOnScreenExtent,
            minShowOnScreenExtent: minShowOnScreenExtent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['minShowOnScreenExtent'] = this.minShowOnScreenExtent;
    table['maxShowOnScreenExtent'] = this.maxShowOnScreenExtent;
  }

  final HydroTable table;

  final HydroState hydroState;

  PersistentHeaderShowOnScreenConfiguration unwrap() => this;
  PersistentHeaderShowOnScreenConfiguration get vmObject => this;
}

void loadPersistentHeaderShowOnScreenConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['persistentHeaderShowOnScreenConfiguration'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPersistentHeaderShowOnScreenConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          maxShowOnScreenExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxShowOnScreenExtent']
              : null?.toDouble(),
          minShowOnScreenExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minShowOnScreenExtent']
              : null?.toDouble())
    ];
  });
  registerBoxer<PersistentHeaderShowOnScreenConfiguration>(boxer: (
      {required PersistentHeaderShowOnScreenConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPersistentHeaderShowOnScreenConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
