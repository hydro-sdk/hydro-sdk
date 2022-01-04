import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/rendering/layer.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedOpacityLayer extends VMManagedBox<OpacityLayer> {
  VMManagedOpacityLayer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['debugCreator'] = vmObject.debugCreator;
    table['getAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.alpha;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.alpha = (luaCallerArguments[1]);
      return [];
    });
    table['getOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.offset;
      if (returnValue != null) {
        return [
          maybeBoxObject<Offset?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.offset = (maybeUnBoxAndBuildArgument<Offset?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['applyTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.applyTransform(
          maybeUnBoxAndBuildArgument<Layer?, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['addToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addToScene(
          maybeUnBoxAndBuildArgument<SceneBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['buildScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Scene>(
            object: vmObject.buildScene(
                maybeUnBoxAndBuildArgument<SceneBuilder, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['updateSubtreeNeedsAddToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.updateSubtreeNeedsAddToScene();
      return [];
    });
    table['findAnnotations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.findAnnotations(
            maybeUnBoxAndBuildArgument<AnnotationResult<dynamic>, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
                parentState: hydroState),
            onlyFirst: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['onlyFirst']
                : null),
      ];
    });
    table['attach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attach(maybeUnBoxAndBuildArgument<Object, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['append'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.append(maybeUnBoxAndBuildArgument<Layer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['removeAllChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.removeAllChildren();
      return [];
    });
    table['addChildrenToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addChildrenToScene(
          maybeUnBoxAndBuildArgument<SceneBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getFirstChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.firstChild;
      if (returnValue != null) {
        return [
          maybeBoxObject<Layer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getLastChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastChild;
      if (returnValue != null) {
        return [
          maybeBoxObject<Layer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getHasChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasChildren,
      ];
    });
    table['dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dropChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.adoptChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['remove'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.remove();
      return [];
    });
    table['find'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.find(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findAllAnnotations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AnnotationResult>(
            object: vmObject.findAllAnnotations(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<ContainerLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getNextSibling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.nextSibling;
      if (returnValue != null) {
        return [
          maybeBoxObject<Layer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getPreviousSibling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.previousSibling;
      if (returnValue != null) {
        return [
          maybeBoxObject<Layer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<Object?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
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

  final OpacityLayer vmObject;
}

class RTManagedOpacityLayer extends OpacityLayer implements Box<OpacityLayer> {
  RTManagedOpacityLayer(
      {int? alpha,
      required Offset offset,
      required this.table,
      required this.hydroState})
      : super(alpha: alpha, offset: offset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['debugCreator'] = debugCreator;
    table['_dart_getAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alpha];
    });
    table['_dart_setAlpha'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.alpha = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.offset];
    });
    table['_dart_setOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.offset = (maybeUnBoxAndBuildArgument<Offset?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_applyTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.applyTransform(
          maybeUnBoxAndBuildArgument<Layer?, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_addToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addToScene(
          maybeUnBoxAndBuildArgument<SceneBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_buildScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Scene>(
            object: super.buildScene(
                maybeUnBoxAndBuildArgument<SceneBuilder, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_updateSubtreeNeedsAddToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.updateSubtreeNeedsAddToScene();
      return [];
    });
    table['_dart_findAnnotations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.findAnnotations(
            maybeUnBoxAndBuildArgument<AnnotationResult<dynamic>, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
                parentState: hydroState),
            onlyFirst: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['onlyFirst']
                : null)
      ];
    });
    table['_dart_attach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attach(maybeUnBoxAndBuildArgument<Object, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_append'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.append(maybeUnBoxAndBuildArgument<Layer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_removeAllChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.removeAllChildren();
      return [];
    });
    table['_dart_addChildrenToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addChildrenToScene(
          maybeUnBoxAndBuildArgument<SceneBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getFirstChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.firstChild];
    });
    table['_dart_getLastChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.lastChild];
    });
    table['_dart_getHasChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasChildren];
    });
    table['_dart_markNeedsAddToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsAddToScene();
      return [];
    });
    table['_dart_dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dropChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.adoptChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_remove'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.remove();
      return [];
    });
    table['_dart_find'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.find(maybeUnBoxAndBuildArgument<Offset, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_findAllAnnotations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AnnotationResult>(
            object: super.findAllAnnotations(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_getAlwaysNeedsAddToScene'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alwaysNeedsAddToScene];
    });
    table['_dart_getEngineLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.engineLayer];
    });
    table['_dart_setEngineLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.engineLayer = (maybeUnBoxAndBuildArgument<EngineLayer?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getNextSibling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.nextSibling];
    });
    table['_dart_getPreviousSibling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.previousSibling];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null)
      ];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_redepthChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  OpacityLayer unwrap() => this;
  OpacityLayer get vmObject => this;
  @override
  int? get alpha {
    Closure closure = table["getAlpha"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set alpha(int? value) {
    Closure closure = table["setAlpha"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset? get offset {
    Closure closure = table["getOffset"];
    return maybeUnBoxAndBuildArgument<Offset?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set offset(Offset? value) {
    Closure closure = table["setOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void applyTransform(Layer? child, Matrix4 transform) {
    Closure closure = table["applyTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addToScene(SceneBuilder builder, [Offset layerOffset = Offset.zero]) {
    Closure closure = table["addToScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Scene buildScene(SceneBuilder builder) {
    Closure closure = table["buildScene"];
    return maybeUnBoxAndBuildArgument<Scene, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void updateSubtreeNeedsAddToScene() {
    Closure closure = table["updateSubtreeNeedsAddToScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool findAnnotations<S extends Object>(
      AnnotationResult result, Offset localPosition,
      {required bool onlyFirst}) {
    Closure closure = table["findAnnotations"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(Object owner) {
    super.attach(owner);
    Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void append(Layer child) {
    Closure closure = table["append"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeAllChildren() {
    Closure closure = table["removeAllChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addChildrenToScene(SceneBuilder builder,
      [Offset childOffset = Offset.zero]) {
    Closure closure = table["addChildrenToScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<Layer> depthFirstIterateChildren() {
    Closure closure = table["depthFirstIterateChildren"];
    return maybeUnBoxAndBuildArgument<List<Layer>, Layer>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Layer? get firstChild {
    Closure closure = table["getFirstChild"];
    return maybeUnBoxAndBuildArgument<Layer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Layer? get lastChild {
    Closure closure = table["getLastChild"];
    return maybeUnBoxAndBuildArgument<Layer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get hasChildren {
    Closure closure = table["getHasChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsAddToScene() {
    Closure closure = table["markNeedsAddToScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugMarkClean() {
    Closure closure = table["debugMarkClean"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(AbstractNode child) {
    super.dropChild(child);
    Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void adoptChild(AbstractNode child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void remove() {
    super.remove();
    Closure closure = table["remove"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  S? find<S extends Object>(Offset localPosition) {
    Closure closure = table["find"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AnnotationResult<S> findAllAnnotations<S extends Object>(
      Offset localPosition) {
    Closure closure = table["findAllAnnotations"];
    return maybeUnBoxAndBuildArgument<AnnotationResult<S>, S>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get parent {
    Closure closure = table["getParent"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get alwaysNeedsAddToScene {
    Closure closure = table["getAlwaysNeedsAddToScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get debugSubtreeNeedsAddToScene {
    Closure closure = table["getDebugSubtreeNeedsAddToScene"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  EngineLayer? get engineLayer {
    Closure closure = table["getEngineLayer"];
    return maybeUnBoxAndBuildArgument<EngineLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set engineLayer(EngineLayer? value) {
    Closure closure = table["setEngineLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Layer? get nextSibling {
    Closure closure = table["getNextSibling"];
    return maybeUnBoxAndBuildArgument<Layer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Layer? get previousSibling {
    Closure closure = table["getPreviousSibling"];
    return maybeUnBoxAndBuildArgument<Layer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void redepthChild(AbstractNode child) {
    Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void redepthChildren() {
    Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get depth {
    Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Object? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<Object?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get attached {
    Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadOpacityLayer(
    {required HydroState hydroState, required HydroTable table}) {
  table['opacityLayer'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedOpacityLayer(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alpha: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['alpha']
              : null,
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<OpacityLayer>(boxer: (
      {required OpacityLayer vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedOpacityLayer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
