import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/drag.dart' as _d9fd;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDrag extends _36c2.VMManagedBox<_d9fd.Drag> {
  VMManagedDrag(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.update(_36c2.maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['end'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.end(
          _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragEndDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['cancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancel();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d9fd.Drag vmObject;
}

class RTManagedDrag extends _d9fd.Drag implements _36c2.Box<_d9fd.Drag> {
  RTManagedDrag({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.update(_36c2.maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_end'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.end(
          _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragEndDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_cancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.cancel();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _d9fd.Drag unwrap() => this;
  _d9fd.Drag get vmObject => this;
  @_fac9.override
  void update(details) {
    _36c2.Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void end(details) {
    _36c2.Closure closure = table["end"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void cancel() {
    _36c2.Closure closure = table["cancel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDrag(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['drag'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDrag(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_d9fd.Drag>(boxer: (
      {required _d9fd.Drag vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDrag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
