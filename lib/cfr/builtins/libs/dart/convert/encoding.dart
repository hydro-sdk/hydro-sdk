import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedEncoding extends VMManagedBox<Encoding> {
  VMManagedEncoding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getEncoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: vmObject.encoder,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDecoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
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
    table['getName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.name,
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
    table['decode'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.decode(maybeUnBoxAndBuildArgument<List<int>>(
            luaCallerArguments[1],
            parentState: hydroState)),
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

  final Encoding vmObject;
}

class RTManagedEncoding extends Encoding implements Box<Encoding> {
  RTManagedEncoding({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getEncoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [encoder];
    });
    table['_dart_getDecoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [decoder];
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
    table['_dart_getName'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [name];
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
    table['_dart_decode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.decode(maybeUnBoxAndBuildArgument<List<int>>(
            luaCallerArguments[1],
            parentState: hydroState))
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

  Encoding unwrap() => this;
  Encoding get vmObject => this;
  @override
  Converter<String, List<int>> get encoder {
    Closure closure = table["getEncoder"];
    return maybeUnBoxAndBuildArgument<Converter<String, List<int>>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Converter<List<int>, String> get decoder {
    Closure closure = table["getDecoder"];
    return maybeUnBoxAndBuildArgument<Converter<List<int>, String>>(
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
  String get name {
    Closure closure = table["getName"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<int> encode(String input) {
    Closure closure = table["encode"];
    return maybeUnBoxAndBuildArgument<List<int>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String decode(List encoded) {
    Closure closure = table["decode"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadEncoding({required HydroState hydroState, required HydroTable table}) {
  table['encoding'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedEncoding(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['encodingGetByName'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Encoding.getByName(luaCallerArguments[1]);
    if (returnValue != null) {
      return [
        maybeBoxObject<Encoding?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<Encoding>(boxer: (
      {required Encoding vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedEncoding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
