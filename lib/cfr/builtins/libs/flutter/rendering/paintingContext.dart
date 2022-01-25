import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/painting/clip.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPaintingContext extends VMManagedBox<PaintingContext> {
  VMManagedPaintingContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['estimatedBounds'] = maybeBoxObject<Rect>(
        object: vmObject.estimatedBounds,
        hydroState: hydroState,
        table: HydroTable());
    table['paintChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paintChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getCanvas'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Canvas>(
            object: vmObject.canvas,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setIsComplexHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setIsComplexHint();
      return [];
    });
    table['setWillChangeHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setWillChangeHint();
      return [];
    });
    table['addLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addLayer(maybeUnBoxAndBuildArgument<Layer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['pushLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[2];

      vmObject.pushLayer(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          childPaintBounds: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 5
                  ? luaCallerArguments[4]['childPaintBounds']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['pushClipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];

      final returnValue = vmObject.pushClipRect(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 6
                  ? luaCallerArguments[5]['clipBehavior']
                  : null),
          oldLayer: maybeUnBoxAndBuildArgument<ClipRectLayer?, dynamic>(
              luaCallerArguments.length >= 6
                  ? luaCallerArguments[5]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ClipRectLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[5];

      final returnValue = vmObject.pushClipRRect(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[4],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 7
                  ? luaCallerArguments[6]['clipBehavior']
                  : null),
          oldLayer: maybeUnBoxAndBuildArgument<ClipRRectLayer?, dynamic>(
              luaCallerArguments.length >= 7
                  ? luaCallerArguments[6]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ClipRRectLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[5];

      final returnValue = vmObject.pushClipPath(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[4],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 7
                  ? luaCallerArguments[6]['clipBehavior']
                  : null),
          oldLayer: maybeUnBoxAndBuildArgument<ClipPathLayer?, dynamic>(
              luaCallerArguments.length >= 7
                  ? luaCallerArguments[6]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ClipPathLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[3];
      return [
        maybeBoxObject<ColorFilterLayer>(
            object: vmObject.pushColorFilter(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<ColorFilter, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer:
                    maybeUnBoxAndBuildArgument<ColorFilterLayer?, dynamic>(
                        luaCallerArguments.length >= 5
                            ? luaCallerArguments[4]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['pushTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      final returnValue = vmObject.pushTransform(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          oldLayer: maybeUnBoxAndBuildArgument<TransformLayer?, dynamic>(
              luaCallerArguments.length >= 6
                  ? luaCallerArguments[5]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<TransformLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[3];
      return [
        maybeBoxObject<OpacityLayer>(
            object: vmObject.pushOpacity(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                luaCallerArguments[2],
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: maybeUnBoxAndBuildArgument<OpacityLayer?, dynamic>(
                    luaCallerArguments.length >= 5
                        ? luaCallerArguments[4]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['clipPathAndPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipPathAndPaint(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: Clip.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['clipRRectAndPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipRRectAndPaint(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: Clip.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['clipRectAndPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      vmObject.clipRectAndPaint(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: Clip.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PaintingContext vmObject;
}

class RTManagedPaintingContext extends PaintingContext
    implements Box<PaintingContext> {
  RTManagedPaintingContext(
      ContainerLayer _containerLayer, Rect estimatedBounds$,
      {required this.table, required this.hydroState})
      : super(
          _containerLayer,
          estimatedBounds$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['estimatedBounds'] = maybeBoxObject<Rect>(
        object: this.estimatedBounds,
        hydroState: hydroState,
        table: HydroTable());
    table['_dart_paintChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.paintChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_appendLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.appendLayer(maybeUnBoxAndBuildArgument<Layer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getCanvas'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.canvas];
    });
    table['_dart_stopRecordingIfNeeded'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.stopRecordingIfNeeded();
      return [];
    });
    table['_dart_setIsComplexHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setIsComplexHint();
      return [];
    });
    table['_dart_setWillChangeHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setWillChangeHint();
      return [];
    });
    table['_dart_addLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addLayer(maybeUnBoxAndBuildArgument<Layer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_pushLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[2];

      super.pushLayer(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          (context, offset) => unpackedpainter.dispatch(
                [luaCallerArguments[0], context, offset],
                parentState: hydroState,
              ),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          childPaintBounds: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 5
                  ? luaCallerArguments[4]['childPaintBounds']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_createChildContext'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PaintingContext>(
            object: super.createChildContext(
                maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];

      return [
        maybeBoxObject<ClipRectLayer?>(
            object: super.pushClipRect(
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 6
                        ? luaCallerArguments[5]['clipBehavior']
                        : null),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRectLayer?, dynamic>(
                    luaCallerArguments.length >= 6
                        ? luaCallerArguments[5]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[5];

      return [
        maybeBoxObject<ClipRRectLayer?>(
            object: super.pushClipRRect(
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<RRect, dynamic>(
                    luaCallerArguments[4],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 7
                        ? luaCallerArguments[6]['clipBehavior']
                        : null),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRRectLayer?, dynamic>(
                    luaCallerArguments.length >= 7
                        ? luaCallerArguments[6]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[5];

      return [
        maybeBoxObject<ClipPathLayer?>(
            object: super.pushClipPath(
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[4],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 7
                        ? luaCallerArguments[6]['clipBehavior']
                        : null),
                oldLayer: maybeUnBoxAndBuildArgument<ClipPathLayer?, dynamic>(
                    luaCallerArguments.length >= 7
                        ? luaCallerArguments[6]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[3];
      return [
        maybeBoxObject<ColorFilterLayer>(
            object: super.pushColorFilter(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<ColorFilter, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer:
                    maybeUnBoxAndBuildArgument<ColorFilterLayer?, dynamic>(
                        luaCallerArguments.length >= 5
                            ? luaCallerArguments[4]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      return [
        maybeBoxObject<TransformLayer?>(
            object: super.pushTransform(
                luaCallerArguments[1],
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState),
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: maybeUnBoxAndBuildArgument<TransformLayer?, dynamic>(
                    luaCallerArguments.length >= 6
                        ? luaCallerArguments[5]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[3];
      return [
        maybeBoxObject<OpacityLayer>(
            object: super.pushOpacity(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                luaCallerArguments[2],
                (context, offset) => unpackedpainter.dispatch(
                      [luaCallerArguments[0], context, offset],
                      parentState: hydroState,
                    ),
                oldLayer: maybeUnBoxAndBuildArgument<OpacityLayer?, dynamic>(
                    luaCallerArguments.length >= 5
                        ? luaCallerArguments[4]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_clipPathAndPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      super.clipPathAndPaint(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: Clip.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clipRRectAndPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      super.clipRRectAndPaint(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: Clip.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_clipRectAndPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedpainter = luaCallerArguments[4];
      super.clipRectAndPaint(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: Clip.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          () => unpackedpainter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              ));
      return [];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PaintingContext unwrap() => this;
  PaintingContext get vmObject => this;
  @override
  void paintChild(child, offset) {
    Closure closure = table["paintChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void appendLayer(layer) {
    Closure closure = table["appendLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Canvas get canvas {
    Closure closure = table["getCanvas"];
    return maybeUnBoxAndBuildArgument<Canvas, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void stopRecordingIfNeeded() {
    super.stopRecordingIfNeeded();
    Closure closure = table["stopRecordingIfNeeded"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setIsComplexHint() {
    Closure closure = table["setIsComplexHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setWillChangeHint() {
    Closure closure = table["setWillChangeHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addLayer(layer) {
    Closure closure = table["addLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void pushLayer(childLayer, painter, offset, {Rect? childPaintBounds}) {
    Closure closure = table["pushLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  PaintingContext createChildContext(childLayer, bounds) {
    Closure closure = table["createChildContext"];
    return maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipRectLayer? pushClipRect(needsCompositing, offset, clipRect, painter,
      {Clip clipBehavior = Clip.hardEdge, ClipRectLayer? oldLayer}) {
    Closure closure = table["pushClipRect"];
    return maybeUnBoxAndBuildArgument<ClipRectLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipRRectLayer? pushClipRRect(
      needsCompositing, offset, bounds, clipRRect, painter,
      {Clip clipBehavior = Clip.antiAlias, ClipRRectLayer? oldLayer}) {
    Closure closure = table["pushClipRRect"];
    return maybeUnBoxAndBuildArgument<ClipRRectLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipPathLayer? pushClipPath(
      needsCompositing, offset, bounds, clipPath, painter,
      {Clip clipBehavior = Clip.antiAlias, ClipPathLayer? oldLayer}) {
    Closure closure = table["pushClipPath"];
    return maybeUnBoxAndBuildArgument<ClipPathLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ColorFilterLayer pushColorFilter(offset, colorFilter, painter,
      {ColorFilterLayer? oldLayer}) {
    Closure closure = table["pushColorFilter"];
    return maybeUnBoxAndBuildArgument<ColorFilterLayer, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  TransformLayer? pushTransform(needsCompositing, offset, transform, painter,
      {TransformLayer? oldLayer}) {
    Closure closure = table["pushTransform"];
    return maybeUnBoxAndBuildArgument<TransformLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  OpacityLayer pushOpacity(offset, alpha, painter, {OpacityLayer? oldLayer}) {
    Closure closure = table["pushOpacity"];
    return maybeUnBoxAndBuildArgument<OpacityLayer, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clipPathAndPaint(path, clipBehavior, bounds, painter) {
    Closure closure = table["clipPathAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clipRRectAndPaint(rrect, clipBehavior, bounds, painter) {
    Closure closure = table["clipRRectAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clipRectAndPaint(rect, clipBehavior, bounds, painter) {
    Closure closure = table["clipRectAndPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPaintingContext(
    {required HydroState hydroState, required HydroTable table}) {
  table['paintingContext'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPaintingContext(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  table['paintingContextRepaintCompositedChild'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    PaintingContext.repaintCompositedChild(
        maybeUnBoxAndBuildArgument<RenderObject, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        debugAlsoPaintedParent: luaCallerArguments.length >= 3
            ? luaCallerArguments[2]['debugAlsoPaintedParent']
            : null);
    return [];
  });
  table['paintingContextDebugInstrumentRepaintCompositedChild'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    PaintingContext.debugInstrumentRepaintCompositedChild(
        maybeUnBoxAndBuildArgument<RenderObject, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        debugAlsoPaintedParent: luaCallerArguments.length >= 3
            ? luaCallerArguments[2]['debugAlsoPaintedParent']
            : null,
        customContext: maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
            luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['customContext']
                : null,
            parentState: hydroState));
    return [];
  });
  registerBoxer<PaintingContext>(boxer: (
      {required PaintingContext vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPaintingContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
