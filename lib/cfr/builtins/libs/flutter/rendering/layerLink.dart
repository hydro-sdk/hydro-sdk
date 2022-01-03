import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/rendering/layer.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLayerLink extends VMManagedBox<LayerLink> {
  VMManagedLayerLink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['leaderSize'] = maybeBoxObject<Size?>(
        object: vmObject.leaderSize,
        hydroState: hydroState,
        table: HydroTable());
    table['getLeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.leader;
      if (returnValue != null) {
        return [
          maybeBoxObject<LeaderLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final LayerLink vmObject;
}

class RTManagedLayerLink extends LayerLink implements Box<LayerLink> {
  RTManagedLayerLink({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['leaderSize'] = maybeBoxObject<Size?>(
        object: leaderSize, hydroState: hydroState, table: HydroTable());
    table['_dart_getLeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.leader];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  LayerLink unwrap() => this;
  LayerLink get vmObject => this;
  @override
  LeaderLayer? get leader {
    Closure closure = table["getLeader"];
    return maybeUnBoxAndBuildArgument<LeaderLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLayerLink(
    {required HydroState hydroState, required HydroTable table}) {
  table['layerLink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLayerLink(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<LayerLink>(boxer: (
      {required LayerLink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLayerLink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
