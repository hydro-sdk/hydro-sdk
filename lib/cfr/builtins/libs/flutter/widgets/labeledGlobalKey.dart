import 'dart:core';

import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedLabeledGlobalKey
    extends VMManagedBox<LabeledGlobalKey<State<StatefulWidget>>> {
  VMManagedLabeledGlobalKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final LabeledGlobalKey<State<StatefulWidget>> vmObject;
}

class RTManagedLabeledGlobalKey extends LabeledGlobalKey
    implements Box<LabeledGlobalKey> {
  RTManagedLabeledGlobalKey(String? _debugLabel,
      {required this.table, required this.hydroState})
      : super(
          _debugLabel,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
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
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  LabeledGlobalKey unwrap() => this;
  LabeledGlobalKey get vmObject => this;
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

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadLabeledGlobalKey(
    {required HydroState hydroState, required HydroTable table}) {
  table['labeledGlobalKey'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedLabeledGlobalKey(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<LabeledGlobalKey>(boxer: (
      {required LabeledGlobalKey vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedLabeledGlobalKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
