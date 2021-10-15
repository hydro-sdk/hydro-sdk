import 'dart:collection';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDoubleLinkedQueueEntry
    extends VMManagedBox<DoubleLinkedQueueEntry<dynamic>> {
  VMManagedDoubleLinkedQueueEntry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.element,
      ];
    });
    table['setElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.element = (luaCallerArguments[1]);
      return [];
    });
    table['append'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.append(luaCallerArguments[1]);
      return [];
    });
    table['prepend'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.prepend(luaCallerArguments[1]);
      return [];
    });
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.remove(),
      ];
    });
    table['previousEntry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.previousEntry();
      if (returnValue != null) {
        return [
          maybeBoxObject<DoubleLinkedQueueEntry?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['nextEntry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.nextEntry();
      if (returnValue != null) {
        return [
          maybeBoxObject<DoubleLinkedQueueEntry?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
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

  final DoubleLinkedQueueEntry vmObject;
}

class RTManagedDoubleLinkedQueueEntry extends DoubleLinkedQueueEntry
    implements Box<DoubleLinkedQueueEntry> {
  RTManagedDoubleLinkedQueueEntry(dynamic? _element,
      {required this.table, required this.hydroState})
      : super(
          _element,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.element];
    });
    table['_dart_setElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.element = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_append'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.append(luaCallerArguments[1]);
      return [];
    });
    table['_dart_prepend'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.prepend(luaCallerArguments[1]);
      return [];
    });
    table['_dart_remove'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.remove()];
    });
    table['_dart_previousEntry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DoubleLinkedQueueEntry?>(
            object: super.previousEntry(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_nextEntry'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DoubleLinkedQueueEntry?>(
            object: super.nextEntry(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DoubleLinkedQueueEntry unwrap() => this;
  DoubleLinkedQueueEntry get vmObject => this;
  @override
  dynamic get element {
    Closure closure = table["getElement"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set element(dynamic element) {
    Closure closure = table["setElement"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void append(dynamic e) {
    Closure closure = table["append"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void prepend(dynamic e) {
    Closure closure = table["prepend"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  dynamic remove() {
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DoubleLinkedQueueEntry<dynamic>? previousEntry() {
    Closure closure = table["previousEntry"];
    return maybeUnBoxAndBuildArgument<DoubleLinkedQueueEntry<dynamic>?,
            dynamic>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DoubleLinkedQueueEntry<dynamic>? nextEntry() {
    Closure closure = table["nextEntry"];
    return maybeUnBoxAndBuildArgument<DoubleLinkedQueueEntry<dynamic>?,
            dynamic>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDoubleLinkedQueueEntry(
    {required HydroState hydroState, required HydroTable table}) {
  table['doubleLinkedQueueEntry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDoubleLinkedQueueEntry(luaCallerArguments[1],
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<DoubleLinkedQueueEntry>(boxer: (
      {required DoubleLinkedQueueEntry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDoubleLinkedQueueEntry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
