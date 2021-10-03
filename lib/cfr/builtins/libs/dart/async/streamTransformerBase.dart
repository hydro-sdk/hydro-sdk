import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStreamTransformerBase
    extends VMManagedBox<StreamTransformerBase<dynamic, dynamic>> {
  VMManagedStreamTransformerBase(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cast'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StreamTransformer>(
            object: vmObject.cast(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['bind'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: vmObject.bind(
                maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
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

  final StreamTransformerBase vmObject;
}

class RTManagedStreamTransformerBase extends StreamTransformerBase
    implements Box<StreamTransformerBase> {
  RTManagedStreamTransformerBase(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_cast'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<StreamTransformer>(
            object: super.cast(), hydroState: hydroState, table: HydroTable())
      ];
    });
    table['_dart_bind'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Stream>(
            object: bind(maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
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

  StreamTransformerBase unwrap() => this;
  StreamTransformerBase get vmObject => this;
  @override
  StreamTransformer<RS, RT> cast<RS, RT>() {
    Closure closure = table["cast"];
    return maybeUnBoxAndBuildArgument<StreamTransformer<RS, RT>, RS>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Stream<dynamic> bind(Stream stream) {
    Closure closure = table["bind"];
    return maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
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

void loadStreamTransformerBase(
    {required HydroState hydroState, required HydroTable table}) {
  table['streamTransformerBase'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedStreamTransformerBase(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<StreamTransformerBase>(boxer: (
      {required StreamTransformerBase vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStreamTransformerBase(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
