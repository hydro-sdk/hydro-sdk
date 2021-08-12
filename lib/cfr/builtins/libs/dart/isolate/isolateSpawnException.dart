import 'dart:core';
import 'dart:isolate';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedIsolateSpawnException
    extends VMManagedBox<IsolateSpawnException> {
  VMManagedIsolateSpawnException(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['message'] = vmObject.message;
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

  final IsolateSpawnException vmObject;
}

class RTManagedIsolateSpawnException extends IsolateSpawnException
    implements Box<IsolateSpawnException> {
  RTManagedIsolateSpawnException(String message,
      {required this.table, required this.hydroState})
      : super(
          message,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['message'] = message;
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

  IsolateSpawnException unwrap() => this;
  IsolateSpawnException get vmObject => this;
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

void loadIsolateSpawnException(
    {required HydroState hydroState, required HydroTable table}) {
  table['isolateSpawnException'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedIsolateSpawnException(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<IsolateSpawnException>(boxer: (
      {required IsolateSpawnException vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIsolateSpawnException(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
