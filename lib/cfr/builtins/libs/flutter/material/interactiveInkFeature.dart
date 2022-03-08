import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/ink_well.dart' as _cd32;
import 'package:flutter/src/material/material.dart' as _e5b9;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInteractiveInkFeature
    extends _36c2.VMManagedBox<_cd32.InteractiveInkFeature> {
  VMManagedInteractiveInkFeature(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['referenceBox'] = _36c2.maybeBoxObject<_be2e.RenderBox>(
        object: vmObject.referenceBox,
        hydroState: hydroState,
        table: _36c2.HydroTable());

    table['confirm'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.confirm();
      return [];
    });
    table['cancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancel();
      return [];
    });
    table['getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.color,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.color =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
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
    table['getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e5b9.MaterialInkController>(
            object: vmObject.controller,
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

  final _cd32.InteractiveInkFeature vmObject;
}

class RTManagedInteractiveInkFeature extends _cd32.InteractiveInkFeature
    implements _36c2.Box<_cd32.InteractiveInkFeature> {
  RTManagedInteractiveInkFeature(
      {void Function()? onRemoved,
      required _a643.Color color,
      required _e5b9.MaterialInkController controller,
      required _be2e.RenderBox referenceBox,
      required this.table,
      required this.hydroState})
      : super(
            onRemoved: onRemoved,
            color: color,
            controller: controller,
            referenceBox: referenceBox) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['referenceBox'] = _36c2.maybeBoxObject(
        object: this.referenceBox,
        hydroState: hydroState,
        table: _36c2.HydroTable());

    table['_dart_confirm'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.confirm();
      return [];
    });
    table['_dart_cancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.cancel();
      return [];
    });
    table['_dart_getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.color];
    });
    table['_dart_setColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.color =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_paintInkCircle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedclipCallback = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['clipCallback']
          : null;

      super.paintInkCircle(
          borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['borderRadius'] : null,
              parentState: hydroState),
          clipCallback: unpackedclipCallback != null
              ? () =>
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                      unpackedclipCallback.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)
              : null,
          customBorder:
              _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['customBorder']
                      : null,
                  parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(
              values: _a643.TextDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['textDirection']
                  : null),
          canvas: _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['canvas'] : null,
              parentState: hydroState),
          center: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['center'] : null, parentState: hydroState),
          paint: _36c2.maybeUnBoxAndBuildArgument<_a643.Paint, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['paint'] : null, parentState: hydroState),
          radius: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radius'] : null, parentState: hydroState),
          transform: _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transform'] : null, parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_paintFeature'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      paintFeature(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
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
    table['_dart_getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.controller];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _cd32.InteractiveInkFeature unwrap() => this;
  _cd32.InteractiveInkFeature get vmObject => this;
  @_fac9.override
  void confirm() {
    _36c2.Closure closure = table["confirm"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void cancel() {
    _36c2.Closure closure = table["cancel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get color {
    _36c2.Closure closure = table["getColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set color(value) {
    _36c2.Closure closure = table["setColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void paintInkCircle(
      {_9d8a.BorderRadius borderRadius = _9d8a.BorderRadius.zero,
      _a643.Rect Function()? clipCallback,
      _6be9.ShapeBorder? customBorder,
      _a643.TextDirection? textDirection,
      required _a643.Canvas canvas,
      required _a643.Offset center,
      required _a643.Paint paint,
      required _fac9.double radius,
      required _db98.Matrix4 transform}) {
    _36c2.Closure closure = table["paintInkCircle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void paintFeature(canvas, transform) {
    _36c2.Closure closure = table["paintFeature"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e5b9.MaterialInkController get controller {
    _36c2.Closure closure = table["getController"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e5b9.MaterialInkController, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInteractiveInkFeature(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['interactiveInkFeature'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonRemoved = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onRemoved']
        : null;

    return [
      RTManagedInteractiveInkFeature(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onRemoved: unpackedonRemoved != null
              ? () => unpackedonRemoved.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['color']
                  : null,
              parentState: hydroState),
          controller: _36c2
              .maybeUnBoxAndBuildArgument<_e5b9.MaterialInkController, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['controller']
                      : null,
                  parentState: hydroState),
          referenceBox:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['referenceBox'] : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_cd32.InteractiveInkFeature>(boxer: (
      {required _cd32.InteractiveInkFeature vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInteractiveInkFeature(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
