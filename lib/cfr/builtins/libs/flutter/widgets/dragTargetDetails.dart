import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/drag_target.dart' as _0705;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDragTargetDetails
    extends _36c2.VMManagedBox<_0705.DragTargetDetails<_fac9.dynamic>> {
  VMManagedDragTargetDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['offset'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.offset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _0705.DragTargetDetails<_fac9.dynamic> vmObject;
}

class RTManagedDragTargetDetails extends _0705.DragTargetDetails
    implements _36c2.Box<_0705.DragTargetDetails> {
  RTManagedDragTargetDetails(
      {required _fac9.dynamic data,
      required _a643.Offset offset,
      required this.table,
      required this.hydroState})
      : super(data: data, offset: offset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['offset'] = _36c2.maybeBoxObject(
        object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0705.DragTargetDetails unwrap() => this;
  _0705.DragTargetDetails get vmObject => this;
}

void loadDragTargetDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dragTargetDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDragTargetDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          data: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['data']
              : null,
          offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0705.DragTargetDetails>(boxer: (
      {required _0705.DragTargetDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDragTargetDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
