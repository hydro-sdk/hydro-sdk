import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/pointer_signal_resolver.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerSignalResolver
    extends VMManagedBox<PointerSignalResolver> {
  VMManagedPointerSignalResolver(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['register'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      vmObject.register(
          maybeUnBoxAndBuildArgument<PointerSignalEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (event) => unpackedcallback.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resolve(maybeUnBoxAndBuildArgument<PointerSignalEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PointerSignalResolver vmObject;
}

class RTManagedPointerSignalResolver extends PointerSignalResolver
    implements Box<PointerSignalResolver> {
  RTManagedPointerSignalResolver(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_register'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[2];
      super.register(
          maybeUnBoxAndBuildArgument<PointerSignalEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (event) => unpackedcallback.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resolve(maybeUnBoxAndBuildArgument<PointerSignalEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PointerSignalResolver unwrap() => this;
  PointerSignalResolver get vmObject => this;
  @override
  void register(event, callback) {
    Closure closure = table["register"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void resolve(event) {
    Closure closure = table["resolve"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPointerSignalResolver(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerSignalResolver'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPointerSignalResolver(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<PointerSignalResolver>(boxer: (
      {required PointerSignalResolver vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerSignalResolver(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
