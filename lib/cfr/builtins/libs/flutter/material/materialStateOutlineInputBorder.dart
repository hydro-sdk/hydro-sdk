import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/input_border.dart' as _d817;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMaterialStateOutlineInputBorder
    extends _36c2.VMManagedBox<_da12.MaterialStateOutlineInputBorder> {
  VMManagedMaterialStateOutlineInputBorder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['gapPadding'] = vmObject.gapPadding;
    table['borderRadius'] = _36c2.maybeBoxObject<_9d8a.BorderRadius>(
        object: vmObject.borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderSide'] = _36c2.maybeBoxObject<_6be9.BorderSide>(
        object: vmObject.borderSide,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_d817.InputBorder>(
            object: vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<
                    _fac9.Set<_da12.MaterialState>,
                    _da12.MaterialState>(luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_d817.OutlineInputBorder>(
            object: vmObject.copyWith(
                borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['borderRadius']
                        : null,
                    parentState: hydroState),
                borderSide: _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['borderSide']
                        : null,
                    parentState: hydroState),
                gapPadding: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['gapPadding']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['scale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_d817.OutlineInputBorder>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['lerpFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lerpFrom(
          _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['lerpTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lerpTo(
          _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getInnerPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Path>(
            object: vmObject.getInnerPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getOuterPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Path>(
            object: vmObject.getOuterPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          gapExtent: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['gapExtent']
              : null?.toDouble(),
          gapPercentage: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['gapPercentage']
              : null?.toDouble(),
          gapStart: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['gapStart']
              : null?.toDouble(),
          textDirection: _36c2.maybeUnBoxEnum(
              values: _a643.TextDirection.values,
              boxedEnum: luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['textDirection']
                  : null));
      return [];
    });
    table['getIsOutline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isOutline,
      ];
    });
    table['getDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.dimensions,
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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _da12.MaterialStateOutlineInputBorder vmObject;
}

class RTManagedMaterialStateOutlineInputBorder
    extends _da12.MaterialStateOutlineInputBorder
    implements _36c2.Box<_da12.MaterialStateOutlineInputBorder> {
  RTManagedMaterialStateOutlineInputBorder(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['gapPadding'] = _36c2.maybeBoxObject(
        object: gapPadding, hydroState: hydroState, table: _36c2.HydroTable());
    table['borderRadius'] = _36c2.maybeBoxObject(
        object: borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderSide'] = _36c2.maybeBoxObject(
        object: borderSide, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_resolve'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: resolve(_36c2.maybeUnBoxAndBuildArgument<
                    _fac9.Set<_da12.MaterialState>,
                    _da12.MaterialState>(luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                borderRadius: _36c2
                    .maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['borderRadius']
                            : null,
                        parentState: hydroState),
                borderSide:
                    _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['borderSide'] : null,
                        parentState: hydroState),
                gapPadding: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['gapPadding'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_scale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.scale(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_lerpFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.lerpFrom(
                _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_lerpTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.lerpTo(
                _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getInnerPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getInnerPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOuterPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getOuterPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          gapExtent:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['gapExtent'] : null,
                  parentState: hydroState),
          gapPercentage: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments.length >= 4 ? luaCallerArguments[3]['gapPercentage'] : null,
              parentState: hydroState),
          gapStart: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['gapStart'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null));
      return [];
    });
    table['_dart_getIsOutline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isOutline];
    });
    table['_dart_getDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dimensions];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.add(
                _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                reversed:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['reversed']
                            : null,
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

  _da12.MaterialStateOutlineInputBorder unwrap() => this;
  _da12.MaterialStateOutlineInputBorder get vmObject => this;
  @_fac9.override
  _d817.InputBorder resolve(states) {
    _36c2.Closure closure = table["resolve"];
    return _36c2.maybeUnBoxAndBuildArgument<_d817.InputBorder, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _d817.OutlineInputBorder copyWith(
      {_9d8a.BorderRadius? borderRadius,
      _6be9.BorderSide? borderSide,
      _fac9.double? gapPadding}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_d817.OutlineInputBorder, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _d817.OutlineInputBorder scale(t) {
    _36c2.Closure closure = table["scale"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_d817.OutlineInputBorder, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _6be9.ShapeBorder? lerpFrom(a, t) {
    _36c2.Closure closure = table["lerpFrom"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _6be9.ShapeBorder? lerpTo(b, t) {
    _36c2.Closure closure = table["lerpTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Path getInnerPath(rect, {_a643.TextDirection? textDirection}) {
    _36c2.Closure closure = table["getInnerPath"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Path getOuterPath(rect, {_a643.TextDirection? textDirection}) {
    _36c2.Closure closure = table["getOuterPath"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void paint(canvas, rect,
      {_fac9.double gapExtent = 0.0,
      _fac9.double gapPercentage = 0.0,
      _fac9.double? gapStart,
      _a643.TextDirection? textDirection}) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isOutline {
    _36c2.Closure closure = table["getIsOutline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry get dimensions {
    _36c2.Closure closure = table["getDimensions"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _6be9.ShapeBorder? add(other, {_fac9.bool reversed = false}) {
    _36c2.Closure closure = table["add"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMaterialStateOutlineInputBorder(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['materialStateOutlineInputBorder'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMaterialStateOutlineInputBorder(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['materialStateOutlineInputBorderResolveWith'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedcallback = luaCallerArguments[1];
    return [
      _36c2.maybeBoxObject<_da12.MaterialStateOutlineInputBorder>(
          object: _da12.MaterialStateOutlineInputBorder.resolveWith((states) =>
              _36c2
                  .maybeUnBoxAndBuildArgument<_d817.InputBorder, _fac9.dynamic>(
                      unpackedcallback.dispatch(
                        [luaCallerArguments[0], states],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_da12.MaterialStateOutlineInputBorder>(boxer: (
      {required _da12.MaterialStateOutlineInputBorder vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMaterialStateOutlineInputBorder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
