import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/floating_action_button_location.dart'
    as _b2ee;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFloatingActionButtonAnimator
    extends _36c2.VMManagedBox<_b2ee.FloatingActionButtonAnimator> {
  VMManagedFloatingActionButtonAnimator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.getOffset(
                begin: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['begin']
                        : null,
                    parentState: hydroState),
                end: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['end']
                        : null,
                    parentState: hydroState),
                progress: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['progress']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getScaleAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.getScaleAnimation(
                parent: _36c2.maybeUnBoxAndBuildArgument<
                        _86ca.Animation<_fac9.double>, _fac9.double>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parent']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getRotationAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.getRotationAnimation(
                parent: _36c2.maybeUnBoxAndBuildArgument<
                        _86ca.Animation<_fac9.double>, _fac9.double>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parent']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAnimationRestart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getAnimationRestart(luaCallerArguments[1]?.toDouble()),
      ];
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

  final _b2ee.FloatingActionButtonAnimator vmObject;
}

class RTManagedFloatingActionButtonAnimator
    extends _b2ee.FloatingActionButtonAnimator
    implements _36c2.Box<_b2ee.FloatingActionButtonAnimator> {
  RTManagedFloatingActionButtonAnimator(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getOffset(
                begin: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['begin']
                        : null,
                    parentState: hydroState),
                end: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['end'] : null,
                    parentState: hydroState),
                progress: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['progress']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getScaleAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getScaleAnimation(
                parent: _36c2.maybeUnBoxAndBuildArgument<
                        _86ca.Animation<_fac9.double>, _fac9.double>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parent']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getRotationAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getRotationAnimation(
                parent: _36c2.maybeUnBoxAndBuildArgument<
                        _86ca.Animation<_fac9.double>, _fac9.double>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parent']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAnimationRestart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getAnimationRestart(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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

  _b2ee.FloatingActionButtonAnimator unwrap() => this;
  _b2ee.FloatingActionButtonAnimator get vmObject => this;
  @_fac9.override
  _a643.Offset getOffset(
      {required _a643.Offset begin,
      required _a643.Offset end,
      required _fac9.double progress}) {
    _36c2.Closure closure = table["getOffset"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> getScaleAnimation(
      {required _86ca.Animation parent}) {
    _36c2.Closure closure = table["getScaleAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> getRotationAnimation(
      {required _86ca.Animation parent}) {
    _36c2.Closure closure = table["getRotationAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double getAnimationRestart(previousValue) {
    _36c2.Closure closure = table["getAnimationRestart"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFloatingActionButtonAnimator(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['floatingActionButtonAnimator'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFloatingActionButtonAnimator(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_b2ee.FloatingActionButtonAnimator>(boxer: (
      {required _b2ee.FloatingActionButtonAnimator vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFloatingActionButtonAnimator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
