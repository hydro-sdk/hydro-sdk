import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDeferredLoadException
    extends VMManagedBox<DeferredLoadException> {
  VMManagedDeferredLoadException(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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

  final DeferredLoadException vmObject;
}

class RTManagedDeferredLoadException extends DeferredLoadException
    implements Box<DeferredLoadException> {
  RTManagedDeferredLoadException(String message,
      {required this.table, required this.hydroState})
      : super(
          message,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
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

  DeferredLoadException unwrap() => this;
  DeferredLoadException get vmObject => this;
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

void loadDeferredLoadException(
    {required HydroState hydroState, required HydroTable table}) {
  table['deferredLoadException'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDeferredLoadException(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<DeferredLoadException>(boxer: (
      {required DeferredLoadException vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDeferredLoadException(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
