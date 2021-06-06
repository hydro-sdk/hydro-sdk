import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedByteData extends VMManagedBox<ByteData?> {
  VMManagedByteData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['getInt8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.getInt8(args[1])];
    });
    table!['setInt8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setInt8(args[1], args[2]);
      return [];
    });
    table!['getUint8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.getUint8(args[1])];
    });
    table!['setUint8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setUint8(args[1], args[2]);
      return [];
    });
    table!['getInt16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getInt16(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setInt16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setInt16(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getUint16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getUint16(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setUint16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setUint16(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getInt32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getInt32(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setInt32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setInt32(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getUint32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getUint32(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setUint32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setUint32(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getInt64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getInt64(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setInt64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setInt64(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getUint64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getUint64(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setUint64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setUint64(
          args[1],
          args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getFloat32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getFloat32(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setFloat32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setFloat32(
          args[1],
          args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getFloat64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject!.getFloat64(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState!))
      ];
    });
    table!['setFloat64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject!.setFloat64(
          args[1],
          args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian>(args[3],
              parentState: hydroState!));
      return [];
    });
    table!['getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.elementSizeInBytes];
    });
    table!['getOffsetInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.offsetInBytes];
    });
    table!['getLengthInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.lengthInBytes];
    });
    table!['getBuffer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteBuffer>(
            object: vmObject!.buffer,
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table!['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final ByteData? vmObject;
}

void loadByteData({required HydroState hydroState, required HydroTable table}) {
  table['byteData'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<ByteData>(
          object: ByteData(args[1]), hydroState: hydroState, table: args[0])
    ];
  });
  table['byteDataView'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<ByteData>(
          object: ByteData.view(
              maybeUnBoxAndBuildArgument<ByteBuffer>(args[1],
                  parentState: hydroState),
              args[2],
              args[3]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['byteDataSublistView'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<ByteData>(
          object: ByteData.sublistView(
              maybeUnBoxAndBuildArgument<TypedData>(args[1],
                  parentState: hydroState),
              args[2],
              args[3]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<ByteData>(boxer: (
      {required ByteData? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedByteData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
