import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/image.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/semantics/semantics_event.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderImage extends VMManagedBox<RenderImage> {
  VMManagedRenderImage(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['debugImageLabel'] = vmObject.debugImageLabel;
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: vmObject.parentData,
        hydroState: hydroState,
        table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: vmObject.debugCreator,
        hydroState: hydroState,
        table: HydroTable());
    table['getImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.image;
      if (returnValue != null) {
        return [
          maybeBoxObject<Image?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.image = (maybeUnBoxAndBuildArgument<Image?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.width;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.width = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.height;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.height = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getScale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.scale,
      ];
    });
    table['setScale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scale = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.color;
      if (returnValue != null) {
        return [
          maybeBoxObject<Color?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.color = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.opacity;
      if (returnValue != null) {
        return [
          maybeBoxObject<Animation?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.opacity =
          (maybeUnBoxAndBuildArgument<Animation<double>?, double>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        FilterQuality.values.indexWhere((x) {
          return x == vmObject.filterQuality;
        }),
      ];
    });
    table['setFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.filterQuality = (maybeUnBoxEnum(
          values: FilterQuality.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getColorBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.colorBlendMode;
      if (returnValue != null) {
        return [
          BlendMode.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setColorBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.colorBlendMode = (maybeUnBoxEnum(
          values: BlendMode.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getFit'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.fit;
      if (returnValue != null) {
        return [
          BoxFit.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setFit'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.fit = (maybeUnBoxEnum(
          values: BoxFit.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getAlignment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AlignmentGeometry>(
            object: vmObject.alignment,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setAlignment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.alignment =
          (maybeUnBoxAndBuildArgument<AlignmentGeometry, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getRepeat'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        ImageRepeat.values.indexWhere((x) {
          return x == vmObject.repeat;
        }),
      ];
    });
    table['setRepeat'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.repeat = (maybeUnBoxEnum(
          values: ImageRepeat.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getCenterSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.centerSlice;
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setCenterSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.centerSlice = (maybeUnBoxAndBuildArgument<Rect?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.invertColors,
      ];
    });
    table['setInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.invertColors = (luaCallerArguments[1]);
      return [];
    });
    table['getMatchTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.matchTextDirection,
      ];
    });
    table['setMatchTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.matchTextDirection = (luaCallerArguments[1]);
      return [];
    });
    table['getTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.textDirection;
      if (returnValue != null) {
        return [
          TextDirection.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textDirection = (maybeUnBoxEnum(
          values: TextDirection.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isAntiAlias,
      ];
    });
    table['setIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isAntiAlias = (luaCallerArguments[1]);
      return [];
    });
    table['computeMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMinIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMinIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['hitTestSelf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestSelf(maybeUnBoxAndBuildArgument<Offset, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['computeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.computeDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performLayout();
      return [];
    });
    table['attach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attach(maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
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
    table['setupParentData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setupParentData(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMinIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMinIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.getDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugCannotComputeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugCannotComputeDryLayout(
            error: maybeUnBoxAndBuildArgument<FlutterError?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['error']
                    : null,
                parentState: hydroState),
            reason: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['reason']
                : null),
      ];
    });
    table['debugAdoptSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.debugAdoptSize(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugResetSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugResetSize();
      return [];
    });
    table['getDistanceToBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getDistanceToBaseline(
          maybeUnBoxEnum(
              values: TextBaseline.values, boxedEnum: luaCallerArguments[1]),
          onlyReal: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['onlyReal']
              : null);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['debugAssertDoesMeetConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugAssertDoesMeetConstraints();
      return [];
    });
    table['markNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsLayout();
      return [];
    });
    table['performResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performResize();
      return [];
    });
    table['hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hitTest(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.applyPaintTransform(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['globalToLocal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.globalToLocal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['localToGlobal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.localToGlobal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<BoxHitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugHandleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugHandleEvent(
            maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['debugPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugPaint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getHasSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasSize,
      ];
    });
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.size, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getSemanticBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.semanticBounds,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.constraints,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPaintBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.paintBounds,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.reassemble();
      return [];
    });
    table['adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.adoptChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dropChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['markNeedsLayoutForSizedByParentChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['scheduleInitialLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialLayout();
      return [];
    });
    table['layout'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.layout(
          maybeUnBoxAndBuildArgument<Constraints, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['rotate'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['time']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['debugRegisterRepaintBoundaryPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['markNeedsCompositingBitsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['markNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsPaint();
      return [];
    });
    table['scheduleInitialPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialPaint(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['replaceRootLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.replaceRootLayer(
          maybeUnBoxAndBuildArgument<OffsetLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTransformTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Matrix4>(
            object: vmObject.getTransformTo(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['describeApproximatePaintClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeApproximatePaintClip(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['describeSemanticsClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeSemanticsClip(
          maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['scheduleInitialSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialSemantics();
      return [];
    });
    table['sendSemanticsEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sendSemanticsEvent(
          maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['clearSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clearSemantics();
      return [];
    });
    table['markNeedsSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsSemanticsUpdate();
      return [];
    });
    table['visitChildrenForSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['assembleSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.assembleSemanticsNode(
          maybeUnBoxAndBuildArgument<SemanticsNode, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Iterable<SemanticsNode>, SemanticsNode>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
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
    table['showOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.showOnScreen(
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['curve'] : null,
              parentState: hydroState),
          descendant: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null,
              parentState: hydroState));
      return [];
    });
    table['describeForError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeForError(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDebugDisposed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugDisposed;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getDebugDoingThisResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisResize,
      ];
    });
    table['getDebugDoingThisLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayout,
      ];
    });
    table['getDebugCanParentUseSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugCanParentUseSize,
      ];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<PipelineOwner?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getDebugNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsLayout,
      ];
    });
    table['getDebugDoingThisLayoutWithCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayoutWithCallback,
      ];
    });
    table['getDebugDoingThisPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisPaint,
      ];
    });
    table['getIsRepaintBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isRepaintBoundary,
      ];
    });
    table['getDebugLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugLayer;
      if (returnValue != null) {
        return [
          maybeBoxObject<ContainerLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.needsCompositing,
      ];
    });
    table['getDebugNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsPaint,
      ];
    });
    table['getDebugSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugSemantics;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
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
    table['getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<AbstractNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
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

  final RenderImage vmObject;
}

class RTManagedRenderImage extends RenderImage implements Box<RenderImage> {
  RTManagedRenderImage(
      {required AlignmentGeometry alignment,
      Rect? centerSlice,
      Color? color,
      BlendMode? colorBlendMode,
      String? debugImageLabel,
      required FilterQuality filterQuality,
      BoxFit? fit,
      double? height,
      Image? image,
      required bool invertColors,
      required bool isAntiAlias,
      required bool matchTextDirection,
      Animation<double>? opacity,
      required ImageRepeat repeat,
      required double scale,
      TextDirection? textDirection,
      double? width,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            centerSlice: centerSlice,
            color: color,
            colorBlendMode: colorBlendMode,
            debugImageLabel: debugImageLabel,
            filterQuality: filterQuality,
            fit: fit,
            height: height,
            image: image,
            invertColors: invertColors,
            isAntiAlias: isAntiAlias,
            matchTextDirection: matchTextDirection,
            opacity: opacity,
            repeat: repeat,
            scale: scale,
            textDirection: textDirection,
            width: width) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['debugImageLabel'] = this.debugImageLabel;
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: parentData, hydroState: hydroState, table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: debugCreator, hydroState: hydroState, table: HydroTable());
    table['_dart_getImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.image];
    });
    table['_dart_setImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.image = (maybeUnBoxAndBuildArgument<Image?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.width];
    });
    table['_dart_setWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.width = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.height];
    });
    table['_dart_setHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.height = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getScale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scale];
    });
    table['_dart_setScale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scale = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.color];
    });
    table['_dart_setColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.color = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.opacity];
    });
    table['_dart_setOpacity'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.opacity = (maybeUnBoxAndBuildArgument<Animation<double>?, double>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.filterQuality];
    });
    table['_dart_setFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.filterQuality = (maybeUnBoxEnum(
          values: FilterQuality.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getColorBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.colorBlendMode];
    });
    table['_dart_setColorBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.colorBlendMode = (maybeUnBoxEnum(
          values: BlendMode.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getFit'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.fit];
    });
    table['_dart_setFit'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.fit = (maybeUnBoxEnum(
          values: BoxFit.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getAlignment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alignment];
    });
    table['_dart_setAlignment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.alignment = (maybeUnBoxAndBuildArgument<AlignmentGeometry, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getRepeat'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.repeat];
    });
    table['_dart_setRepeat'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.repeat = (maybeUnBoxEnum(
          values: ImageRepeat.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getCenterSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.centerSlice];
    });
    table['_dart_setCenterSlice'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.centerSlice = (maybeUnBoxAndBuildArgument<Rect?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.invertColors];
    });
    table['_dart_setInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.invertColors = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getMatchTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.matchTextDirection];
    });
    table['_dart_setMatchTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.matchTextDirection = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textDirection];
    });
    table['_dart_setTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textDirection = (maybeUnBoxEnum(
          values: TextDirection.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isAntiAlias];
    });
    table['_dart_setIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isAntiAlias = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_computeMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMinIntrinsicWidth(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMinIntrinsicHeight(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_hitTestSelf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestSelf(maybeUnBoxAndBuildArgument<Offset, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_computeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.computeDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performLayout();
      return [];
    });
    table['_dart_attach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attach(maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_paint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.paint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
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
    table['_dart_setupParentData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setupParentData(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMinIntrinsicWidth(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMinIntrinsicHeight(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.getDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugCannotComputeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.debugCannotComputeDryLayout(
            error: maybeUnBoxAndBuildArgument<FlutterError?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['error']
                    : null,
                parentState: hydroState),
            reason: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['reason']
                : null)
      ];
    });
    table['_dart_debugAdoptSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.debugAdoptSize(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugResetSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugResetSize();
      return [];
    });
    table['_dart_getDistanceToBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.getDistanceToBaseline(
            maybeUnBoxEnum(
                values: TextBaseline.values, boxedEnum: luaCallerArguments[1]),
            onlyReal: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['onlyReal']
                : null)
      ];
    });
    table['_dart_getDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.getDistanceToActualBaseline(maybeUnBoxEnum(
            values: TextBaseline.values, boxedEnum: luaCallerArguments[1]))
      ];
    });
    table['_dart_computeDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeDistanceToActualBaseline(maybeUnBoxEnum(
            values: TextBaseline.values, boxedEnum: luaCallerArguments[1]))
      ];
    });
    table['_dart_debugAssertDoesMeetConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugAssertDoesMeetConstraints();
      return [];
    });
    table['_dart_markNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsLayout();
      return [];
    });
    table['_dart_performResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performResize();
      return [];
    });
    table['_dart_hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTest(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_hitTestChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestChildren(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.applyPaintTransform(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_globalToLocal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.globalToLocal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_localToGlobal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.localToGlobal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<BoxHitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugHandleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.debugHandleEvent(
            maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
                luaCallerArguments[2],
                parentState: hydroState))
      ];
    });
    table['_dart_debugPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugPaintSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaintSize(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugPaintBaselines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaintBaselines(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugPaintPointers'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaintPointers(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getHasSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasSize];
    });
    table['_dart_getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_setSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.size = (maybeUnBoxAndBuildArgument<Size, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getSemanticBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.semanticBounds];
    });
    table['_dart_getConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.constraints];
    });
    table['_dart_getPaintBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.paintBounds];
    });
    table['_dart_reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.adoptChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dropChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_markParentNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markParentNeedsLayout();
      return [];
    });
    table['_dart_markNeedsLayoutForSizedByParentChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['_dart_scheduleInitialLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialLayout();
      return [];
    });
    table['_dart_layout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layout(
          maybeUnBoxAndBuildArgument<Constraints, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['_dart_invokeLayoutCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.invokeLayoutCallback((constraints) => unpackedcallback.dispatch(
            [luaCallerArguments[0], constraints],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_rotate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['time']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_debugRegisterRepaintBoundaryPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['_dart_markNeedsCompositingBitsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['_dart_markNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsPaint();
      return [];
    });
    table['_dart_scheduleInitialPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialPaint(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_replaceRootLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.replaceRootLayer(maybeUnBoxAndBuildArgument<OffsetLayer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getTransformTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Matrix4>(
            object: super.getTransformTo(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeApproximatePaintClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.describeApproximatePaintClip(
                maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeSemanticsClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.describeSemanticsClip(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_scheduleInitialSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialSemantics();
      return [];
    });
    table['_dart_describeSemanticsConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.describeSemanticsConfiguration(
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_sendSemanticsEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sendSemanticsEvent(
          maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_clearSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clearSemantics();
      return [];
    });
    table['_dart_markNeedsSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsSemanticsUpdate();
      return [];
    });
    table['_dart_visitChildrenForSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_assembleSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.assembleSemanticsNode(
          maybeUnBoxAndBuildArgument<SemanticsNode, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Iterable<SemanticsNode>, SemanticsNode>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
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
    table['_dart_showOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.showOnScreen(
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['curve'] : null,
              parentState: hydroState),
          descendant: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_describeForError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.describeForError(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getDebugDisposed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDisposed];
    });
    table['_dart_getDebugDoingThisResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisResize];
    });
    table['_dart_getDebugDoingThisLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayout];
    });
    table['_dart_getDebugCanParentUseSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugCanParentUseSize];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getDebugNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugNeedsLayout];
    });
    table['_dart_getDebugDoingThisLayoutWithCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayoutWithCallback];
    });
    table['_dart_getSizedByParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.sizedByParent];
    });
    table['_dart_getDebugDoingThisPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisPaint];
    });
    table['_dart_getIsRepaintBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isRepaintBoundary];
    });
    table['_dart_getAlwaysNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alwaysNeedsCompositing];
    });
    table['_dart_getLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.layer];
    });
    table['_dart_setLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layer = (maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDebugLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugLayer];
    });
    table['_dart_getNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.needsCompositing];
    });
    table['_dart_getDebugNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugNeedsPaint];
    });
    table['_dart_getDebugSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugSemantics];
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
    table['_dart_getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RenderImage unwrap() => this;
  RenderImage get vmObject => this;
  @override
  Image? get image {
    Closure closure = table["getImage"];
    return maybeUnBoxAndBuildArgument<Image?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set image(value) {
    Closure closure = table["setImage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? get width {
    Closure closure = table["getWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set width(value) {
    Closure closure = table["setWidth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? get height {
    Closure closure = table["getHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set height(value) {
    Closure closure = table["setHeight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get scale {
    Closure closure = table["getScale"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set scale(value) {
    Closure closure = table["setScale"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color? get color {
    Closure closure = table["getColor"];
    return maybeUnBoxAndBuildArgument<Color?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set color(value) {
    Closure closure = table["setColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Animation<double>? get opacity {
    Closure closure = table["getOpacity"];
    return maybeUnBoxAndBuildArgument<Animation<double>?, double>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set opacity(value) {
    Closure closure = table["setOpacity"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  FilterQuality get filterQuality {
    Closure closure = table["getFilterQuality"];
    return maybeUnBoxEnum(
        values: FilterQuality.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set filterQuality(value) {
    Closure closure = table["setFilterQuality"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BlendMode? get colorBlendMode {
    Closure closure = table["getColorBlendMode"];
    return maybeUnBoxEnum(
        values: BlendMode.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set colorBlendMode(value) {
    Closure closure = table["setColorBlendMode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BoxFit? get fit {
    Closure closure = table["getFit"];
    return maybeUnBoxEnum(
        values: BoxFit.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set fit(value) {
    Closure closure = table["setFit"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AlignmentGeometry get alignment {
    Closure closure = table["getAlignment"];
    return maybeUnBoxAndBuildArgument<AlignmentGeometry, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set alignment(value) {
    Closure closure = table["setAlignment"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ImageRepeat get repeat {
    Closure closure = table["getRepeat"];
    return maybeUnBoxEnum(
        values: ImageRepeat.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set repeat(value) {
    Closure closure = table["setRepeat"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect? get centerSlice {
    Closure closure = table["getCenterSlice"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set centerSlice(value) {
    Closure closure = table["setCenterSlice"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get invertColors {
    Closure closure = table["getInvertColors"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set invertColors(value) {
    Closure closure = table["setInvertColors"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get matchTextDirection {
    Closure closure = table["getMatchTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set matchTextDirection(value) {
    Closure closure = table["setMatchTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextDirection? get textDirection {
    Closure closure = table["getTextDirection"];
    return maybeUnBoxEnum(
        values: TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set textDirection(value) {
    Closure closure = table["setTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isAntiAlias {
    Closure closure = table["getIsAntiAlias"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isAntiAlias(value) {
    Closure closure = table["setIsAntiAlias"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double computeMinIntrinsicWidth(height) {
    Closure closure = table["computeMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMaxIntrinsicWidth(height) {
    Closure closure = table["computeMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMinIntrinsicHeight(width) {
    Closure closure = table["computeMinIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMaxIntrinsicHeight(width) {
    Closure closure = table["computeMaxIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  bool hitTestSelf(position) {
    Closure closure = table["hitTestSelf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size computeDryLayout(constraints) {
    Closure closure = table["computeDryLayout"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void performLayout() {
    Closure closure = table["performLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(owner) {
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
  void paint(context, offset) {
    Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setupParentData(child) {
    Closure closure = table["setupParentData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double getMinIntrinsicWidth(height) {
    super.getMinIntrinsicWidth(height);
    Closure closure = table["getMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMaxIntrinsicWidth(height) {
    super.getMaxIntrinsicWidth(height);
    Closure closure = table["getMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMinIntrinsicHeight(width) {
    super.getMinIntrinsicHeight(width);
    Closure closure = table["getMinIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMaxIntrinsicHeight(width) {
    super.getMaxIntrinsicHeight(width);
    Closure closure = table["getMaxIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Size getDryLayout(constraints) {
    super.getDryLayout(constraints);
    Closure closure = table["getDryLayout"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool debugCannotComputeDryLayout({FlutterError? error, String? reason}) {
    Closure closure = table["debugCannotComputeDryLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size debugAdoptSize(value) {
    Closure closure = table["debugAdoptSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void debugResetSize() {
    Closure closure = table["debugResetSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? getDistanceToBaseline(baseline, {bool onlyReal = false}) {
    Closure closure = table["getDistanceToBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? getDistanceToActualBaseline(baseline) {
    super.getDistanceToActualBaseline(baseline);
    Closure closure = table["getDistanceToActualBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? computeDistanceToActualBaseline(baseline) {
    Closure closure = table["computeDistanceToActualBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void debugAssertDoesMeetConstraints() {
    Closure closure = table["debugAssertDoesMeetConstraints"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsLayout() {
    Closure closure = table["markNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void performResize() {
    Closure closure = table["performResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTest(result, {required Offset position}) {
    Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTestChildren(result, {required Offset position}) {
    Closure closure = table["hitTestChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void applyPaintTransform(child, transform) {
    Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset globalToLocal(point, {RenderObject? ancestor}) {
    Closure closure = table["globalToLocal"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Offset localToGlobal(point, {RenderObject? ancestor}) {
    Closure closure = table["localToGlobal"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void handleEvent(event, entry) {
    Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugHandleEvent(event, entry) {
    Closure closure = table["debugHandleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaint(context, offset) {
    Closure closure = table["debugPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintSize(context, offset) {
    Closure closure = table["debugPaintSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintBaselines(context, offset) {
    Closure closure = table["debugPaintBaselines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintPointers(context, offset) {
    Closure closure = table["debugPaintPointers"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasSize {
    Closure closure = table["getHasSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size get size {
    Closure closure = table["getSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set size(value) {
    Closure closure = table["setSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect get semanticBounds {
    Closure closure = table["getSemanticBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints get constraints {
    Closure closure = table["getConstraints"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect get paintBounds {
    Closure closure = table["getPaintBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void reassemble() {
    Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void adoptChild(child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(child) {
    super.dropChild(child);
    Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildren(visitor) {
    Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markParentNeedsLayout() {
    Closure closure = table["markParentNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsLayoutForSizedByParentChange() {
    Closure closure = table["markNeedsLayoutForSizedByParentChange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleInitialLayout() {
    Closure closure = table["scheduleInitialLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void layout(constraints, {bool parentUsesSize = false}) {
    Closure closure = table["layout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void invokeLayoutCallback<T extends Constraints>(callback) {
    Closure closure = table["invokeLayoutCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rotate({int? newAngle, int? oldAngle, Duration? time}) {
    Closure closure = table["rotate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugRegisterRepaintBoundaryPaint(
      {bool includedChild = false, bool includedParent = true}) {
    Closure closure = table["debugRegisterRepaintBoundaryPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsCompositingBitsUpdate() {
    Closure closure = table["markNeedsCompositingBitsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsPaint() {
    Closure closure = table["markNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleInitialPaint(rootLayer) {
    Closure closure = table["scheduleInitialPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void replaceRootLayer(rootLayer) {
    Closure closure = table["replaceRootLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Matrix4 getTransformTo(ancestor) {
    Closure closure = table["getTransformTo"];
    return maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeApproximatePaintClip(child) {
    Closure closure = table["describeApproximatePaintClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeSemanticsClip(child) {
    Closure closure = table["describeSemanticsClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void scheduleInitialSemantics() {
    Closure closure = table["scheduleInitialSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void describeSemanticsConfiguration(config) {
    Closure closure = table["describeSemanticsConfiguration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sendSemanticsEvent(semanticsEvent) {
    Closure closure = table["sendSemanticsEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clearSemantics() {
    super.clearSemantics();
    Closure closure = table["clearSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsSemanticsUpdate() {
    Closure closure = table["markNeedsSemanticsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildrenForSemantics(visitor) {
    Closure closure = table["visitChildrenForSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void assembleSemanticsNode(node, config, children) {
    Closure closure = table["assembleSemanticsNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines = ''}) {
    Closure closure = table["toStringDeep"];
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
  List<DiagnosticsNode> debugDescribeChildren() {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void showOnScreen(
      {Curve curve = Curves.ease,
      RenderObject? descendant,
      Duration duration = Duration.zero,
      Rect? rect}) {
    Closure closure = table["showOnScreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode describeForError(name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.shallow}) {
    Closure closure = table["describeForError"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool? get debugDisposed {
    Closure closure = table["getDebugDisposed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisResize {
    Closure closure = table["getDebugDoingThisResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisLayout {
    Closure closure = table["getDebugDoingThisLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugCanParentUseSize {
    Closure closure = table["getDebugCanParentUseSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  PipelineOwner? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<PipelineOwner?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get debugNeedsLayout {
    Closure closure = table["getDebugNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisLayoutWithCallback {
    Closure closure = table["getDebugDoingThisLayoutWithCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get sizedByParent {
    Closure closure = table["getSizedByParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisPaint {
    Closure closure = table["getDebugDoingThisPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isRepaintBoundary {
    Closure closure = table["getIsRepaintBoundary"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get alwaysNeedsCompositing {
    Closure closure = table["getAlwaysNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get layer {
    Closure closure = table["getLayer"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set layer(newLayer) {
    Closure closure = table["setLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get debugLayer {
    Closure closure = table["getDebugLayer"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get needsCompositing {
    Closure closure = table["getNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugNeedsPaint {
    Closure closure = table["getDebugNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsNode? get debugSemantics {
    Closure closure = table["getDebugSemantics"];
    return maybeUnBoxAndBuildArgument<SemanticsNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  void redepthChild(child) {
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
  bool get attached {
    Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AbstractNode? get parent {
    Closure closure = table["getParent"];
    return maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderImage(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderImage'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRenderImage(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: maybeUnBoxAndBuildArgument<AlignmentGeometry, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['alignment']
                  : null,
              parentState: hydroState),
          centerSlice: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['centerSlice']
                  : null,
              parentState: hydroState),
          color:
              maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                  parentState: hydroState),
          colorBlendMode: maybeUnBoxEnum(
              values: BlendMode.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['colorBlendMode']
                  : null),
          debugImageLabel: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['debugImageLabel'] : null,
          filterQuality: maybeUnBoxEnum(values: FilterQuality.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filterQuality'] : null),
          fit: maybeUnBoxEnum(values: BoxFit.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fit'] : null),
          height: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null?.toDouble(),
          image: maybeUnBoxAndBuildArgument<Image?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['image'] : null, parentState: hydroState),
          invertColors: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['invertColors'] : null,
          isAntiAlias: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isAntiAlias'] : null,
          matchTextDirection: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['matchTextDirection'] : null,
          opacity: maybeUnBoxAndBuildArgument<Animation<double>?, double>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['opacity'] : null, parentState: hydroState),
          repeat: maybeUnBoxEnum(values: ImageRepeat.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['repeat'] : null),
          scale: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scale'] : null?.toDouble(),
          textDirection: maybeUnBoxEnum(values: TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          width: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['width'] : null?.toDouble())
    ];
  });
  registerBoxer<RenderImage>(boxer: (
      {required RenderImage vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderImage(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}