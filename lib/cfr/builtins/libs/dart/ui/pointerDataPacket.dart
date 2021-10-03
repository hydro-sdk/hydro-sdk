import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPointerDataPacket extends VMManagedBox<PointerDataPacket> {
  VMManagedPointerDataPacket(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['data'] = maybeBoxObject<List<dynamic>>(
        object: vmObject.data, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  final PointerDataPacket vmObject;
}

class RTManagedPointerDataPacket extends PointerDataPacket
    implements Box<PointerDataPacket> {
  RTManagedPointerDataPacket(
      {required List<PointerData> data,
      required this.table,
      required this.hydroState})
      : super(data: data) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['data'] = maybeBoxObject<List<dynamic>>(
        object: data, hydroState: hydroState, table: HydroTable());
  }

  final HydroTable table;

  final HydroState hydroState;

  PointerDataPacket unwrap() => this;
  PointerDataPacket get vmObject => this;
}

void loadPointerDataPacket(
    {required HydroState hydroState, required HydroTable table}) {
  table['pointerDataPacket'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPointerDataPacket(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          data: maybeUnBoxAndBuildArgument<List<PointerData>, PointerData>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['data']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<PointerDataPacket>(boxer: (
      {required PointerDataPacket vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPointerDataPacket(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
