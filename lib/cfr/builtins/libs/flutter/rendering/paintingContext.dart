import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/clip.dart' as _35bd;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPaintingContext
    extends _36c2.VMManagedBox<_9742.PaintingContext> {
  VMManagedPaintingContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['estimatedBounds'] = _36c2.maybeBoxObject<_a643.Rect>(
        object: vmObject.estimatedBounds,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['paintChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paintChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getCanvas'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Canvas>(
            object: vmObject.canvas,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setIsComplexHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setIsComplexHint();
      return [];
    });
    table['setWillChangeHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setWillChangeHint();
      return [];
    });
    table['addLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['pushLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[2];

      vmObject.pushLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          childPaintBounds:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                  luaCallerArguments.length >= 5
                      ? luaCallerArguments[4]['childPaintBounds']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['pushClipRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];

      final returnValue = vmObject.pushClipRect(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 6
                  ? luaCallerArguments[5]['clipBehavior']
                  : null),
          oldLayer: _36c2
              .maybeUnBoxAndBuildArgument<_7d70.ClipRectLayer?, _fac9.dynamic>(
                  luaCallerArguments.length >= 6
                      ? luaCallerArguments[5]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7d70.ClipRectLayer?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipRRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[5];

      final returnValue = vmObject.pushClipRRect(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.RRect, _fac9.dynamic>(
              luaCallerArguments[4],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 7
                  ? luaCallerArguments[6]['clipBehavior']
                  : null),
          oldLayer: _36c2
              .maybeUnBoxAndBuildArgument<_7d70.ClipRRectLayer?, _fac9.dynamic>(
                  luaCallerArguments.length >= 7
                      ? luaCallerArguments[6]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7d70.ClipRRectLayer?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[5];

      final returnValue = vmObject.pushClipPath(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
              luaCallerArguments[4],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 7
                  ? luaCallerArguments[6]['clipBehavior']
                  : null),
          oldLayer: _36c2
              .maybeUnBoxAndBuildArgument<_7d70.ClipPathLayer?, _fac9.dynamic>(
                  luaCallerArguments.length >= 7
                      ? luaCallerArguments[6]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7d70.ClipPathLayer?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['pushColorFilter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[3];
      return [
        _36c2.maybeBoxObject<_7d70.ColorFilterLayer>(
            object: vmObject.pushColorFilter(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.ColorFilter,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: _36c2.maybeUnBoxAndBuildArgument<
                        _7d70.ColorFilterLayer?, _fac9.dynamic>(
                    luaCallerArguments.length >= 5
                        ? luaCallerArguments[4]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['pushTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      final returnValue = vmObject.pushTransform(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          oldLayer: _36c2
              .maybeUnBoxAndBuildArgument<_7d70.TransformLayer?, _fac9.dynamic>(
                  luaCallerArguments.length >= 6
                      ? luaCallerArguments[5]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7d70.TransformLayer?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['pushOpacity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[3];
      return [
        _36c2.maybeBoxObject<_7d70.OpacityLayer>(
            object: vmObject.pushOpacity(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                luaCallerArguments[2],
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: _36c2.maybeUnBoxAndBuildArgument<_7d70.OpacityLayer?,
                        _fac9.dynamic>(
                    luaCallerArguments.length >= 5
                        ? luaCallerArguments[4]['oldLayer']
                        : null,
                    parentState: hydroState)),
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
    table['clipPathAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipPathAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['clipRRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipRRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.RRect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['clipRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
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

  final _9742.PaintingContext vmObject;
}

class RTManagedPaintingContext extends _9742.PaintingContext
    implements _36c2.Box<_9742.PaintingContext> {
  RTManagedPaintingContext(
      _7d70.ContainerLayer _containerLayer, _a643.Rect estimatedBounds$,
      {required this.table, required this.hydroState})
      : super(
          _containerLayer,
          estimatedBounds$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['estimatedBounds'] = _36c2.maybeBoxObject(
        object: this.estimatedBounds,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_paintChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paintChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_appendLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.appendLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getCanvas'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.canvas];
    });
    table['_dart_stopRecordingIfNeeded'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.stopRecordingIfNeeded();
      return [];
    });
    table['_dart_setIsComplexHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setIsComplexHint();
      return [];
    });
    table['_dart_setWillChangeHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setWillChangeHint();
      return [];
    });
    table['_dart_addLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_pushLayer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[2];

      super.pushLayer(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          childPaintBounds:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                  luaCallerArguments.length >= 5
                      ? luaCallerArguments[4]['childPaintBounds']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_createChildContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createChildContext(
                _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushClipRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];

      return [
        _36c2.maybeBoxObject(
            object: super.pushClipRect(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 6
                        ? luaCallerArguments[5]['clipBehavior']
                        : null),
                oldLayer: _36c2
                    .maybeUnBoxAndBuildArgument<_7d70.ClipRectLayer?, _fac9.dynamic>(
                        luaCallerArguments.length >= 6
                            ? luaCallerArguments[5]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushClipRRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[5];

      return [
        _36c2.maybeBoxObject(
            object: super.pushClipRRect(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.RRect, _fac9.dynamic>(
                    luaCallerArguments[4],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 7
                        ? luaCallerArguments[6]['clipBehavior']
                        : null),
                oldLayer: _36c2
                    .maybeUnBoxAndBuildArgument<_7d70.ClipRRectLayer?, _fac9.dynamic>(
                        luaCallerArguments.length >= 7 ? luaCallerArguments[6]['oldLayer'] : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushClipPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[5];

      return [
        _36c2.maybeBoxObject(
            object: super.pushClipPath(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
                    luaCallerArguments[4],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                clipBehavior: _36c2.maybeUnBoxEnum(
                    values: _a643.Clip.values,
                    boxedEnum: luaCallerArguments.length >= 7
                        ? luaCallerArguments[6]['clipBehavior']
                        : null),
                oldLayer: _36c2
                    .maybeUnBoxAndBuildArgument<_7d70.ClipPathLayer?, _fac9.dynamic>(
                        luaCallerArguments.length >= 7 ? luaCallerArguments[6]['oldLayer'] : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushColorFilter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[3];
      return [
        _36c2.maybeBoxObject(
            object: super.pushColorFilter(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.ColorFilter,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: _36c2.maybeUnBoxAndBuildArgument<
                        _7d70.ColorFilterLayer?, _fac9.dynamic>(
                    luaCallerArguments.length >= 5
                        ? luaCallerArguments[4]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      return [
        _36c2.maybeBoxObject(
            object: super.pushTransform(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: _36c2.maybeUnBoxAndBuildArgument<
                        _7d70.TransformLayer?, _fac9.dynamic>(
                    luaCallerArguments.length >= 6
                        ? luaCallerArguments[5]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_pushOpacity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[3];
      return [
        _36c2.maybeBoxObject(
            object: super.pushOpacity(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: _36c2.maybeUnBoxAndBuildArgument<_7d70.OpacityLayer?,
                        _fac9.dynamic>(
                    luaCallerArguments.length >= 5
                        ? luaCallerArguments[4]['oldLayer']
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
    table['_dart_clipPathAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      super.clipPathAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clipRRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      super.clipRRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.RRect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clipRectAndPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedpainter = luaCallerArguments[4];
      super.clipRectAndPaint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values, boxedEnum: luaCallerArguments[2]),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _9742.PaintingContext unwrap() => this;
  _9742.PaintingContext get vmObject => this;
  @_fac9.override
  void paintChild(child, offset) {
    _36c2.Closure closure = table["paintChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void appendLayer(layer) {
    _36c2.Closure closure = table["appendLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Canvas get canvas {
    _36c2.Closure closure = table["getCanvas"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void stopRecordingIfNeeded() {
    super.stopRecordingIfNeeded();
    _36c2.Closure closure = table["stopRecordingIfNeeded"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setIsComplexHint() {
    _36c2.Closure closure = table["setIsComplexHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setWillChangeHint() {
    _36c2.Closure closure = table["setWillChangeHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addLayer(layer) {
    _36c2.Closure closure = table["addLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void pushLayer(childLayer, painter, offset, {_a643.Rect? childPaintBounds}) {
    _36c2.Closure closure = table["pushLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _9742.PaintingContext createChildContext(childLayer, bounds) {
    _36c2.Closure closure = table["createChildContext"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7d70.ClipRectLayer? pushClipRect(needsCompositing, offset, clipRect, painter,
      {_a643.Clip clipBehavior = _a643.Clip.hardEdge,
      _7d70.ClipRectLayer? oldLayer}) {
    _36c2.Closure closure = table["pushClipRect"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.ClipRectLayer?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7d70.ClipRRectLayer? pushClipRRect(
      needsCompositing, offset, bounds, clipRRect, painter,
      {_a643.Clip clipBehavior = _a643.Clip.antiAlias,
      _7d70.ClipRRectLayer? oldLayer}) {
    _36c2.Closure closure = table["pushClipRRect"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.ClipRRectLayer?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7d70.ClipPathLayer? pushClipPath(
      needsCompositing, offset, bounds, clipPath, painter,
      {_a643.Clip clipBehavior = _a643.Clip.antiAlias,
      _7d70.ClipPathLayer? oldLayer}) {
    _36c2.Closure closure = table["pushClipPath"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.ClipPathLayer?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7d70.ColorFilterLayer pushColorFilter(offset, colorFilter, painter,
      {_7d70.ColorFilterLayer? oldLayer}) {
    _36c2.Closure closure = table["pushColorFilter"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.ColorFilterLayer, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7d70.TransformLayer? pushTransform(
      needsCompositing, offset, transform, painter,
      {_7d70.TransformLayer? oldLayer}) {
    _36c2.Closure closure = table["pushTransform"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7d70.TransformLayer?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7d70.OpacityLayer pushOpacity(offset, alpha, painter,
      {_7d70.OpacityLayer? oldLayer}) {
    _36c2.Closure closure = table["pushOpacity"];
    return _36c2.maybeUnBoxAndBuildArgument<_7d70.OpacityLayer, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clipPathAndPaint(path, clipBehavior, bounds, painter) {
    _36c2.Closure closure = table["clipPathAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clipRRectAndPaint(rrect, clipBehavior, bounds, painter) {
    _36c2.Closure closure = table["clipRRectAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clipRectAndPaint(rect, clipBehavior, bounds, painter) {
    _36c2.Closure closure = table["clipRectAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPaintingContext(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['paintingContext'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPaintingContext(
          _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  table['paintingContextRepaintCompositedChild'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _9742.PaintingContext.repaintCompositedChild(
        _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        debugAlsoPaintedParent: luaCallerArguments.length >= 3
            ? luaCallerArguments[2]['debugAlsoPaintedParent']
            : null);
    return [];
  });
  table['paintingContextDebugInstrumentRepaintCompositedChild'] = _36c2
      .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _9742.PaintingContext.debugInstrumentRepaintCompositedChild(
        _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        debugAlsoPaintedParent: luaCallerArguments.length >= 3
            ? luaCallerArguments[2]['debugAlsoPaintedParent']
            : null,
        customContext: _36c2
            .maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['customContext']
                    : null,
                parentState: hydroState));
    return [];
  });
  _36c2.registerBoxer<_9742.PaintingContext>(boxer: (
      {required _9742.PaintingContext vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPaintingContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
