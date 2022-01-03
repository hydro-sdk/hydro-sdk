import 'dart:core';

import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedGlobalObjectKey
    extends VMManagedBox<GlobalObjectKey<State<StatefulWidget>>> {
  VMManagedGlobalObjectKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['value'] = maybeBoxObject<Object>(
        object: vmObject.value, hydroState: hydroState, table: HydroTable());
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getCurrentContext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentContext;
      if (returnValue != null) {
        return [
          maybeBoxObject<BuildContext?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getCurrentWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentWidget;
      if (returnValue != null) {
        return [
          maybeBoxObject<Widget?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getCurrentState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentState;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final GlobalObjectKey<State<StatefulWidget>> vmObject;
}

class RTManagedGlobalObjectKey extends GlobalObjectKey
    implements Box<GlobalObjectKey> {
  RTManagedGlobalObjectKey(Object value$,
      {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['value'] = maybeBoxObject<Object>(
        object: this.value, hydroState: hydroState, table: HydroTable());
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getCurrentContext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentContext];
    });
    table['_dart_getCurrentWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentWidget];
    });
    table['_dart_getCurrentState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentState];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  GlobalObjectKey unwrap() => this;
  GlobalObjectKey get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BuildContext? get currentContext {
    Closure closure = table["getCurrentContext"];
    return maybeUnBoxAndBuildArgument<BuildContext?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Widget? get currentWidget {
    Closure closure = table["getCurrentWidget"];
    return maybeUnBoxAndBuildArgument<Widget?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  State<StatefulWidget> get currentState {
    Closure closure = table["getCurrentState"];
    return maybeUnBoxAndBuildArgument<State<StatefulWidget>, StatefulWidget>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadGlobalObjectKey(
    {required HydroState hydroState, required HydroTable table}) {
  table['globalObjectKey'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedGlobalObjectKey(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<GlobalObjectKey>(boxer: (
      {required GlobalObjectKey vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedGlobalObjectKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
