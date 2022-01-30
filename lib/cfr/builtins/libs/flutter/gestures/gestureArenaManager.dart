import 'dart:core';

import 'package:flutter/src/gestures/arena.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGestureArenaManager extends VMManagedBox<GestureArenaManager> {
  VMManagedGestureArenaManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close(luaCallerArguments[1]);
      return [];
    });
    table['sweep'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sweep(luaCallerArguments[1]);
      return [];
    });
    table['hold'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hold(luaCallerArguments[1]);
      return [];
    });
    table['release'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.release(luaCallerArguments[1]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final GestureArenaManager vmObject;
}

class RTManagedGestureArenaManager extends GestureArenaManager
    implements Box<GestureArenaManager> {
  RTManagedGestureArenaManager({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
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
    table['_dart_close'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.close(luaCallerArguments[1]);
      return [];
    });
    table['_dart_sweep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sweep(luaCallerArguments[1]);
      return [];
    });
    table['_dart_hold'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hold(luaCallerArguments[1]);
      return [];
    });
    table['_dart_release'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.release(luaCallerArguments[1]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  GestureArenaManager unwrap() => this;
  GestureArenaManager get vmObject => this;
  @override
  GestureArenaEntry add(pointer, member) {
    Closure closure = table["add"];
    return maybeUnBoxAndBuildArgument<GestureArenaEntry, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void close(pointer) {
    Closure closure = table["close"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sweep(pointer) {
    Closure closure = table["sweep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void hold(pointer) {
    Closure closure = table["hold"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void release(pointer) {
    Closure closure = table["release"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadGestureArenaManager(
    {required HydroState hydroState, required HydroTable table}) {
  table['gestureArenaManager'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedGestureArenaManager(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<GestureArenaManager>(boxer: (
      {required GestureArenaManager vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGestureArenaManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
