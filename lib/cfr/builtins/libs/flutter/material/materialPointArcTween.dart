import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/material/arc.dart' as _6355;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialPointArcTween
    extends _36c2.VMManagedBox<_6355.MaterialPointArcTween> {
  VMManagedMaterialPointArcTween(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['begin'] = _36c2.maybeBoxObject<_a643.Offset?>(
        object: vmObject.begin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject<_a643.Offset?>(
        object: vmObject.end,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getCenter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.center;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Offset?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.radius;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getBeginAngle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.beginAngle;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getEndAngle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.endAngle;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setBegin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.begin =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['setEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.end =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['lerp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.lerp(luaCallerArguments[1]?.toDouble()),
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
    table['transform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.transform(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['evaluate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
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

  final _6355.MaterialPointArcTween vmObject;
}

class RTManagedMaterialPointArcTween extends _6355.MaterialPointArcTween
    implements _36c2.Box<_6355.MaterialPointArcTween> {
  RTManagedMaterialPointArcTween(
      {_a643.Offset? begin,
      _a643.Offset? end,
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
    table['_dart_getCenter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.center];
    });
    table['_dart_getRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.radius];
    });
    table['_dart_getBeginAngle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.beginAngle];
    });
    table['_dart_getEndAngle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.endAngle];
    });
    table['_dart_setBegin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.begin =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_setEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.end =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
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
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
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

  _6355.MaterialPointArcTween unwrap() => this;
  _6355.MaterialPointArcTween get vmObject => this;
  @_fac9.override
  _a643.Offset? get center {
    _36c2.Closure closure = table["getCenter"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double? get radius {
    _36c2.Closure closure = table["getRadius"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get beginAngle {
    _36c2.Closure closure = table["getBeginAngle"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get endAngle {
    _36c2.Closure closure = table["getEndAngle"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set begin(value) {
    _36c2.Closure closure = table["setBegin"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set end(value) {
    _36c2.Closure closure = table["setEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Offset lerp(t) {
    _36c2.Closure closure = table["lerp"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Offset transform(t) {
    _36c2.Closure closure = table["transform"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Offset evaluate(animation) {
    _36c2.Closure closure = table["evaluate"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_a643.Offset> animate(parent) {
    _36c2.Closure closure = table["animate"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_a643.Offset>,
            _a643.Offset>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e83e.Animatable<_a643.Offset> chain(parent) {
    _36c2.Closure closure = table["chain"];
    return _36c2.maybeUnBoxAndBuildArgument<_e83e.Animatable<_a643.Offset>,
            _a643.Offset>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMaterialPointArcTween(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['materialPointArcTween'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMaterialPointArcTween(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          begin: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['begin']
                  : null,
              parentState: hydroState),
          end: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_6355.MaterialPointArcTween>(boxer: (
      {required _6355.MaterialPointArcTween vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialPointArcTween(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
