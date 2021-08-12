import 'dart:core';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTransferableTypedData
    extends VMManagedBox<TransferableTypedData> {
  VMManagedTransferableTypedData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['materialize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteBuffer>(
            object: vmObject.materialize(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final TransferableTypedData vmObject;
}

void loadTransferableTypedData(
    {required HydroState hydroState, required HydroTable table}) {
  table['transferableTypedDataFromList'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<TransferableTypedData>(
          object: TransferableTypedData.fromList(
              maybeUnBoxAndBuildArgument<List<TypedData>>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<TransferableTypedData>(boxer: (
      {required TransferableTypedData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTransferableTypedData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
