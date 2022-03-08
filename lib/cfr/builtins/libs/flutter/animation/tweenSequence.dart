import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/animation/tween_sequence.dart' as _fb3c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTweenSequence
    extends _36c2.VMManagedBox<_fb3c.TweenSequence<_fac9.dynamic>> {
  VMManagedTweenSequence(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transform(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['evaluate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.evaluate(_36c2.maybeUnBoxAndBuildArgument<
            _86ca.Animation<_fac9.double>,
            _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['animate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.animate(_36c2.maybeUnBoxAndBuildArgument<
                _86ca.Animation<_fac9.double>,
                _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['chain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e83e.Animatable>(
            object: vmObject.chain(_36c2.maybeUnBoxAndBuildArgument<
                _e83e.Animatable<_fac9.double>,
                _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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

  final _fb3c.TweenSequence<_fac9.dynamic> vmObject;
}

class RTManagedTweenSequence extends _fb3c.TweenSequence
    implements _36c2.Box<_fb3c.TweenSequence> {
  RTManagedTweenSequence(
      _fac9.List<_fb3c.TweenSequenceItem<_fac9.dynamic>> items,
      {required this.table,
      required this.hydroState})
      : super(
          items,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.transform(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
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
    table['_dart_evaluate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.evaluate(_36c2.maybeUnBoxAndBuildArgument<
            _86ca.Animation<_fac9.double>,
            _fac9.double>(luaCallerArguments[1], parentState: hydroState))
      ];
    });
    table['_dart_animate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.animate(_36c2.maybeUnBoxAndBuildArgument<
                _86ca.Animation<_fac9.double>,
                _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_chain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.chain(_36c2.maybeUnBoxAndBuildArgument<
                _e83e.Animatable<_fac9.double>,
                _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _fb3c.TweenSequence unwrap() => this;
  _fb3c.TweenSequence get vmObject => this;
  @_fac9.override
  _fac9.dynamic transform(t) {
    _36c2.Closure closure = table["transform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.dynamic evaluate(animation) {
    _36c2.Closure closure = table["evaluate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<_fac9.dynamic> animate(parent) {
    _36c2.Closure closure = table["animate"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.dynamic>,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e83e.Animatable<_fac9.dynamic> chain(parent) {
    _36c2.Closure closure = table["chain"];
    return _36c2.maybeUnBoxAndBuildArgument<_e83e.Animatable<_fac9.dynamic>,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTweenSequence(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tweenSequence'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTweenSequence(
          _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_fb3c.TweenSequenceItem<_fac9.dynamic>>,
                  _fb3c.TweenSequenceItem<_fac9.dynamic>>(luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_fb3c.TweenSequence>(boxer: (
      {required _fb3c.TweenSequence vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTweenSequence(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
