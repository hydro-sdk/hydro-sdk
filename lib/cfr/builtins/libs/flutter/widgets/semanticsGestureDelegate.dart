import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/widgets/gesture_detector.dart' as _eed0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsGestureDelegate
    extends _36c2.VMManagedBox<_eed0.SemanticsGestureDelegate> {
  VMManagedSemanticsGestureDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['assignSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.assignSemantics(_36c2.maybeUnBoxAndBuildArgument<
          _bf98.RenderSemanticsGestureHandler,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _eed0.SemanticsGestureDelegate vmObject;
}

class RTManagedSemanticsGestureDelegate extends _eed0.SemanticsGestureDelegate
    implements _36c2.Box<_eed0.SemanticsGestureDelegate> {
  RTManagedSemanticsGestureDelegate(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_assignSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      assignSemantics(_36c2.maybeUnBoxAndBuildArgument<
          _bf98.RenderSemanticsGestureHandler,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _eed0.SemanticsGestureDelegate unwrap() => this;
  _eed0.SemanticsGestureDelegate get vmObject => this;
  @_fac9.override
  void assignSemantics(renderObject) {
    _36c2.Closure closure = table["assignSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsGestureDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['semanticsGestureDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsGestureDelegate(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_eed0.SemanticsGestureDelegate>(boxer: (
      {required _eed0.SemanticsGestureDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsGestureDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
