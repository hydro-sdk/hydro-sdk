import 'dart:async';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCompleter extends VMManagedBox<Completer<dynamic>> {
  VMManagedCompleter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getFuture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.future,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['complete'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.complete(maybeUnBoxAndBuildArgument<FutureOr<dynamic>?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['completeError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.completeError(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getIsCompleted'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isCompleted,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Completer vmObject;
}

void loadCompleter(
    {required HydroState hydroState, required HydroTable table}) {
  table['completer'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Completer>(
          object: Completer(),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['completerSync'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Completer>(
          object: Completer.sync(),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Completer>(boxer: (
      {required Completer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCompleter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
