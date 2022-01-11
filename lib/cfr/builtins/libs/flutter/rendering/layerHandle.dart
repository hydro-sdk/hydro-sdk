import 'dart:core';

import 'package:flutter/src/rendering/layer.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLayerHandle extends VMManagedBox<LayerHandle<Layer>> {
  VMManagedLayerHandle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.layer;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.layer = (luaCallerArguments[1]);
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

  final LayerHandle<Layer> vmObject;
}

class RTManagedLayerHandle extends LayerHandle implements Box<LayerHandle> {
  RTManagedLayerHandle(dynamic? _layer,
      {required this.table, required this.hydroState})
      : super(
          _layer,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.layer];
    });
    table['_dart_setLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layer = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  LayerHandle unwrap() => this;
  LayerHandle get vmObject => this;
  @override
  Layer get layer {
    Closure closure = table["getLayer"];
    return maybeUnBoxAndBuildArgument<Layer, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  // @override
  // void set layer(Layer layer) {
  //   Closure closure = table["setLayer"];
  //   return closure.dispatch([table], parentState: hydroState)[0];
  // }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLayerHandle(
    {required HydroState hydroState, required HydroTable table}) {
  table['layerHandle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLayerHandle(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<LayerHandle>(boxer: (
      {required LayerHandle vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLayerHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
