import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/tween.dart' as _e83e;
import 'package:flutter/src/material/arc.dart' as _6355;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialRectArcTween
    extends _36c2.VMManagedBox<_6355.MaterialRectArcTween> {
  VMManagedMaterialRectArcTween(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['begin'] = _36c2.maybeBoxObject<_a643.Rect?>(
        object: vmObject.begin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['end'] = _36c2.maybeBoxObject<_a643.Rect?>(
        object: vmObject.end,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getBeginArc'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.beginArc;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6355.MaterialPointArcTween?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getEndArc'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.endArc;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6355.MaterialPointArcTween?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setBegin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.begin =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['setEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.end =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['lerp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Rect>(
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
      final returnValue = vmObject.transform(luaCallerArguments[1]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Rect?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['evaluate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.evaluate(_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Rect?>(
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

  final _6355.MaterialRectArcTween vmObject;
}

class RTManagedMaterialRectArcTween extends _6355.MaterialRectArcTween
    implements _36c2.Box<_6355.MaterialRectArcTween> {
  RTManagedMaterialRectArcTween(
      {_a643.Rect? begin,
      _a643.Rect? end,
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
    table['_dart_getBeginArc'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.beginArc];
    });
    table['_dart_getEndArc'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.endArc];
    });
    table['_dart_setBegin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.begin =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_setEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.end = (_36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
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

  _6355.MaterialRectArcTween unwrap() => this;
  _6355.MaterialRectArcTween get vmObject => this;
  @_fac9.override
  _6355.MaterialPointArcTween? get beginArc {
    _36c2.Closure closure = table["getBeginArc"];
    return _36c2.maybeUnBoxAndBuildArgument<_6355.MaterialPointArcTween?,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _6355.MaterialPointArcTween? get endArc {
    _36c2.Closure closure = table["getEndArc"];
    return _36c2.maybeUnBoxAndBuildArgument<_6355.MaterialPointArcTween?,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  _a643.Rect lerp(t) {
    _36c2.Closure closure = table["lerp"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Rect? transform(t) {
    _36c2.Closure closure = table["transform"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Rect? evaluate(animation) {
    _36c2.Closure closure = table["evaluate"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _86ca.Animation<_a643.Rect?> animate(parent) {
    _36c2.Closure closure = table["animate"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_86ca.Animation<_a643.Rect?>, _a643.Rect?>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _e83e.Animatable<_a643.Rect?> chain(parent) {
    _36c2.Closure closure = table["chain"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e83e.Animatable<_a643.Rect?>, _a643.Rect?>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMaterialRectArcTween(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['materialRectArcTween'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMaterialRectArcTween(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          begin: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['begin']
                  : null,
              parentState: hydroState),
          end: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_6355.MaterialRectArcTween>(boxer: (
      {required _6355.MaterialRectArcTween vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialRectArcTween(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
