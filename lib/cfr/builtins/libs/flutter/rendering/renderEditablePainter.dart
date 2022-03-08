import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/rendering/editable.dart' as _7eb4;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderEditablePainter
    extends _36c2.VMManagedBox<_7eb4.RenderEditablePainter> {
  VMManagedRenderEditablePainter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['shouldRepaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRepaint(_36c2.maybeUnBoxAndBuildArgument<
            _7eb4.RenderEditablePainter?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditable, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7eb4.RenderEditablePainter vmObject;
}

void loadRenderEditablePainter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7eb4.RenderEditablePainter>(boxer: (
      {required _7eb4.RenderEditablePainter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderEditablePainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
