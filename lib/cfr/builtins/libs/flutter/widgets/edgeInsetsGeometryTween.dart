import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/implicit_animations.dart' as _da7c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedEdgeInsetsGeometryTween
    extends _36c2.VMManagedBox<_da7c.EdgeInsetsGeometryTween> {
  VMManagedEdgeInsetsGeometryTween(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['begin'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.begin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.end,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lerp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.lerp(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.transform(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.evaluate(_36c2.maybeUnBoxAndBuildArgument<
                _86ca.Animation<_fac9.double>,
                _fac9.double>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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

  final _da7c.EdgeInsetsGeometryTween vmObject;
}

class RTManagedEdgeInsetsGeometryTween extends _da7c.EdgeInsetsGeometryTween
    implements _36c2.Box<_da7c.EdgeInsetsGeometryTween> {
  RTManagedEdgeInsetsGeometryTween(
      {_96d1.EdgeInsetsGeometry? begin,
      _96d1.EdgeInsetsGeometry? end,
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

  _da7c.EdgeInsetsGeometryTween unwrap() => this;
  _da7c.EdgeInsetsGeometryTween get vmObject => this;
  @_fac9.override
  _96d1.EdgeInsetsGeometry lerp(t) {
    _36c2.Closure closure = table["lerp"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry transform(t) {
    _36c2.Closure closure = table["transform"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry evaluate(animation) {
    _36c2.Closure closure = table["evaluate"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_96d1.EdgeInsetsGeometry> animate(parent) {
    _36c2.Closure closure = table["animate"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _86ca.Animation<_96d1.EdgeInsetsGeometry>,
            _96d1.EdgeInsetsGeometry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e83e.Animatable<_96d1.EdgeInsetsGeometry> chain(parent) {
    _36c2.Closure closure = table["chain"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e83e.Animatable<_96d1.EdgeInsetsGeometry>,
            _96d1.EdgeInsetsGeometry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadEdgeInsetsGeometryTween(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['edgeInsetsGeometryTween'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedEdgeInsetsGeometryTween(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          begin: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['begin']
                  : null,
              parentState: hydroState),
          end: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_da7c.EdgeInsetsGeometryTween>(boxer: (
      {required _da7c.EdgeInsetsGeometryTween vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedEdgeInsetsGeometryTween(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
