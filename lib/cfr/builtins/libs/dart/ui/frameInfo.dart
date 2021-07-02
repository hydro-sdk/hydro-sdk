import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFrameInfo extends VMManagedBox<FrameInfo> {
  VMManagedFrameInfo(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['duration'] = maybeBoxObject<Duration>(
        object: vmObject.duration, hydroState: hydroState, table: HydroTable());
    table['image'] = maybeBoxObject<Image>(
        object: vmObject.image, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final FrameInfo vmObject;
}

void loadFrameInfo(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<FrameInfo>(boxer: (
      {required FrameInfo vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFrameInfo(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
