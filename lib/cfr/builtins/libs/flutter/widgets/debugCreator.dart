import 'dart:core';

import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDebugCreator extends VMManagedBox<DebugCreator> {
  VMManagedDebugCreator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['element'] = maybeBoxObject<Element>(
        object: vmObject.element, hydroState: hydroState, table: HydroTable());
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DebugCreator vmObject;
}

class RTManagedDebugCreator extends DebugCreator implements Box<DebugCreator> {
  RTManagedDebugCreator(Element element$,
      {required this.table, required this.hydroState})
      : super(
          element$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['element'] = maybeBoxObject<Element>(
        object: this.element, hydroState: hydroState, table: HydroTable());
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DebugCreator unwrap() => this;
  DebugCreator get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDebugCreator(
    {required HydroState hydroState, required HydroTable table}) {
  table['debugCreator'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDebugCreator(
          maybeUnBoxAndBuildArgument<Element, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<DebugCreator>(boxer: (
      {required DebugCreator vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDebugCreator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
