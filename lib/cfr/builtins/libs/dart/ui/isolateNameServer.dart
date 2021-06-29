import 'dart:core';
import 'dart:isolate';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedIsolateNameServer extends VMManagedBox<IsolateNameServer> {
  VMManagedIsolateNameServer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final IsolateNameServer vmObject;
}

void loadIsolateNameServer(
    {required HydroState hydroState, required HydroTable table}) {
  table['isolateNameServerLookupPortByName'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SendPort?>(
          object: IsolateNameServer.lookupPortByName(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['isolateNameServerRegisterPortWithName'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<bool>(
          object: IsolateNameServer.registerPortWithName(
              maybeUnBoxAndBuildArgument<SendPort>(luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['isolateNameServerRemovePortNameMapping'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<bool>(
          object:
              IsolateNameServer.removePortNameMapping(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<IsolateNameServer>(boxer: (
      {required IsolateNameServer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIsolateNameServer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
