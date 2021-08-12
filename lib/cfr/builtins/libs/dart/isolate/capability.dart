import 'dart:isolate';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCapability extends VMManagedBox<Capability> {
  VMManagedCapability(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final HydroTable table;

  final HydroState hydroState;

  final Capability vmObject;
}

void loadCapability(
    {required HydroState hydroState, required HydroTable table}) {
  table['capability'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Capability>(
          object: Capability(),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  registerBoxer<Capability>(boxer: (
      {required Capability vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCapability(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
