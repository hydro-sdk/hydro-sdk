import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedConverter extends VMManagedBox<Converter<dynamic, dynamic>> {
  VMManagedConverter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['convert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.convert(luaCallerArguments[1]),
      ];
    });
    table['fuse'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: vmObject.fuse(
                maybeUnBoxAndBuildArgument<Converter<dynamic, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['startChunkedConversion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Sink>(
            object: vmObject.startChunkedConversion(
                maybeUnBoxAndBuildArgument<Sink<dynamic>>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['bind'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.bind(maybeUnBoxAndBuildArgument<Stream<dynamic>>(
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

  final Converter vmObject;
}

class RTManagedConverter extends Converter implements Box<Converter> {
  RTManagedConverter({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_convert'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [convert(luaCallerArguments[1])];
    });
    table['_dart_fuse'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Converter>(
            object: super.fuse(
                maybeUnBoxAndBuildArgument<Converter<dynamic, dynamic>>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_startChunkedConversion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Sink>(
            object: super.startChunkedConversion(
                maybeUnBoxAndBuildArgument<Sink<dynamic>>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_bind'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: super.bind(maybeUnBoxAndBuildArgument<Stream<dynamic>>(
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

  Converter unwrap() => this;
  Converter get vmObject => this;
  @override
  dynamic convert(dynamic input) {
    Closure closure = table["convert"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Converter<dynamic, TT> fuse<TT>(Converter other) {
    Closure closure = table["fuse"];
    return maybeUnBoxAndBuildArgument<Converter<dynamic, TT>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Sink<dynamic> startChunkedConversion(Sink sink) {
    Closure closure = table["startChunkedConversion"];
    return maybeUnBoxAndBuildArgument<Sink<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> bind(Stream stream) {
    Closure closure = table["bind"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>>(
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

void loadConverter(
    {required HydroState hydroState, required HydroTable table}) {
  table['converter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedConverter(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['converterCastFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Converter>(
          object: Converter.castFrom(
              maybeUnBoxAndBuildArgument<Converter<dynamic, dynamic>>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Converter>(boxer: (
      {required Converter vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedConverter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
