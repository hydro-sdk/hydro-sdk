import 'dart:core';

import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedIndexedSlot extends VMManagedBox<IndexedSlot<Element?>> {
  VMManagedIndexedSlot(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final IndexedSlot<Element?> vmObject;
}

class RTManagedIndexedSlot extends IndexedSlot implements Box<IndexedSlot> {
  RTManagedIndexedSlot(int index$, dynamic value,
      {required this.table, required this.hydroState})
      : super(
          index$,
          value,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['index'] = this.index;
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  IndexedSlot unwrap() => this;
  IndexedSlot get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadIndexedSlot(
    {required HydroState hydroState, required HydroTable table}) {
  table['indexedSlot'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedIndexedSlot(luaCallerArguments[1], luaCallerArguments[2],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<IndexedSlot>(boxer: (
      {required IndexedSlot vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIndexedSlot(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
