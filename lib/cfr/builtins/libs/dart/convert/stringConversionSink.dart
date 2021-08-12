import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStringConversionSink extends VMManagedBox<StringConversionSink> {
  VMManagedStringConversionSink(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addSlice(luaCallerArguments[1], luaCallerArguments[2],
          luaCallerArguments[3], luaCallerArguments[4]);
      return [];
    });
    table['asUtf8Sink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteConversionSink>(
            object: vmObject.asUtf8Sink(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['asStringSink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ClosableStringSink>(
            object: vmObject.asStringSink(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
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

  final StringConversionSink vmObject;
}

class RTManagedStringConversionSink extends StringConversionSink
    implements Box<StringConversionSink> {
  RTManagedStringConversionSink({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      addSlice(luaCallerArguments[1], luaCallerArguments[2],
          luaCallerArguments[3], luaCallerArguments[4]);
      return [];
    });
    table['_dart_asUtf8Sink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ByteConversionSink>(
            object: asUtf8Sink(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_asStringSink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ClosableStringSink>(
            object: asStringSink(), hydroState: hydroState, table: HydroTable())
      ];
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

  StringConversionSink unwrap() => this;
  StringConversionSink get vmObject => this;
  @override
  void addSlice(String chunk, int start, int end, bool isLast) {
    Closure closure = table["addSlice"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ByteConversionSink asUtf8Sink(bool allowMalformed) {
    Closure closure = table["asUtf8Sink"];
    return maybeUnBoxAndBuildArgument<ByteConversionSink>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClosableStringSink asStringSink() {
    Closure closure = table["asStringSink"];
    return maybeUnBoxAndBuildArgument<ClosableStringSink>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void add(String chunk) {
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

void loadStringConversionSink(
    {required HydroState hydroState, required HydroTable table}) {
  table['stringConversionSink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedStringConversionSink(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['stringConversionSinkWithCallback'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure unpackedcallback = luaCallerArguments[1];
    return [
      maybeBoxObject<StringConversionSink>(
          object: StringConversionSink.withCallback(
              (accumulated) => unpackedcallback.dispatch(
                    [luaCallerArguments[0], accumulated],
                    parentState: hydroState,
                  )),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['stringConversionSinkFrom'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<StringConversionSink>(
          object: StringConversionSink.from(
              maybeUnBoxAndBuildArgument<Sink<String>>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['stringConversionSinkFromStringSink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<StringConversionSink>(
          object: StringConversionSink.fromStringSink(
              maybeUnBoxAndBuildArgument<StringSink>(luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<StringConversionSink>(boxer: (
      {required StringConversionSink vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStringConversionSink(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
