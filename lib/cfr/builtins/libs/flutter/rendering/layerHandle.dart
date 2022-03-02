import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/layer.dart' as _7d70;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLayerHandle
    extends _36c2.VMManagedBox<_7d70.LayerHandle<_7d70.Layer>> {
  VMManagedLayerHandle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.layer;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.layer = (luaCallerArguments[1]);
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

  final _7d70.LayerHandle<_7d70.Layer> vmObject;
}

class RTManagedLayerHandle extends _7d70.LayerHandle
    implements _36c2.Box<_7d70.LayerHandle> {
  RTManagedLayerHandle(_7d70.Layer? _layer,
      {required this.table, required this.hydroState})
      : super(
          _layer,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.layer];
    });
    table['_dart_setLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.layer = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _7d70.LayerHandle unwrap() => this;
  _7d70.LayerHandle get vmObject => this;
  @_fac9.override
  _7d70.Layer? get layer {
    _36c2.Closure closure = table["getLayer"];
    return _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set layer(layer) {
    _36c2.Closure closure = table["setLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLayerHandle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['layerHandle'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedLayerHandle(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_7d70.LayerHandle>(boxer: (
      {required _7d70.LayerHandle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedLayerHandle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
