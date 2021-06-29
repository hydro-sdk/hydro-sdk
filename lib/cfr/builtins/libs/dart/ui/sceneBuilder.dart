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
    table['pushTransform'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TransformEngineLayer?>(
            object: vmObject.pushTransform(
                maybeUnBoxAndBuildArgument<Float64List>(args[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<TransformEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushOffset'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<OffsetEngineLayer?>(
            object: vmObject.pushOffset(
                args[1]?.toDouble(), args[2]?.toDouble(),
                oldLayer: maybeUnBoxAndBuildArgument<OffsetEngineLayer?>(
                    args[3]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushClipRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ClipRectEngineLayer?>(
            object: vmObject.pushClipRect(
                maybeUnBoxAndBuildArgument<Rect>(args[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRectEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushClipRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ClipRRectEngineLayer?>(
            object: vmObject.pushClipRRect(
                maybeUnBoxAndBuildArgument<RRect>(args[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushClipPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ClipPathEngineLayer?>(
            object: vmObject.pushClipPath(
                maybeUnBoxAndBuildArgument<Path>(args[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipPathEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushOpacity'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<OpacityEngineLayer?>(
            object: vmObject.pushOpacity(args[1],
                offset: maybeUnBoxAndBuildArgument<Offset?>(args[2]['offset'],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<OpacityEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushColorFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ColorFilterEngineLayer?>(
            object: vmObject.pushColorFilter(
                maybeUnBoxAndBuildArgument<ColorFilter>(args[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushImageFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ImageFilterEngineLayer?>(
            object: vmObject.pushImageFilter(
                maybeUnBoxAndBuildArgument<ImageFilter>(args[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushBackdropFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<BackdropFilterEngineLayer?>(
            object: vmObject.pushBackdropFilter(
                maybeUnBoxAndBuildArgument<ImageFilter>(args[1],
                    parentState: hydroState),
                oldLayer:
                    maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?>(
                        args[2]['oldLayer'],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushShaderMask'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ShaderMaskEngineLayer?>(
            object: vmObject.pushShaderMask(
                maybeUnBoxAndBuildArgument<Shader>(args[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect>(args[2],
                    parentState: hydroState),
                maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[3]),
                oldLayer: maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?>(
                    args[4]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushPhysicalShape'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PhysicalShapeEngineLayer?>(
            object: vmObject.pushPhysicalShape(
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[1]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?>(
                    args[1]['oldLayer'],
                    parentState: hydroState),
                shadowColor: maybeUnBoxAndBuildArgument<Color?>(
                    args[1]['shadowColor'],
                    parentState: hydroState),
                color: maybeUnBoxAndBuildArgument<Color>(args[1]['color'],
                    parentState: hydroState),
                elevation: args[1]['elevation']?.toDouble(),
                path: maybeUnBoxAndBuildArgument<Path>(args[1]['path'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pop'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.pop();
      return [];
    });
    table['addRetained'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addRetained(maybeUnBoxAndBuildArgument<EngineLayer>(args[1],
          parentState: hydroState));
      return [];
    });
    table['addPerformanceOverlay'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addPerformanceOverlay(args[1],
          maybeUnBoxAndBuildArgument<Rect>(args[2], parentState: hydroState));
      return [];
    });
    table['addPicture'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addPicture(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Picture>(args[2], parentState: hydroState),
          isComplexHint: args[3]['isComplexHint'],
          willChangeHint: args[3]['willChangeHint']);
      return [];
    });
    table['addTexture'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addTexture(args[1],
          filterQuality: maybeUnBoxEnum(
              values: FilterQuality.values,
              boxedEnum: args[2]['filterQuality']),
          freeze: args[2]['freeze'],
          height: args[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(args[2]['offset'],
              parentState: hydroState),
          width: args[2]['width']?.toDouble());
      return [];
    });
    table['addPlatformView'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addPlatformView(args[1],
          height: args[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(args[2]['offset'],
              parentState: hydroState),
          width: args[2]['width']?.toDouble());
      return [];
    });
    table['addChildScene'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addChildScene(
          height: args[1]['height']?.toDouble(),
          hitTestable: args[1]['hitTestable'],
          offset: maybeUnBoxAndBuildArgument<Offset>(args[1]['offset'],
              parentState: hydroState),
          width: args[1]['width']?.toDouble(),
          sceneHost: maybeUnBoxAndBuildArgument<SceneHost>(args[1]['sceneHost'],
              parentState: hydroState));
      return [];
    });
    table['setRasterizerTracingThreshold'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setRasterizerTracingThreshold(args[1]);
      return [];
    });
    table['setCheckerboardRasterCacheImages'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setCheckerboardRasterCacheImages(args[1]);
      return [];
    });
    table['setCheckerboardOffscreenLayers'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.setCheckerboardOffscreenLayers(args[1]);
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Scene>(
            object: vmObject.build(),
            hydroState: hydroState,
            table: HydroTable())
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_pushTransform'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TransformEngineLayer?>(
            object: super.pushTransform(
                maybeUnBoxAndBuildArgument<Float64List>(args[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<TransformEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushOffset'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<OffsetEngineLayer?>(
            object: super.pushOffset(args[1]?.toDouble(), args[2]?.toDouble(),
                oldLayer: maybeUnBoxAndBuildArgument<OffsetEngineLayer?>(
                    args[3]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ClipRectEngineLayer?>(
            object: super.pushClipRect(
                maybeUnBoxAndBuildArgument<Rect>(args[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRectEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ClipRRectEngineLayer?>(
            object: super.pushClipRRect(
                maybeUnBoxAndBuildArgument<RRect>(args[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipRRectEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushClipPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ClipPathEngineLayer?>(
            object: super.pushClipPath(
                maybeUnBoxAndBuildArgument<Path>(args[1],
                    parentState: hydroState),
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[2]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<ClipPathEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushOpacity'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<OpacityEngineLayer?>(
            object: super.pushOpacity(args[1],
                offset: maybeUnBoxAndBuildArgument<Offset?>(args[2]['offset'],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<OpacityEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ColorFilterEngineLayer?>(
            object: super.pushColorFilter(
                maybeUnBoxAndBuildArgument<ColorFilter>(args[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ColorFilterEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ImageFilterEngineLayer?>(
            object: super.pushImageFilter(
                maybeUnBoxAndBuildArgument<ImageFilter>(args[1],
                    parentState: hydroState),
                oldLayer: maybeUnBoxAndBuildArgument<ImageFilterEngineLayer?>(
                    args[2]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushBackdropFilter'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<BackdropFilterEngineLayer?>(
            object: super.pushBackdropFilter(
                maybeUnBoxAndBuildArgument<ImageFilter>(args[1],
                    parentState: hydroState),
                oldLayer:
                    maybeUnBoxAndBuildArgument<BackdropFilterEngineLayer?>(
                        args[2]['oldLayer'],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushShaderMask'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ShaderMaskEngineLayer?>(
            object: super.pushShaderMask(
                maybeUnBoxAndBuildArgument<Shader>(args[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Rect>(args[2],
                    parentState: hydroState),
                maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[3]),
                oldLayer: maybeUnBoxAndBuildArgument<ShaderMaskEngineLayer?>(
                    args[4]['oldLayer'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pushPhysicalShape'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PhysicalShapeEngineLayer?>(
            object: super.pushPhysicalShape(
                clipBehavior: maybeUnBoxEnum(
                    values: Clip.values, boxedEnum: args[1]['clipBehavior']),
                oldLayer: maybeUnBoxAndBuildArgument<PhysicalShapeEngineLayer?>(
                    args[1]['oldLayer'],
                    parentState: hydroState),
                shadowColor: maybeUnBoxAndBuildArgument<Color?>(
                    args[1]['shadowColor'],
                    parentState: hydroState),
                color: maybeUnBoxAndBuildArgument<Color>(args[1]['color'],
                    parentState: hydroState),
                elevation: args[1]['elevation']?.toDouble(),
                path: maybeUnBoxAndBuildArgument<Path>(args[1]['path'],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_pop'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.pop();
      return [];
    });
    table['_dart_addRetained'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addRetained(maybeUnBoxAndBuildArgument<EngineLayer>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addPerformanceOverlay'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.addPerformanceOverlay(args[1],
          maybeUnBoxAndBuildArgument<Rect>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_addPicture'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addPicture(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Picture>(args[2], parentState: hydroState),
          isComplexHint: args[3]['isComplexHint'],
          willChangeHint: args[3]['willChangeHint']);
      return [];
    });
    table['_dart_addTexture'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addTexture(args[1],
          filterQuality: maybeUnBoxEnum(
              values: FilterQuality.values,
              boxedEnum: args[2]['filterQuality']),
          freeze: args[2]['freeze'],
          height: args[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(args[2]['offset'],
              parentState: hydroState),
          width: args[2]['width']?.toDouble());
      return [];
    });
    table['_dart_addPlatformView'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.addPlatformView(args[1],
          height: args[2]['height']?.toDouble(),
          offset: maybeUnBoxAndBuildArgument<Offset>(args[2]['offset'],
              parentState: hydroState),
          width: args[2]['width']?.toDouble());
      return [];
    });
    table['_dart_addChildScene'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addChildScene(
          height: args[1]['height']?.toDouble(),
          hitTestable: args[1]['hitTestable'],
          offset: maybeUnBoxAndBuildArgument<Offset>(args[1]['offset'],
              parentState: hydroState),
          width: args[1]['width']?.toDouble(),
          sceneHost: maybeUnBoxAndBuildArgument<SceneHost>(args[1]['sceneHost'],
              parentState: hydroState));
      return [];
    });
    table['_dart_setRasterizerTracingThreshold'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.setRasterizerTracingThreshold(args[1]);
      return [];
    });
    table['_dart_setCheckerboardRasterCacheImages'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.setCheckerboardRasterCacheImages(args[1]);
      return [];
    });
    table['_dart_setCheckerboardOffscreenLayers'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.setCheckerboardOffscreenLayers(args[1]);
      return [];
    });
    table['_dart_build'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
  table['sceneBuilder'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedSceneBuilder(table: args[0], hydroState: hydroState)];
  });
  registerBoxer<SceneBuilder>(boxer: (
      {required SceneBuilder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSceneBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
