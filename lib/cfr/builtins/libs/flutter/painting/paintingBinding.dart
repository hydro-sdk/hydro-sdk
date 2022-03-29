import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/painting/binding.dart' as _3036;
import 'package:flutter/src/painting/image_cache.dart' as _2e0e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPaintingBinding
    extends _36c2.VMManagedBox<_3036.PaintingBinding> {
  VMManagedPaintingBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['getImageCache'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.imageCache;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_2e0e.ImageCache?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['instantiateImageCodec'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.instantiateImageCodec(
                _36c2
                    .maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                allowUpscaling: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['allowUpscaling']
                    : null,
                cacheHeight: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cacheHeight']
                    : null,
                cacheWidth: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cacheWidth']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.evict(luaCallerArguments[1]);
      return [];
    });
    table['handleMemoryPressure'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleMemoryPressure();
      return [];
    });
    table['getSystemFonts'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e644.Listenable>(
            object: vmObject.systemFonts,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['handleSystemMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.handleSystemMessage(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3036.PaintingBinding vmObject;
}

void loadPaintingBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['paintingBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _3036.PaintingBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_3036.PaintingBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_3036.PaintingBinding>(boxer: (
      {required _3036.PaintingBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPaintingBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
