import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/painting/fractional_offset.dart' as _791e;
import 'package:flutter/src/rendering/tweens.dart' as _eb24;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFractionalOffsetTween
    extends _36c2.VMManagedBox<_eb24.FractionalOffsetTween> {
  VMManagedFractionalOffsetTween(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['begin'] = _36c2.maybeBoxObject<_791e.FractionalOffset?>(
        object: vmObject.begin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject<_791e.FractionalOffset?>(
        object: vmObject.end,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lerp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lerp(luaCallerArguments[1]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_791e.FractionalOffset?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.transform(luaCallerArguments[1]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_791e.FractionalOffset?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['evaluate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.evaluate(_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_791e.FractionalOffset?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
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

  final _eb24.FractionalOffsetTween vmObject;
}

class RTManagedFractionalOffsetTween extends _eb24.FractionalOffsetTween
    implements _36c2.Box<_eb24.FractionalOffsetTween> {
  RTManagedFractionalOffsetTween(
      {_791e.FractionalOffset? begin,
      _791e.FractionalOffset? end,
      required this.table,
      required this.hydroState})
      : super(begin: begin, end: end) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['begin'] = _36c2.maybeBoxObject(
        object: this.begin, hydroState: hydroState, table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject(
        object: this.end, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_lerp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.lerp(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.transform(
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
    table['_dart_evaluate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.evaluate(_36c2.maybeUnBoxAndBuildArgument<
                _86ca.Animation<_fac9.double>,
                _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
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

  _eb24.FractionalOffsetTween unwrap() => this;
  _eb24.FractionalOffsetTween get vmObject => this;
  @_fac9.override
  _791e.FractionalOffset? lerp(t) {
    _36c2.Closure closure = table["lerp"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_791e.FractionalOffset?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _791e.FractionalOffset? transform(t) {
    _36c2.Closure closure = table["transform"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_791e.FractionalOffset?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _791e.FractionalOffset? evaluate(animation) {
    _36c2.Closure closure = table["evaluate"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_791e.FractionalOffset?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_791e.FractionalOffset?> animate(parent) {
    _36c2.Closure closure = table["animate"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _86ca.Animation<_791e.FractionalOffset?>, _791e.FractionalOffset?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e83e.Animatable<_791e.FractionalOffset?> chain(parent) {
    _36c2.Closure closure = table["chain"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e83e.Animatable<_791e.FractionalOffset?>, _791e.FractionalOffset?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFractionalOffsetTween(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['fractionalOffsetTween'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFractionalOffsetTween(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          begin: _36c2.maybeUnBoxAndBuildArgument<_791e.FractionalOffset?,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['begin']
                  : null,
              parentState: hydroState),
          end: _36c2.maybeUnBoxAndBuildArgument<_791e.FractionalOffset?,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_eb24.FractionalOffsetTween>(boxer: (
      {required _eb24.FractionalOffsetTween vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFractionalOffsetTween(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
