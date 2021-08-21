import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedByteConversionSink extends VMManagedBox<ByteConversionSink> {
  VMManagedByteConversionSink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addSlice(
          maybeUnBoxAndBuildArgument<List<int>, int>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          luaCallerArguments[3],
          luaCallerArguments[4]);
      return [];
    });
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.add(maybeUnBoxAndBuildArgument<List<int>, int>(
          luaCallerArguments[1],
          parentState: hydroState));
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

  final ByteConversionSink vmObject;
}

class RTManagedByteConversionSink extends ByteConversionSink
    implements Box<ByteConversionSink> {
  RTManagedByteConversionSink({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      addSlice(
          maybeUnBoxAndBuildArgument<List<int>, int>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          luaCallerArguments[3],
          luaCallerArguments[4]);
      return [];
    });
    table['_dart_add'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      add(maybeUnBoxAndBuildArgument<List<int>, int>(luaCallerArguments[1],
          parentState: hydroState));
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

  ByteConversionSink unwrap() => this;
  ByteConversionSink get vmObject => this;
  @override
  void addSlice(List chunk, int start, int end, bool isLast) {
    Closure closure = table["addSlice"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void add(List chunk) {
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

void loadByteConversionSink(
    {required HydroState hydroState, required HydroTable table}) {
  table['byteConversionSink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedByteConversionSink(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['byteConversionSinkWithCallback'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedcallback = luaCallerArguments[1];
    return [
      maybeBoxObject<ByteConversionSink>(
          object: ByteConversionSink.withCallback(
              (accumulated) => unpackedcallback.dispatch(
                    [luaCallerArguments[0], accumulated],
                    parentState: hydroState,
                  )),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['byteConversionSinkFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<ByteConversionSink>(
          object: ByteConversionSink.from(
              maybeUnBoxAndBuildArgument<Sink<List<int>>, List<int>>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<ByteConversionSink>(boxer: (
      {required ByteConversionSink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedByteConversionSink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
