import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSceneBuilder extends VMManagedBox<SceneBuilder> {
  VMManagedSceneBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['pushTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushTransform(
          maybeUnBoxAndBuildArgument<Float64List, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<TransformEngineLayer?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<TransformEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushOffset(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble(),
          oldLayer: maybeUnBoxAndBuildArgument<OffsetEngineLayer?, dynamic>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<OffsetEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushClipRect(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['clipBehavior']
                  : null),
          oldLayer: maybeUnBoxAndBuildArgument<ClipRectEngineLayer?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ClipRectEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushClipRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['clipBehavior']
                  : null),
          oldLayer: maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ClipRRectEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushClipPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushClipPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['clipBehavior']
                  : null),
          oldLayer: maybeUnBoxAndBuildArgument<ClipPathEngineLayer?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ClipPathEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushOpacity(luaCallerArguments[1],
          offset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['offset']
                  : null,
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<OpacityEngineLayer?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<OpacityEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushColorFilter(
          maybeUnBoxAndBuildArgument<ColorFilter, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          oldLayer:
              maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?, dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ColorFilterEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushImageFilter(
          maybeUnBoxAndBuildArgument<ImageFilter, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          oldLayer:
              maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?, dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ImageFilterEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushBackdropFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushBackdropFilter(
          maybeUnBoxAndBuildArgument<ImageFilter, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          oldLayer:
              maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?, dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['oldLayer']
                      : null,
                  parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<BackdropFilterEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushShaderMask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushShaderMask(
          maybeUnBoxAndBuildArgument<Shader, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[3]),
          oldLayer: maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?, dynamic>(
              luaCallerArguments.length >= 5
                  ? luaCallerArguments[4]['oldLayer']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<ShaderMaskEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pushPhysicalShape'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.pushPhysicalShape(
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          oldLayer:
              maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['oldLayer']
                      : null,
                  parentState: hydroState),
          shadowColor:
              maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null,
                  parentState: hydroState),
          color: maybeUnBoxAndBuildArgument<Color, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          path: maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['path'] : null, parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<PhysicalShapeEngineLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['pop'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.pop();
      return [];
    });
    table['addRetained'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addRetained(maybeUnBoxAndBuildArgument<EngineLayer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addPerformanceOverlay'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPerformanceOverlay(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['addPicture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPicture(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Picture, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          isComplexHint: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isComplexHint']
              : null,
          willChangeHint: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['willChangeHint']
              : null);
      return [];
    });
    table['addTexture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addTexture(luaCallerArguments[1],
          filterQuality: maybeUnBoxEnum(
              values: FilterQuality.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['filterQuality']
                  : null),
          freeze: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['freeze']
              : null,
          height: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['height']
              : null?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['offset']
                  : null,
              parentState: hydroState),
          width: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['width']
              : null?.toDouble());
      return [];
    });
    table['addPlatformView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPlatformView(luaCallerArguments[1],
          height: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['height']
              : null?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['offset']
                  : null,
              parentState: hydroState),
          width: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['width']
              : null?.toDouble());
      return [];
    });
    table['addChildScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addChildScene(
          height: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['height']
              : null?.toDouble(),
          hitTestable: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hitTestable']
              : null,
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState),
          width: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['width']
              : null?.toDouble(),
          sceneHost: maybeUnBoxAndBuildArgument<SceneHost, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['sceneHost']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['setRasterizerTracingThreshold'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setRasterizerTracingThreshold(luaCallerArguments[1]);
      return [];
    });
    table['setCheckerboardRasterCacheImages'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setCheckerboardRasterCacheImages(luaCallerArguments[1]);
      return [];
    });
    table['setCheckerboardOffscreenLayers'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setCheckerboardOffscreenLayers(luaCallerArguments[1]);
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Scene>(
            object: vmObject.build(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SceneBuilder vmObject;
}

class RTManagedSceneBuilder extends SceneBuilder implements Box<SceneBuilder> {
  RTManagedSceneBuilder({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_pushTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TransformEngineLayer?>(
            object: super.pushTransform(
                maybeUnBoxAndBuildArgument<Float64List, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer:
                    maybeUnBoxAndBuildArgument<TransformEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<OffsetEngineLayer?>(
            object: super.pushOffset(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble(),
                oldLayer:
                    maybeUnBoxAndBuildArgument<OffsetEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ClipRectEngineLayer?>(
            object: super.pushClipRect(
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['clipBehavior']
                        : null),
                oldLayer:
                    maybeUnBoxAndBuildArgument<ClipRectEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ClipRRectEngineLayer?>(
            object: super.pushClipRRect(
                maybeUnBoxAndBuildArgument<RRect, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['clipBehavior']
                        : null),
                oldLayer:
                    maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ClipPathEngineLayer?>(
            object: super.pushClipPath(
                maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['clipBehavior']
                        : null),
                oldLayer:
                    maybeUnBoxAndBuildArgument<ClipPathEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<OpacityEngineLayer?>(
            object: super.pushOpacity(luaCallerArguments[1],
                offset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['offset']
                        : null,
                    parentState: hydroState),
                oldLayer:
                    maybeUnBoxAndBuildArgument<OpacityEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ColorFilterEngineLayer?>(
            object: super.pushColorFilter(
                maybeUnBoxAndBuildArgument<ColorFilter, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?,
                        dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ImageFilterEngineLayer?>(
            object: super.pushImageFilter(
                maybeUnBoxAndBuildArgument<ImageFilter, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?,
                        dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushBackdropFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BackdropFilterEngineLayer?>(
            object: super.pushBackdropFilter(
                maybeUnBoxAndBuildArgument<ImageFilter, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?,
                        dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['oldLayer']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushShaderMask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ShaderMaskEngineLayer?>(
            object: super.pushShaderMask(
                maybeUnBoxAndBuildArgument<Shader, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxEnum(
                    values: BlendMode.values, boxedEnum: luaCallerArguments[3]),
                oldLayer:
                    maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 5
                            ? luaCallerArguments[4]['oldLayer']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushPhysicalShape'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PhysicalShapeEngineLayer?>(
            object: super.pushPhysicalShape(
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['clipBehavior']
                        : null),
                oldLayer:
                    maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?, dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['oldLayer']
                            : null,
                        parentState: hydroState),
                shadowColor:
                    maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null,
                        parentState: hydroState),
                color: maybeUnBoxAndBuildArgument<Color, dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
                path: maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['path'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pop'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.pop();
      return [];
    });
    table['_dart_addRetained'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addRetained(maybeUnBoxAndBuildArgument<EngineLayer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addPerformanceOverlay'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPerformanceOverlay(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_addPicture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPicture(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Picture, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          isComplexHint: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isComplexHint']
              : null,
          willChangeHint: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['willChangeHint']
              : null);
      return [];
    });
    table['_dart_addTexture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addTexture(luaCallerArguments[1],
          filterQuality: maybeUnBoxEnum(
              values: FilterQuality.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['filterQuality']
                  : null),
          freeze: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['freeze']
              : null,
          height: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['height']
              : null?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['offset']
                  : null,
              parentState: hydroState),
          width: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['width']
              : null?.toDouble());
      return [];
    });
    table['_dart_addPlatformView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPlatformView(luaCallerArguments[1],
          height: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['height']
              : null?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['offset']
                  : null,
              parentState: hydroState),
          width: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['width']
              : null?.toDouble());
      return [];
    });
    table['_dart_addChildScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addChildScene(
          height: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['height']
              : null?.toDouble(),
          hitTestable: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hitTestable']
              : null,
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState),
          width: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['width']
              : null?.toDouble(),
          sceneHost: maybeUnBoxAndBuildArgument<SceneHost, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['sceneHost']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_setRasterizerTracingThreshold'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setRasterizerTracingThreshold(luaCallerArguments[1]);
      return [];
    });
    table['_dart_setCheckerboardRasterCacheImages'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setCheckerboardRasterCacheImages(luaCallerArguments[1]);
      return [];
    });
    table['_dart_setCheckerboardOffscreenLayers'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setCheckerboardOffscreenLayers(luaCallerArguments[1]);
      return [];
    });
    table['_dart_build'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Scene>(
            object: super.build(), hydroState: hydroState, table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SceneBuilder unwrap() => this;
  SceneBuilder get vmObject => this;
  @override
  TransformEngineLayer? pushTransform(Float64List matrix4,
      {TransformEngineLayer? oldLayer}) {
    Closure closure = table["pushTransform"];
    return maybeUnBoxAndBuildArgument<TransformEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  OffsetEngineLayer? pushOffset(double dx, double dy,
      {OffsetEngineLayer? oldLayer}) {
    Closure closure = table["pushOffset"];
    return maybeUnBoxAndBuildArgument<OffsetEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipRectEngineLayer? pushClipRect(Rect rect,
      {Clip clipBehavior = Clip.antiAlias, ClipRectEngineLayer? oldLayer}) {
    Closure closure = table["pushClipRect"];
    return maybeUnBoxAndBuildArgument<ClipRectEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipRRectEngineLayer? pushClipRRect(RRect rrect,
      {Clip clipBehavior = Clip.antiAlias, ClipRRectEngineLayer? oldLayer}) {
    Closure closure = table["pushClipRRect"];
    return maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipPathEngineLayer? pushClipPath(Path path,
      {Clip clipBehavior = Clip.antiAlias, ClipPathEngineLayer? oldLayer}) {
    Closure closure = table["pushClipPath"];
    return maybeUnBoxAndBuildArgument<ClipPathEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  OpacityEngineLayer? pushOpacity(int alpha,
      {Offset? offset = Offset.zero, OpacityEngineLayer? oldLayer}) {
    Closure closure = table["pushOpacity"];
    return maybeUnBoxAndBuildArgument<OpacityEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ColorFilterEngineLayer? pushColorFilter(ColorFilter filter,
      {ColorFilterEngineLayer? oldLayer}) {
    Closure closure = table["pushColorFilter"];
    return maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ImageFilterEngineLayer? pushImageFilter(ImageFilter filter,
      {ImageFilterEngineLayer? oldLayer}) {
    Closure closure = table["pushImageFilter"];
    return maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BackdropFilterEngineLayer? pushBackdropFilter(ImageFilter filter,
      {BackdropFilterEngineLayer? oldLayer}) {
    Closure closure = table["pushBackdropFilter"];
    return maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ShaderMaskEngineLayer? pushShaderMask(
      Shader shader, Rect maskRect, BlendMode blendMode,
      {ShaderMaskEngineLayer? oldLayer}) {
    Closure closure = table["pushShaderMask"];
    return maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  PhysicalShapeEngineLayer? pushPhysicalShape(
      {Clip clipBehavior = Clip.none,
      PhysicalShapeEngineLayer? oldLayer,
      Color? shadowColor,
      required Color color,
      required double elevation,
      required Path path}) {
    Closure closure = table["pushPhysicalShape"];
    return maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void pop() {
    Closure closure = table["pop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addRetained(EngineLayer retainedLayer) {
    Closure closure = table["addRetained"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPerformanceOverlay(int enabledOptions, Rect bounds) {
    Closure closure = table["addPerformanceOverlay"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPicture(Offset offset, Picture picture,
      {bool isComplexHint = false, bool willChangeHint = false}) {
    Closure closure = table["addPicture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addTexture(int textureId,
      {FilterQuality filterQuality = FilterQuality.low,
      bool freeze = false,
      double height = 0.0,
      Offset offset = Offset.zero,
      double width = 0.0}) {
    Closure closure = table["addTexture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPlatformView(int viewId,
      {double height = 0.0, Offset offset = Offset.zero, double width = 0.0}) {
    Closure closure = table["addPlatformView"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addChildScene(
      {double height = 0.0,
      bool hitTestable = true,
      Offset offset = Offset.zero,
      double width = 0.0,
      required SceneHost sceneHost}) {
    Closure closure = table["addChildScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setRasterizerTracingThreshold(int frameInterval) {
    Closure closure = table["setRasterizerTracingThreshold"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setCheckerboardRasterCacheImages(bool checkerboard) {
    Closure closure = table["setCheckerboardRasterCacheImages"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setCheckerboardOffscreenLayers(bool checkerboard) {
    Closure closure = table["setCheckerboardOffscreenLayers"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Scene build() {
    Closure closure = table["build"];
    return maybeUnBoxAndBuildArgument<Scene, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSceneBuilder(
    {required HydroState hydroState, required HydroTable table}) {
  table['sceneBuilder'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSceneBuilder(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SceneBuilder>(boxer: (
      {required SceneBuilder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSceneBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
