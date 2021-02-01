import 'dart:core';
import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTypedData extends VMManagedBox<TypedData> {
  VMManagedTypedData(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.elementSizeInBytes];
    });
    table['getOffsetInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.offsetInBytes];
    });
    table['getLengthInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.lengthInBytes];
    });
    table['getBuffer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteBuffer>(
            object: vmObject.buffer,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final TypedData vmObject;
}

void loadTypedData(
    {@required HydroState hydroState, @required HydroTable table}) {
  registerBoxer<TypedData>(boxer: (
      {@required TypedData vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedTypedData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
