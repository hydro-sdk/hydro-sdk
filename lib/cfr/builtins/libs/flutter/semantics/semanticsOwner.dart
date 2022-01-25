import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/semantics/semantics.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsOwner extends VMManagedBox<SemanticsOwner> {
  VMManagedSemanticsOwner(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getRootSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.rootSemanticsNode;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['sendSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sendSemanticsUpdate();
      return [];
    });
    table['performAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performAction(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['performActionAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performActionAt(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
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

  final SemanticsOwner vmObject;
}

class RTManagedSemanticsOwner extends SemanticsOwner
    implements Box<SemanticsOwner> {
  RTManagedSemanticsOwner({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getRootSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.rootSemanticsNode];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_sendSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sendSemanticsUpdate();
      return [];
    });
    table['_dart_performAction'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performAction(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_performActionAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performActionAt(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_addListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_notifyListeners'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasListeners];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsOwner unwrap() => this;
  SemanticsOwner get vmObject => this;
  @override
  SemanticsNode? get rootSemanticsNode {
    Closure closure = table["getRootSemanticsNode"];
    return maybeUnBoxAndBuildArgument<SemanticsNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sendSemanticsUpdate() {
    Closure closure = table["sendSemanticsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void performAction(id, action, [Object? args]) {
    Closure closure = table["performAction"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void performActionAt(position, action, [Object? args]) {
    Closure closure = table["performActionAt"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addListener(listener) {
    Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeListener(listener) {
    Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void notifyListeners() {
    Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasListeners {
    Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsOwner(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsOwner'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsOwner(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SemanticsOwner>(boxer: (
      {required SemanticsOwner vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsOwner(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
