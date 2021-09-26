import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedByteBuffer extends VMManagedBox<ByteBuffer> {
  VMManagedByteBuffer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getLengthInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.lengthInBytes,
      ];
    });
    table['asUint8List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint8List>(
            object: vmObject.asUint8List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asInt8List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int8List>(
            object: vmObject.asInt8List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asUint8ClampedList'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint8ClampedList>(
            object: vmObject.asUint8ClampedList(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asUint16List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint16List>(
            object: vmObject.asUint16List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asInt16List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int16List>(
            object: vmObject.asInt16List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asUint32List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint32List>(
            object: vmObject.asUint32List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asInt32List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32List>(
            object: vmObject.asInt32List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asUint64List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint64List>(
            object: vmObject.asUint64List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asInt64List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int64List>(
            object: vmObject.asInt64List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asInt32x4List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Int32x4List>(
            object: vmObject.asInt32x4List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asFloat32List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32List>(
            object: vmObject.asFloat32List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asFloat64List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64List>(
            object: vmObject.asFloat64List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asFloat32x4List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float32x4List>(
            object: vmObject.asFloat32x4List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asFloat64x2List'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Float64x2List>(
            object: vmObject.asFloat64x2List(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asByteData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteData>(
            object: vmObject.asByteData(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ByteBuffer vmObject;
}

void loadByteBuffer(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<ByteBuffer>(boxer: (
      {required ByteBuffer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedByteBuffer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
