import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedUtf8Decoder extends VMManagedBox<Utf8Decoder> {
  VMManagedUtf8Decoder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['convert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.convert(
            maybeUnBoxAndBuildArgument<List<int>>(luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2],
            luaCallerArguments[3]),
      ];
    });
    table['startChunkedConversion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteConversionSink>(
            object: vmObject.startChunkedConversion(
                maybeUnBoxAndBuildArgument<Sink<String>>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['bind'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.bind(maybeUnBoxAndBuildArgument<Stream<List<int>>>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['fuse'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: vmObject.fuse(
                maybeUnBoxAndBuildArgument<Converter<String, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: vmObject.cast(),
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

  final Utf8Decoder vmObject;
}

class RTManagedUtf8Decoder extends Utf8Decoder implements Box<Utf8Decoder> {
  RTManagedUtf8Decoder(
      {required bool allowMalformed,
      required this.table,
      required this.hydroState})
      : super(allowMalformed: allowMalformed) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_convert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.convert(
            maybeUnBoxAndBuildArgument<List<int>>(luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2],
            luaCallerArguments[3])
      ];
    });
    table['_dart_startChunkedConversion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteConversionSink>(
            object: super.startChunkedConversion(
                maybeUnBoxAndBuildArgument<Sink<String>>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_bind'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.bind(maybeUnBoxAndBuildArgument<Stream<List<int>>>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_fuse'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: super.fuse(
                maybeUnBoxAndBuildArgument<Converter<String, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_cast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Utf8Decoder unwrap() => this;
  Utf8Decoder get vmObject => this;
  @override
  String convert(List codeUnits, [int start = 0, int? end]) {
    Closure closure = table["convert"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ByteConversionSink startChunkedConversion(Sink sink) {
    Closure closure = table["startChunkedConversion"];
    return maybeUnBoxAndBuildArgument<ByteConversionSink>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<String> bind(Stream stream) {
    Closure closure = table["bind"];
    return maybeUnBoxAndBuildArgument<Stream<String>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Converter<List<int>, T> fuse<T>(Converter next) {
    Closure closure = table["fuse"];
    return maybeUnBoxAndBuildArgument<Converter<List<int>, T>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Converter<RS, RT> cast<RS, RT>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<Converter<RS, RT>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadUtf8Decoder(
    {required HydroState hydroState, required HydroTable table}) {
  table['utf8Decoder'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedUtf8Decoder(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          allowMalformed: luaCallerArguments[1]['allowMalformed'])
    ];
  });
  registerBoxer<Utf8Decoder>(boxer: (
      {required Utf8Decoder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUtf8Decoder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
