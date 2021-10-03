import 'dart:async';
import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedImageDescriptor extends VMManagedBox<ImageDescriptor> {
  VMManagedImageDescriptor(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.width,
      ];
    });
    table['getHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.height,
      ];
    });
    table['getBytesPerPixel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.bytesPerPixel,
      ];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['instantiateCodec'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.instantiateCodec(
                targetHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['targetHeight']
                    : null,
                targetWidth: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['targetWidth']
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ImageDescriptor vmObject;
}

void loadImageDescriptor(
    {required HydroState hydroState, required HydroTable table}) {
  table['imageDescriptorRaw'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ImageDescriptor>(
          object: ImageDescriptor.raw(
              maybeUnBoxAndBuildArgument<ImmutableBuffer, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              rowBytes: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['rowBytes']
                  : null,
              height: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['height']
                  : null,
              pixelFormat: maybeUnBoxEnum(
                  values: PixelFormat.values,
                  boxedEnum: luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['pixelFormat']
                      : null),
              width: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['width']
                  : null),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['imageDescriptorEncoded'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Future>(
          object: ImageDescriptor.encoded(
              maybeUnBoxAndBuildArgument<ImmutableBuffer, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ImageDescriptor>(boxer: (
      {required ImageDescriptor vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedImageDescriptor(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
