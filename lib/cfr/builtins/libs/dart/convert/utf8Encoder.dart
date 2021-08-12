import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedUtf8Encoder extends VMManagedBox<Utf8Encoder> {
  VMManagedUtf8Encoder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['convert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint8List>(
            object: vmObject.convert(luaCallerArguments[1],
                luaCallerArguments[2], luaCallerArguments[3]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['startChunkedConversion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StringConversionSink>(
            object: vmObject.startChunkedConversion(
                maybeUnBoxAndBuildArgument<Sink<List<int>>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['bind'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.bind(maybeUnBoxAndBuildArgument<Stream<String>>(
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
                maybeUnBoxAndBuildArgument<Converter<List<int>, dynamic>>(
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

  final Utf8Encoder vmObject;
}

class RTManagedUtf8Encoder extends Utf8Encoder implements Box<Utf8Encoder> {
  RTManagedUtf8Encoder({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_convert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uint8List>(
            object: super.convert(luaCallerArguments[1], luaCallerArguments[2],
                luaCallerArguments[3]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_startChunkedConversion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StringConversionSink>(
            object: super.startChunkedConversion(
                maybeUnBoxAndBuildArgument<Sink<List<int>>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_bind'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.bind(maybeUnBoxAndBuildArgument<Stream<String>>(
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
                maybeUnBoxAndBuildArgument<Converter<List<int>, dynamic>>(
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

  Utf8Encoder unwrap() => this;
  Utf8Encoder get vmObject => this;
  @override
  Uint8List convert(String string, [int start = 0, int? end]) {
    Closure closure = table["convert"];
    return maybeUnBoxAndBuildArgument<Uint8List>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  StringConversionSink startChunkedConversion(Sink sink) {
    Closure closure = table["startChunkedConversion"];
    return maybeUnBoxAndBuildArgument<StringConversionSink>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<List<int>> bind(Stream stream) {
    Closure closure = table["bind"];
    return maybeUnBoxAndBuildArgument<Stream<List<int>>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Converter<String, TT> fuse<TT>(Converter other) {
    Closure closure = table["fuse"];
    return maybeUnBoxAndBuildArgument<Converter<String, TT>>(
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

void loadUtf8Encoder(
    {required HydroState hydroState, required HydroTable table}) {
  table['utf8Encoder'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedUtf8Encoder(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<Utf8Encoder>(boxer: (
      {required Utf8Encoder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUtf8Encoder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
