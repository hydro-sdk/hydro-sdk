import 'dart:convert';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCodec extends VMManagedBox<Codec<dynamic, dynamic>> {
  VMManagedCodec(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['encode'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.encode(luaCallerArguments[1]),
      ];
    });
    table['decode'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.decode(luaCallerArguments[1]),
      ];
    });
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
    table['fuse'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Codec>(
            object: vmObject.fuse(
                maybeUnBoxAndBuildArgument<Codec<dynamic, dynamic>>(
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final Codec vmObject;
}

class RTManagedCodec extends Codec implements Box<Codec> {
  RTManagedCodec({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_encode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.encode(luaCallerArguments[1])];
    });
    table['_dart_decode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.decode(luaCallerArguments[1])];
    });
    table['_dart_getEncoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [encoder];
    });
    table['_dart_getDecoder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [decoder];
    });
    table['_dart_fuse'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Codec>(
            object: super.fuse(
                maybeUnBoxAndBuildArgument<Codec<dynamic, dynamic>>(
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
  }

  final HydroTable table;

  final HydroState hydroState;

  Codec unwrap() => this;
  Codec get vmObject => this;
  @override
  dynamic encode(dynamic input) {
    Closure closure = table["encode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic decode(dynamic encoded) {
    Closure closure = table["decode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Converter<dynamic, dynamic> get encoder {
    Closure closure = table["getEncoder"];
    return maybeUnBoxAndBuildArgument<Converter<dynamic, dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Converter<dynamic, dynamic> get decoder {
    Closure closure = table["getDecoder"];
    return maybeUnBoxAndBuildArgument<Converter<dynamic, dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Codec<dynamic, R> fuse<R>(Codec other) {
    Closure closure = table["fuse"];
    return maybeUnBoxAndBuildArgument<Codec<dynamic, R>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Codec<dynamic, dynamic> get inverted {
    Closure closure = table["getInverted"];
    return maybeUnBoxAndBuildArgument<Codec<dynamic, dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadCodec({required HydroState hydroState, required HydroTable table}) {
  table['codec'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedCodec(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<Codec>(boxer: (
      {required Codec vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCodec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
