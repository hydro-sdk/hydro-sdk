import 'dart:core';

import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/team.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGestureArenaTeam extends VMManagedBox<GestureArenaTeam> {
  VMManagedGestureArenaTeam(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['captain'] = maybeBoxObject<GestureArenaMember?>(
        object: vmObject.captain, hydroState: hydroState, table: HydroTable());
    table['add'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<GestureArenaEntry>(
            object: vmObject.add(
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<GestureArenaMember, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final GestureArenaTeam vmObject;
}

class RTManagedGestureArenaTeam extends GestureArenaTeam
    implements Box<GestureArenaTeam> {
  RTManagedGestureArenaTeam({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['captain'] = maybeBoxObject<GestureArenaMember?>(
        object: captain, hydroState: hydroState, table: HydroTable());
    table['_dart_add'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<GestureArenaEntry>(
            object: super.add(
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<GestureArenaMember, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  GestureArenaTeam unwrap() => this;
  GestureArenaTeam get vmObject => this;
  @override
  GestureArenaEntry add(pointer, member) {
    Closure closure = table["add"];
    return maybeUnBoxAndBuildArgument<GestureArenaEntry, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadGestureArenaTeam(
    {required HydroState hydroState, required HydroTable table}) {
  table['gestureArenaTeam'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedGestureArenaTeam(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<GestureArenaTeam>(boxer: (
      {required GestureArenaTeam vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGestureArenaTeam(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
