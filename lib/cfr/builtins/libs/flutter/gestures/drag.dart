import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/drag_details.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDrag extends VMManagedBox<Drag> {
  VMManagedDrag(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['update'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.update(maybeUnBoxAndBuildArgument<DragUpdateDetails, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['end'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.end(maybeUnBoxAndBuildArgument<DragEndDetails, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['cancel'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cancel();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Drag vmObject;
}

class RTManagedDrag extends Drag implements Box<Drag> {
  RTManagedDrag({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_update'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.update(maybeUnBoxAndBuildArgument<DragUpdateDetails, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_end'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.end(maybeUnBoxAndBuildArgument<DragEndDetails, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_cancel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cancel();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Drag unwrap() => this;
  Drag get vmObject => this;
  @override
  void update(details) {
    Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void end(details) {
    Closure closure = table["end"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void cancel() {
    Closure closure = table["cancel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDrag({required HydroState hydroState, required HydroTable table}) {
  table['drag'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDrag(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<Drag>(boxer: (
      {required Drag vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDrag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
