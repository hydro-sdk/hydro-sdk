import 'dart:async';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedStreamConsumer extends VMManagedBox<StreamConsumer<dynamic>> {
  VMManagedStreamConsumer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addStream'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.addStream(
                maybeUnBoxAndBuildArgument<Stream<dynamic>, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.close(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final StreamConsumer vmObject;
}

void loadStreamConsumer(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<StreamConsumer>(boxer: (
      {required StreamConsumer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedStreamConsumer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
