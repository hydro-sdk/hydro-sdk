import 'dart:core';

import 'package:flutter/src/semantics/semantics.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsTag extends VMManagedBox<SemanticsTag> {
  VMManagedSemanticsTag(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['name'] = vmObject.name;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsTag vmObject;
}

class RTManagedSemanticsTag extends SemanticsTag implements Box<SemanticsTag> {
  RTManagedSemanticsTag(String name$,
      {required this.table, required this.hydroState})
      : super(
          name$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['name'] = this.name;
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsTag unwrap() => this;
  SemanticsTag get vmObject => this;
  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsTag(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsTag'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsTag(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SemanticsTag>(boxer: (
      {required SemanticsTag vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsTag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
