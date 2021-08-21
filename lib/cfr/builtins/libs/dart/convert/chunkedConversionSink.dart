import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedChunkedConversionSink
    extends VMManagedBox<ChunkedConversionSink<dynamic>> {
  VMManagedChunkedConversionSink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(luaCallerArguments[1]);
      return [];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close();
      return [];
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

  final ChunkedConversionSink vmObject;
}

class RTManagedChunkedConversionSink extends ChunkedConversionSink
    implements Box<ChunkedConversionSink> {
  RTManagedChunkedConversionSink(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_add'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      add(luaCallerArguments[1]);
      return [];
    });
    table['_dart_close'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      close();
      return [];
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

  ChunkedConversionSink unwrap() => this;
  ChunkedConversionSink get vmObject => this;
  @override
  void add(dynamic chunk) {
    Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void close() {
    Closure closure = table["close"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadChunkedConversionSink(
    {required HydroState hydroState, required HydroTable table}) {
  table['chunkedConversionSink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedChunkedConversionSink(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['chunkedConversionSinkWithCallback'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedcallback = luaCallerArguments[1];
    return [
      maybeBoxObject<ChunkedConversionSink>(
          object: ChunkedConversionSink.withCallback(
              (accumulated) => unpackedcallback.dispatch(
                    [luaCallerArguments[0], accumulated],
                    parentState: hydroState,
                  )),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ChunkedConversionSink>(boxer: (
      {required ChunkedConversionSink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedChunkedConversionSink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
