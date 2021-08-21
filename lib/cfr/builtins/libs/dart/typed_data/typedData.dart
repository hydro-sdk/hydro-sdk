import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTypedData extends VMManagedBox<TypedData> {
  VMManagedTypedData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.elementSizeInBytes,
      ];
    });
    table['getOffsetInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.offsetInBytes,
      ];
    });
    table['getLengthInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.lengthInBytes,
      ];
    });
    table['getBuffer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteBuffer>(
            object: vmObject.buffer,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final TypedData vmObject;
}

void loadTypedData(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<TypedData>(boxer: (
      {required TypedData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTypedData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
