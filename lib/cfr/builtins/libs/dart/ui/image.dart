import 'dart:async';
import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedImage extends VMManagedBox<Image> {
  VMManagedImage(
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
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getDebugDisposed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDisposed,
      ];
    });
    table['toByteData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.toByteData(
                format: maybeUnBoxEnum(
                    values: ImageByteFormat.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['format']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugGetOpenHandleStackTraces'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugGetOpenHandleStackTraces();
      if (returnValue != null) {
        return [
          maybeBoxObject<List<dynamic>>(
              object: returnValue
                  .map((x) => maybeBoxObject<StackTrace>(
                      object: x, hydroState: hydroState, table: HydroTable()))
                  .toList(),
              hydroState: hydroState,
              table: HydroTable()),
        ];
      }
      return [];
    });
    table['clone'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Image>(
            object: vmObject.clone(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['isCloneOf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isCloneOf(maybeUnBoxAndBuildArgument<Image, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
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

  final Image vmObject;
}

void loadImage({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Image>(boxer: (
      {required Image vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedImage(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
