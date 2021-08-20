import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedByteData extends VMManagedBox<ByteData> {
  VMManagedByteData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getInt8'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getInt8(luaCallerArguments[1]),
      ];
    });
    table['setInt8'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setInt8(luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['getUint8'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getUint8(luaCallerArguments[1]),
      ];
    });
    table['setUint8'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setUint8(luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['getInt16'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getInt16(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setInt16'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setInt16(
          luaCallerArguments[1],
          luaCallerArguments[2],
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getUint16'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getUint16(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setUint16'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setUint16(
          luaCallerArguments[1],
          luaCallerArguments[2],
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getInt32'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getInt32(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setInt32'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setInt32(
          luaCallerArguments[1],
          luaCallerArguments[2],
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getUint32'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getUint32(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setUint32'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setUint32(
          luaCallerArguments[1],
          luaCallerArguments[2],
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getInt64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getInt64(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setInt64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setInt64(
          luaCallerArguments[1],
          luaCallerArguments[2],
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getUint64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getUint64(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setUint64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setUint64(
          luaCallerArguments[1],
          luaCallerArguments[2],
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getFloat32'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getFloat32(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setFloat32'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setFloat32(
          luaCallerArguments[1],
          luaCallerArguments[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['getFloat64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getFloat64(
            luaCallerArguments[1],
            maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['setFloat64'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setFloat64(
          luaCallerArguments[1],
          luaCallerArguments[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
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
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ByteData vmObject;
}

void loadByteData({required HydroState hydroState, required HydroTable table}) {
  table['byteData'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ByteData>(
          object: ByteData(luaCallerArguments[1]),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['byteDataView'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ByteData>(
          object: ByteData.view(
              maybeUnBoxAndBuildArgument<ByteBuffer, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2],
              luaCallerArguments[3]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['byteDataSublistView'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ByteData>(
          object: ByteData.sublistView(
              maybeUnBoxAndBuildArgument<TypedData, dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2],
              luaCallerArguments[3]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ByteData>(boxer: (
      {required ByteData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedByteData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
