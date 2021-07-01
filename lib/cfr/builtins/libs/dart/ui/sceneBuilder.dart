import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

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
          maybeUnBoxAndBuildArgument<Float64List>(luaCallerArguments[1],
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<TransformEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          oldLayer: maybeUnBoxAndBuildArgument<OffsetEngineLayer?>(
              luaCallerArguments[3]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[1],
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments[2]['clipBehavior']),
          oldLayer: maybeUnBoxAndBuildArgument<ClipRectEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<RRect>(luaCallerArguments[1],
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments[2]['clipBehavior']),
          oldLayer: maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<Path>(luaCallerArguments[1],
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments[2]['clipBehavior']),
          oldLayer: maybeUnBoxAndBuildArgument<ClipPathEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          offset: maybeUnBoxAndBuildArgument<Offset?>(
              luaCallerArguments[2]['offset'],
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<OpacityEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<ColorFilter>(luaCallerArguments[1],
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<ImageFilter>(luaCallerArguments[1],
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<ImageFilter>(luaCallerArguments[1],
              parentState: hydroState),
          oldLayer: maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?>(
              luaCallerArguments[2]['oldLayer'],
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
          maybeUnBoxAndBuildArgument<Shader>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[3]),
          oldLayer: maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?>(
              luaCallerArguments[4]['oldLayer'],
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
              boxedEnum: luaCallerArguments[1]['clipBehavior']),
          oldLayer: maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?>(
              luaCallerArguments[1]['oldLayer'],
              parentState: hydroState),
          shadowColor: maybeUnBoxAndBuildArgument<Color?>(
              luaCallerArguments[1]['shadowColor'],
              parentState: hydroState),
          color: maybeUnBoxAndBuildArgument<Color>(
              luaCallerArguments[1]['color'],
              parentState: hydroState),
          elevation: luaCallerArguments[1]['elevation']?.toDouble(),
          path: maybeUnBoxAndBuildArgument<Path>(luaCallerArguments[1]['path'],
              parentState: hydroState));
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
      vmObject.addRetained(maybeUnBoxAndBuildArgument<EngineLayer>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addPerformanceOverlay'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPerformanceOverlay(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['addPicture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPicture(
          maybeUnBoxAndBuildArgument<Offset>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Picture>(luaCallerArguments[2],
              parentState: hydroState),
          isComplexHint: luaCallerArguments[3]['isComplexHint'],
          willChangeHint: luaCallerArguments[3]['willChangeHint']);
      return [];
    });
    table['addTexture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addTexture(luaCallerArguments[1],
          filterQuality: maybeUnBoxEnum(
              values: FilterQuality.values,
              boxedEnum: luaCallerArguments[2]['filterQuality']),
          freeze: luaCallerArguments[2]['freeze'],
          height: luaCallerArguments[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(
              luaCallerArguments[2]['offset'],
              parentState: hydroState),
          width: luaCallerArguments[2]['width']?.toDouble());
      return [];
    });
    table['addPlatformView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPlatformView(luaCallerArguments[1],
          height: luaCallerArguments[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(
              luaCallerArguments[2]['offset'],
              parentState: hydroState),
          width: luaCallerArguments[2]['width']?.toDouble());
      return [];
    });
    table['addChildScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addChildScene(
          height: luaCallerArguments[1]['height']?.toDouble(),
          hitTestable: luaCallerArguments[1]['hitTestable'],
          offset: maybeUnBoxAndBuildArgument<Offset>(
              luaCallerArguments[1]['offset'],
              parentState: hydroState),
          width: luaCallerArguments[1]['width']?.toDouble(),
          sceneHost: maybeUnBoxAndBuildArgument<SceneHost>(
              luaCallerArguments[1]['sceneHost'],
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
                maybeUnBoxAndBuildArgument<Float64List>(luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<TransformEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                oldLayer: maybeUnBoxAndBuildArgument<OffsetEngineLayer?>(
                    luaCallerArguments[3]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRectEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<RRect>(luaCallerArguments[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<Path>(luaCallerArguments[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values,
                    boxedEnum: luaCallerArguments[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipPathEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                offset: maybeUnBoxAndBuildArgument<Offset?>(
                    luaCallerArguments[2]['offset'],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<OpacityEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<ColorFilter>(luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<ImageFilter>(luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?>(
                    luaCallerArguments[2]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<ImageFilter>(luaCallerArguments[1],
                    parentState: hydroState),
                oldLayer:
                    maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?>(
                        luaCallerArguments[2]['oldLayer'],
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
                maybeUnBoxAndBuildArgument<Shader>(luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxEnum(
                    values: BlendMode.values, boxedEnum: luaCallerArguments[3]),
                oldLayer: maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?>(
                    luaCallerArguments[4]['oldLayer'],
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
                    boxedEnum: luaCallerArguments[1]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?>(
                    luaCallerArguments[1]['oldLayer'],
                    parentState: hydroState),
                shadowColor: maybeUnBoxAndBuildArgument<Color?>(
                    luaCallerArguments[1]['shadowColor'],
                    parentState: hydroState),
                color: maybeUnBoxAndBuildArgument<Color>(
                    luaCallerArguments[1]['color'],
                    parentState: hydroState),
                elevation: luaCallerArguments[1]['elevation']?.toDouble(),
                path: maybeUnBoxAndBuildArgument<Path>(
                    luaCallerArguments[1]['path'],
                    parentState: hydroState)),
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
      super.addRetained(maybeUnBoxAndBuildArgument<EngineLayer>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addPerformanceOverlay'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPerformanceOverlay(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Rect>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_addPicture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPicture(
          maybeUnBoxAndBuildArgument<Offset>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Picture>(luaCallerArguments[2],
              parentState: hydroState),
          isComplexHint: luaCallerArguments[3]['isComplexHint'],
          willChangeHint: luaCallerArguments[3]['willChangeHint']);
      return [];
    });
    table['_dart_addTexture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addTexture(luaCallerArguments[1],
          filterQuality: maybeUnBoxEnum(
              values: FilterQuality.values,
              boxedEnum: luaCallerArguments[2]['filterQuality']),
          freeze: luaCallerArguments[2]['freeze'],
          height: luaCallerArguments[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(
              luaCallerArguments[2]['offset'],
              parentState: hydroState),
          width: luaCallerArguments[2]['width']?.toDouble());
      return [];
    });
    table['_dart_addPlatformView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPlatformView(luaCallerArguments[1],
          height: luaCallerArguments[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(
              luaCallerArguments[2]['offset'],
              parentState: hydroState),
          width: luaCallerArguments[2]['width']?.toDouble());
      return [];
    });
    table['_dart_addChildScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addChildScene(
          height: luaCallerArguments[1]['height']?.toDouble(),
          hitTestable: luaCallerArguments[1]['hitTestable'],
          offset: maybeUnBoxAndBuildArgument<Offset>(
              luaCallerArguments[1]['offset'],
              parentState: hydroState),
          width: luaCallerArguments[1]['width']?.toDouble(),
          sceneHost: maybeUnBoxAndBuildArgument<SceneHost>(
              luaCallerArguments[1]['sceneHost'],
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
    return maybeUnBoxAndBuildArgument<TransformEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  OffsetEngineLayer? pushOffset(double dx, double dy,
      {OffsetEngineLayer? oldLayer}) {
    Closure closure = table["pushOffset"];
    return maybeUnBoxAndBuildArgument<OffsetEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipRectEngineLayer? pushClipRect(Rect rect,
      {Clip clipBehavior = Clip.antiAlias, ClipRectEngineLayer? oldLayer}) {
    Closure closure = table["pushClipRect"];
    return maybeUnBoxAndBuildArgument<ClipRectEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipRRectEngineLayer? pushClipRRect(RRect rrect,
      {Clip clipBehavior = Clip.antiAlias, ClipRRectEngineLayer? oldLayer}) {
    Closure closure = table["pushClipRRect"];
    return maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ClipPathEngineLayer? pushClipPath(Path path,
      {Clip clipBehavior = Clip.antiAlias, ClipPathEngineLayer? oldLayer}) {
    Closure closure = table["pushClipPath"];
    return maybeUnBoxAndBuildArgument<ClipPathEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  OpacityEngineLayer? pushOpacity(int alpha,
      {Offset? offset = Offset.zero, OpacityEngineLayer? oldLayer}) {
    Closure closure = table["pushOpacity"];
    return maybeUnBoxAndBuildArgument<OpacityEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ColorFilterEngineLayer? pushColorFilter(ColorFilter filter,
      {ColorFilterEngineLayer? oldLayer}) {
    Closure closure = table["pushColorFilter"];
    return maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ImageFilterEngineLayer? pushImageFilter(ImageFilter filter,
      {ImageFilterEngineLayer? oldLayer}) {
    Closure closure = table["pushImageFilter"];
    return maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BackdropFilterEngineLayer? pushBackdropFilter(ImageFilter filter,
      {BackdropFilterEngineLayer? oldLayer}) {
    Closure closure = table["pushBackdropFilter"];
    return maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ShaderMaskEngineLayer? pushShaderMask(
      Shader shader, Rect maskRect, BlendMode blendMode,
      {ShaderMaskEngineLayer? oldLayer}) {
    Closure closure = table["pushShaderMask"];
    return maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?>(
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
    return maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?>(
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
    return maybeUnBoxAndBuildArgument<Scene>(
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
