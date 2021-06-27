import 'dart:async';
import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedImageDescriptor extends VMManagedBox<ImageDescriptor> {
  VMManagedImageDescriptor(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.width];
    });
    table['getHeight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.height];
    });
    table['getBytesPerPixel'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.bytesPerPixel];
    });
    table['dispose'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.dispose();
      return [];
    });
    table['instantiateCodec'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.instantiateCodec(
                targetHeight: args[1]['targetHeight'],
                targetWidth: args[1]['targetWidth']),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ImageDescriptor vmObject;
}

void loadImageDescriptor(
    {required HydroState hydroState, required HydroTable table}) {
  table['imageDescriptorRaw'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<ImageDescriptor>(
          object: ImageDescriptor.raw(
              maybeUnBoxAndBuildArgument<ImmutableBuffer>(args[1],
                  parentState: hydroState),
              rowBytes: args[2]['rowBytes'],
              height: args[2]['height'],
              pixelFormat: maybeUnBoxEnum(
                  values: PixelFormat.values,
                  boxedEnum: args[2]['pixelFormat']),
              width: args[2]['width']),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['imageDescriptorEncoded'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future>(
          object: ImageDescriptor.encoded(
              maybeUnBoxAndBuildArgument<ImmutableBuffer>(args[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
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
