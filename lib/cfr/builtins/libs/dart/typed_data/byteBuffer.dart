import 'dart:core';
import 'dart:typed_data';



import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedByteBuffer extends VMManagedBox<ByteBuffer?> {
  VMManagedByteBuffer(
      {required this.table,
      required this.vmObject,
      required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table!['getLengthInBytes'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject!.lengthInBytes];
    });
    table!['asUint8List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint8List>(
            object: vmObject!.asUint8List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asInt8List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int8List>(
            object: vmObject!.asInt8List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asUint8ClampedList'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint8ClampedList>(
            object: vmObject!.asUint8ClampedList(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asUint16List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint16List>(
            object: vmObject!.asUint16List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asInt16List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int16List>(
            object: vmObject!.asInt16List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asUint32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint32List>(
            object: vmObject!.asUint32List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asInt32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32List>(
            object: vmObject!.asInt32List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asUint64List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint64List>(
            object: vmObject!.asUint64List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asInt64List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int64List>(
            object: vmObject!.asInt64List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asInt32x4List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4List>(
            object: vmObject!.asInt32x4List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asFloat32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32List>(
            object: vmObject!.asFloat32List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asFloat64List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float64List>(
            object: vmObject!.asFloat64List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asFloat32x4List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4List>(
            object: vmObject!.asFloat32x4List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asFloat64x2List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float64x2List>(
            object: vmObject!.asFloat64x2List(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
    table!['asByteData'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteData>(
            object: vmObject!.asByteData(args[1], args[2]),
            hydroState: hydroState!,
            table: HydroTable())
      ];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final ByteBuffer? vmObject;
}

void loadByteBuffer(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<ByteBuffer>(boxer: (
      {required ByteBuffer? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedByteBuffer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
