import 'dart:async';
import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedImmutableBuffer extends VMManagedBox<ImmutableBuffer> {
  VMManagedImmutableBuffer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['length'] = vmObject.length;
    table['dispose'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.dispose();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ImmutableBuffer vmObject;
}

void loadImmutableBuffer(
    {required HydroState hydroState, required HydroTable table}) {
  table['immutableBufferFromUint8List'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Future>(
          object: ImmutableBuffer.fromUint8List(
              maybeUnBoxAndBuildArgument<Uint8List>(args[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<ImmutableBuffer>(boxer: (
      {required ImmutableBuffer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedImmutableBuffer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
