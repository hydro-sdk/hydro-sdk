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

class VMManagedPicture extends VMManagedBox<Picture> {
  VMManagedPicture(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['toImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object:
                vmObject.toImage(luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getApproximateBytesUsed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.approximateBytesUsed,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Picture vmObject;
}

void loadPicture({required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Picture>(boxer: (
      {required Picture vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPicture(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
