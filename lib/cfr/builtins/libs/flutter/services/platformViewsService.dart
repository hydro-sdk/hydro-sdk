import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPlatformViewsService
    extends _36c2.VMManagedBox<_40e3.PlatformViewsService> {
  VMManagedPlatformViewsService(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _40e3.PlatformViewsService vmObject;
}

void loadPlatformViewsService(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['platformViewsServiceInitAndroidView'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonFocus = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onFocus']
        : null;

    return [
      _36c2.maybeBoxObject<_40e3.TextureAndroidViewController>(
          object: _40e3.PlatformViewsService.initAndroidView(
              creationParams: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['creationParams']
                  : null,
              creationParamsCodec: _36c2.maybeUnBoxAndBuildArgument<
                      _7fbb.MessageCodec<_fac9.dynamic>?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['creationParamsCodec']
                      : null,
                  parentState: hydroState),
              onFocus: unpackedonFocus != null
                  ? () => unpackedonFocus.dispatch(
                        [luaCallerArguments[0]],
                        parentState: hydroState,
                      )
                  : null,
              id: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['id']
                  : null,
              layoutDirection: _36c2.maybeUnBoxEnum(
                  values: _a643.TextDirection.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['layoutDirection']
                      : null),
              viewType: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['viewType']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['platformViewsServiceInitSurfaceAndroidView'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonFocus = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onFocus']
        : null;

    return [
      _36c2.maybeBoxObject<_40e3.SurfaceAndroidViewController>(
          object: _40e3.PlatformViewsService.initSurfaceAndroidView(
              creationParams: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['creationParams']
                  : null,
              creationParamsCodec: _36c2.maybeUnBoxAndBuildArgument<
                      _7fbb.MessageCodec<_fac9.dynamic>?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['creationParamsCodec']
                      : null,
                  parentState: hydroState),
              onFocus: unpackedonFocus != null
                  ? () => unpackedonFocus.dispatch(
                        [luaCallerArguments[0]],
                        parentState: hydroState,
                      )
                  : null,
              id: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['id']
                  : null,
              layoutDirection: _36c2.maybeUnBoxEnum(
                  values: _a643.TextDirection.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['layoutDirection']
                      : null),
              viewType: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['viewType']
                  : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['platformViewsServiceSynchronizeToNativeViewHierarchy'] = _36c2
      .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _40e3.PlatformViewsService.synchronizeToNativeViewHierarchy(
              luaCallerArguments[1]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['platformViewsServiceInitUiKitView'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _40e3.PlatformViewsService.initUiKitView(
              creationParams: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['creationParams']
                  : null,
              creationParamsCodec: _36c2
                  .maybeUnBoxAndBuildArgument<_7fbb.MessageCodec<_fac9.dynamic>?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['creationParamsCodec']
                          : null,
                      parentState: hydroState),
              id: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['id']
                  : null,
              layoutDirection: _36c2.maybeUnBoxEnum(
                  values: _a643.TextDirection.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['layoutDirection']
                      : null),
              viewType: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewType'] : null),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_40e3.PlatformViewsService>(boxer: (
      {required _40e3.PlatformViewsService vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPlatformViewsService(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
