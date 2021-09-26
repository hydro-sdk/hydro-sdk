import 'dart:async';
import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCodec extends VMManagedBox<Codec> {
  VMManagedCodec(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getFrameCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.frameCount,
      ];
    });
    table['getRepetitionCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.repetitionCount,
      ];
    });
    table['getNextFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.getNextFrame(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Codec vmObject;
}

void loadCodec({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Codec>(boxer: (
      {required Codec vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCodec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
