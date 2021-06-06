import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedUnmodifiableByteBufferView
    extends VMManagedBox<UnmodifiableByteBufferView?> {
  VMManagedUnmodifiableByteBufferView(
      {required this.table, required this.vmObject, required this.hydroState})
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
    table!['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
    table!['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
  }

  final HydroTable? table;

  final HydroState? hydroState;

  final UnmodifiableByteBufferView? vmObject;
}

class RTManagedUnmodifiableByteBufferView extends UnmodifiableByteBufferView
    implements Box<UnmodifiableByteBufferView> {
  RTManagedUnmodifiableByteBufferView(ByteBuffer data,
      {required this.table, required this.hydroState})
      : super(
          data,
        ) {
    table!['vmObject'] = vmObject;
    table!['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table!['_dart_getLengthInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.lengthInBytes];
    });
    table!['_dart_asUint8List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint8List>(
            object: super.asUint8List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asInt8List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int8List>(
            object: super.asInt8List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asUint8ClampedList'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint8ClampedList>(
            object: super.asUint8ClampedList(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asUint16List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint16List>(
            object: super.asUint16List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asInt16List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int16List>(
            object: super.asInt16List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asUint32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint32List>(
            object: super.asUint32List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asInt32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32List>(
            object: super.asInt32List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asUint64List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Uint64List>(
            object: super.asUint64List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asInt64List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int64List>(
            object: super.asInt64List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asInt32x4List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Int32x4List>(
            object: super.asInt32x4List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asFloat32List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32List>(
            object: super.asFloat32List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asFloat64List'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float64List>(
            object: super.asFloat64List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asFloat32x4List'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float32x4List>(
            object: super.asFloat32x4List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asFloat64x2List'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Float64x2List>(
            object: super.asFloat64x2List(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_asByteData'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ByteData>(
            object: super.asByteData(args[1], args[2]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table!['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
  }

  final HydroTable? table;

  final HydroState hydroState;

  UnmodifiableByteBufferView unwrap() => this;
  UnmodifiableByteBufferView get vmObject => this;
  @override
  int get lengthInBytes {
    Closure closure = table!["getLengthInBytes"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  Uint8List asUint8List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asUint8List"];
    return maybeUnBoxAndBuildArgument<Uint8List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Int8List asInt8List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asInt8List"];
    return maybeUnBoxAndBuildArgument<Int8List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Uint8ClampedList asUint8ClampedList([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asUint8ClampedList"];
    return maybeUnBoxAndBuildArgument<Uint8ClampedList>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Uint16List asUint16List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asUint16List"];
    return maybeUnBoxAndBuildArgument<Uint16List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Int16List asInt16List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asInt16List"];
    return maybeUnBoxAndBuildArgument<Int16List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Uint32List asUint32List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asUint32List"];
    return maybeUnBoxAndBuildArgument<Uint32List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Int32List asInt32List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asInt32List"];
    return maybeUnBoxAndBuildArgument<Int32List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Uint64List asUint64List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asUint64List"];
    return maybeUnBoxAndBuildArgument<Uint64List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Int64List asInt64List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asInt64List"];
    return maybeUnBoxAndBuildArgument<Int64List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Int32x4List asInt32x4List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asInt32x4List"];
    return maybeUnBoxAndBuildArgument<Int32x4List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Float32List asFloat32List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asFloat32List"];
    return maybeUnBoxAndBuildArgument<Float32List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Float64List asFloat64List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asFloat64List"];
    return maybeUnBoxAndBuildArgument<Float64List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Float32x4List asFloat32x4List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asFloat32x4List"];
    return maybeUnBoxAndBuildArgument<Float32x4List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  Float64x2List asFloat64x2List([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asFloat64x2List"];
    return maybeUnBoxAndBuildArgument<Float64x2List>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  ByteData asByteData([int offsetInBytes = 0, int? length]) {
    Closure closure = table!["asByteData"];
    return maybeUnBoxAndBuildArgument<ByteData>(
        closure.dispatch([table], parentState: hydroState)![0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table!["__tostring"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int get hashCode {
    Closure closure = table!["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }
}

void loadUnmodifiableByteBufferView(
    {required HydroState hydroState, required HydroTable table}) {
  table['unmodifiableByteBufferView'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedUnmodifiableByteBufferView(
          maybeUnBoxAndBuildArgument<ByteBuffer>(args[1],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<UnmodifiableByteBufferView>(boxer: (
      {required UnmodifiableByteBufferView? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedUnmodifiableByteBufferView(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
