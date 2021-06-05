import 'dart:core';
import 'dart:typed_data';



import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedUnmodifiableByteDataView
    extends VMManagedBox<UnmodifiableByteDataView?> {
  VMManagedUnmodifiableByteDataView(
      {required this.table,
      required this.vmObject,
      required this.hydroState})
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
      vmObject!.setInt16(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setUint16(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setInt32(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setUint32(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setInt64(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setUint64(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setFloat32(args[1], args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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
      vmObject!.setFloat64(args[1], args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState!));
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

  final UnmodifiableByteDataView? vmObject;
}

class RTManagedUnmodifiableByteDataView extends UnmodifiableByteDataView
    implements Box<UnmodifiableByteDataView> {
  RTManagedUnmodifiableByteDataView(ByteData data,
      {required this.table, required this.hydroState})
      : super(
          data,
        ) {
    table!['vmObject'] = vmObject;
    table!['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table!['_dart_getInt8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.getInt8(args[1])];
    });
    table!['_dart_setInt8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setInt8(args[1], args[2]);
      return [];
    });
    table!['_dart_getUint8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.getUint8(args[1])];
    });
    table!['_dart_setUint8'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setUint8(args[1], args[2]);
      return [];
    });
    table!['_dart_getInt16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getInt16(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setInt16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setInt16(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getUint16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getUint16(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setUint16'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setUint16(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getInt32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getInt32(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setInt32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setInt32(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getUint32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getUint32(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setUint32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setUint32(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getInt64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getInt64(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setInt64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setInt64(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getUint64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getUint64(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setUint64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setUint64(args[1], args[2],
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getFloat32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getFloat32(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setFloat32'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setFloat32(args[1], args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getFloat64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.getFloat64(
            args[1],
            maybeUnBoxAndBuildArgument<Endian>(args[2],
                parentState: hydroState))
      ];
    });
    table!['_dart_setFloat64'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.setFloat64(args[1], args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Endian>(args[3], parentState: hydroState));
      return [];
    });
    table!['_dart_getElementSizeInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.elementSizeInBytes];
    });
    table!['_dart_getOffsetInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.offsetInBytes];
    });
    table!['_dart_getLengthInBytes'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.lengthInBytes];
    });
    table!['_dart_getBuffer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.buffer];
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

  UnmodifiableByteDataView unwrap() => this;
  UnmodifiableByteDataView get vmObject => this;
  @override
  int getInt8(int byteOffset) {
    Closure closure = table!["getInt8"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setInt8(int byteOffset, int value) {
    Closure closure = table!["setInt8"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getUint8(int byteOffset) {
    Closure closure = table!["getUint8"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setUint8(int byteOffset, int value) {
    Closure closure = table!["setUint8"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getInt16(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getInt16"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setInt16(int byteOffset, int value, [Endian endian = Endian.big]) {
    Closure closure = table!["setInt16"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getUint16(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getUint16"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setUint16(int byteOffset, int value, [Endian endian = Endian.big]) {
    Closure closure = table!["setUint16"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getInt32(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getInt32"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setInt32(int byteOffset, int value, [Endian endian = Endian.big]) {
    Closure closure = table!["setInt32"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getUint32(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getUint32"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setUint32(int byteOffset, int value, [Endian endian = Endian.big]) {
    Closure closure = table!["setUint32"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getInt64(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getInt64"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setInt64(int byteOffset, int value, [Endian endian = Endian.big]) {
    Closure closure = table!["setInt64"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int getUint64(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getUint64"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  void setUint64(int byteOffset, int value, [Endian endian = Endian.big]) {
    Closure closure = table!["setUint64"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  double getFloat32(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getFloat32"];
    return closure.dispatch([table], parentState: hydroState)![0]?.toDouble();
  }

  @override
  void setFloat32(int byteOffset, double value, [Endian endian = Endian.big]) {
    Closure closure = table!["setFloat32"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  double getFloat64(int byteOffset, [Endian endian = Endian.big]) {
    Closure closure = table!["getFloat64"];
    return closure.dispatch([table], parentState: hydroState)![0]?.toDouble();
  }

  @override
  void setFloat64(int byteOffset, double value, [Endian endian = Endian.big]) {
    Closure closure = table!["setFloat64"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int get elementSizeInBytes {
    Closure closure = table!["getElementSizeInBytes"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int get offsetInBytes {
    Closure closure = table!["getOffsetInBytes"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  int get lengthInBytes {
    Closure closure = table!["getLengthInBytes"];
    return closure.dispatch([table], parentState: hydroState)![0];
  }

  @override
  ByteBuffer get buffer {
    Closure closure = table!["getBuffer"];
    return maybeUnBoxAndBuildArgument<ByteBuffer>(
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

void loadUnmodifiableByteDataView(
    {required HydroState hydroState, required HydroTable table}) {
  table['unmodifiableByteDataView'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedUnmodifiableByteDataView(
          maybeUnBoxAndBuildArgument<ByteData>(args[1],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<UnmodifiableByteDataView>(boxer: (
      {required UnmodifiableByteDataView? vmObject,
      required HydroState? hydroState,
      required HydroTable? table}) {
    return VMManagedUnmodifiableByteDataView(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
