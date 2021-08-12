import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedUtf8Codec extends VMManagedBox<Utf8Codec> {
  VMManagedUtf8Codec(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.name,
      ];
    });
    table['decode'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.decode(
            maybeUnBoxAndBuildArgument<List<int>>(luaCallerArguments[1],
                parentState: hydroState),
            allowMalformed: luaCallerArguments[2]['allowMalformed']),
      ];
    });
    table['getEncoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Utf8Encoder>(
            object: vmObject.encoder,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDecoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Utf8Decoder>(
            object: vmObject.decoder,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['decodeStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.decodeStream(
                maybeUnBoxAndBuildArgument<Stream<List<int>>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['encode'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.encode(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['fuse'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Codec>(
            object: vmObject.fuse(
                maybeUnBoxAndBuildArgument<Codec<List<int>, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getInverted'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Codec>(
            object: vmObject.inverted,
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

  final Utf8Codec vmObject;
}

class RTManagedUtf8Codec extends Utf8Codec implements Box<Utf8Codec> {
  RTManagedUtf8Codec(
      {required bool allowMalformed,
      required this.table,
      required this.hydroState})
      : super(allowMalformed: allowMalformed) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.name];
    });
    table['_dart_decode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.decode(
            maybeUnBoxAndBuildArgument<List<int>>(luaCallerArguments[1],
                parentState: hydroState),
            allowMalformed: luaCallerArguments[2]['allowMalformed'])
      ];
    });
    table['_dart_getEncoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.encoder];
    });
    table['_dart_getDecoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.decoder];
    });
    table['_dart_decodeStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.decodeStream(
                maybeUnBoxAndBuildArgument<Stream<List<int>>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_encode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super.encode(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_fuse'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Codec>(
            object: super.fuse(
                maybeUnBoxAndBuildArgument<Codec<List<int>, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getInverted'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.inverted];
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

  Utf8Codec unwrap() => this;
  Utf8Codec get vmObject => this;
  @override
  String get name {
    Closure closure = table["getName"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String decode(List codeUnits, {bool? allowMalformed}) {
    Closure closure = table["decode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Utf8Encoder get encoder {
    Closure closure = table["getEncoder"];
    return maybeUnBoxAndBuildArgument<Utf8Encoder>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Utf8Decoder get decoder {
    Closure closure = table["getDecoder"];
    return maybeUnBoxAndBuildArgument<Utf8Decoder>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<String> decodeStream(Stream byteStream) {
    Closure closure = table["decodeStream"];
    return maybeUnBoxAndBuildArgument<Future<String>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<int> encode(String input) {
    Closure closure = table["encode"];
    return maybeUnBoxAndBuildArgument<List<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Codec<String, R> fuse<R>(Codec other) {
    Closure closure = table["fuse"];
    return maybeUnBoxAndBuildArgument<Codec<String, R>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Codec<List<int>, String> get inverted {
    Closure closure = table["getInverted"];
    return maybeUnBoxAndBuildArgument<Codec<List<int>, String>>(
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

void loadUtf8Codec(
    {required HydroState hydroState, required HydroTable table}) {
  table['utf8Codec'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedUtf8Codec(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          allowMalformed: luaCallerArguments[1]['allowMalformed'])
    ];
  });
  registerBoxer<Utf8Codec>(boxer: (
      {required Utf8Codec vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUtf8Codec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
