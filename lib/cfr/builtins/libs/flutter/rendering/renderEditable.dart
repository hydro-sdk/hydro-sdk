import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/strut_style.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/editable.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'package:flutter/src/services/text_input.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderEditable extends VMManagedBox<RenderEditable> {
  VMManagedRenderEditable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['ignorePointer'] = vmObject.ignorePointer;
    table['textSelectionDelegate'] = maybeBoxObject<TextSelectionDelegate>(
        object: vmObject.textSelectionDelegate,
        hydroState: hydroState,
        table: HydroTable());
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: vmObject.parentData,
        hydroState: hydroState,
        table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: vmObject.debugCreator,
        hydroState: hydroState,
        table: HydroTable());
    table['getTextHeightBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.textHeightBehavior;
      if (returnValue != null) {
        return [
          maybeBoxObject<TextHeightBehavior?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setTextHeightBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textHeightBehavior =
          (maybeUnBoxAndBuildArgument<TextHeightBehavior?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTextWidthBasis'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        TextWidthBasis.values.indexWhere((x) {
          return x == vmObject.textWidthBasis;
        }),
      ];
    });
    table['setTextWidthBasis'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textWidthBasis = (maybeUnBoxEnum(
          values: TextWidthBasis.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getDevicePixelRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.devicePixelRatio,
      ];
    });
    table['setDevicePixelRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.devicePixelRatio = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getObscuringCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.obscuringCharacter,
      ];
    });
    table['setObscuringCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.obscuringCharacter = (luaCallerArguments[1]);
      return [];
    });
    table['getObscureText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.obscureText,
      ];
    });
    table['setObscureText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.obscureText = (luaCallerArguments[1]);
      return [];
    });
    table['getSelectionStartInViewport'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ValueListenable>(
            object: vmObject.selectionStartInViewport,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getSelectionEndInViewport'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ValueListenable>(
            object: vmObject.selectionEndInViewport,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['systemFontsDidChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.systemFontsDidChange();
      return [];
    });
    table['getText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.text;
      if (returnValue != null) {
        return [
          maybeBoxObject<TextSpan?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.text = (maybeUnBoxAndBuildArgument<TextSpan?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getTextAlign'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        TextAlign.values.indexWhere((x) {
          return x == vmObject.textAlign;
        }),
      ];
    });
    table['setTextAlign'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textAlign = (maybeUnBoxEnum(
          values: TextAlign.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        TextDirection.values.indexWhere((x) {
          return x == vmObject.textDirection;
        }),
      ];
    });
    table['setTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textDirection = (maybeUnBoxEnum(
          values: TextDirection.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.locale;
      if (returnValue != null) {
        return [
          maybeBoxObject<Locale?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.locale = (maybeUnBoxAndBuildArgument<Locale?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getStrutStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.strutStyle;
      if (returnValue != null) {
        return [
          maybeBoxObject<StrutStyle?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setStrutStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.strutStyle = (maybeUnBoxAndBuildArgument<StrutStyle?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.cursorColor;
      if (returnValue != null) {
        return [
          maybeBoxObject<Color?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cursorColor = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getBackgroundCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.backgroundCursorColor;
      if (returnValue != null) {
        return [
          maybeBoxObject<Color?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setBackgroundCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.backgroundCursorColor =
          (maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getShowCursor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ValueNotifier>(
            object: vmObject.showCursor,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setShowCursor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.showCursor =
          (maybeUnBoxAndBuildArgument<ValueNotifier<bool>, bool>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getHasFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasFocus,
      ];
    });
    table['setHasFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hasFocus = (luaCallerArguments[1]);
      return [];
    });
    table['getForceLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.forceLine,
      ];
    });
    table['setForceLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.forceLine = (luaCallerArguments[1]);
      return [];
    });
    table['getReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.readOnly,
      ];
    });
    table['setReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.readOnly = (luaCallerArguments[1]);
      return [];
    });
    table['getMaxLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.maxLines;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setMaxLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.maxLines = (luaCallerArguments[1]);
      return [];
    });
    table['getMinLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.minLines;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setMinLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.minLines = (luaCallerArguments[1]);
      return [];
    });
    table['getExpands'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.expands,
      ];
    });
    table['setExpands'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.expands = (luaCallerArguments[1]);
      return [];
    });
    table['getSelectionColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.selectionColor;
      if (returnValue != null) {
        return [
          maybeBoxObject<Color?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setSelectionColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectionColor = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getTextScaleFactor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.textScaleFactor,
      ];
    });
    table['setTextScaleFactor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textScaleFactor = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.selection;
      if (returnValue != null) {
        return [
          maybeBoxObject<TextSelection?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selection = (maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewportOffset>(
            object: vmObject.offset,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.offset = (maybeUnBoxAndBuildArgument<ViewportOffset, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getCursorWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.cursorWidth,
      ];
    });
    table['setCursorWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cursorWidth = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getCursorHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.cursorHeight,
      ];
    });
    table['setCursorHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cursorHeight = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getPaintCursorAboveText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.paintCursorAboveText,
      ];
    });
    table['setPaintCursorAboveText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paintCursorAboveText = (luaCallerArguments[1]);
      return [];
    });
    table['getCursorOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.cursorOffset;
      if (returnValue != null) {
        return [
          maybeBoxObject<Offset?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setCursorOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cursorOffset = (maybeUnBoxAndBuildArgument<Offset?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getCursorRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.cursorRadius;
      if (returnValue != null) {
        return [
          maybeBoxObject<Radius?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setCursorRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cursorRadius = (maybeUnBoxAndBuildArgument<Radius?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getStartHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<LayerLink>(
            object: vmObject.startHandleLayerLink,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setStartHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.startHandleLayerLink =
          (maybeUnBoxAndBuildArgument<LayerLink, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getEndHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<LayerLink>(
            object: vmObject.endHandleLayerLink,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setEndHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.endHandleLayerLink =
          (maybeUnBoxAndBuildArgument<LayerLink, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getFloatingCursorAddedMargin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<EdgeInsets>(
            object: vmObject.floatingCursorAddedMargin,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setFloatingCursorAddedMargin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.floatingCursorAddedMargin =
          (maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getSelectionHeightStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        BoxHeightStyle.values.indexWhere((x) {
          return x == vmObject.selectionHeightStyle;
        }),
      ];
    });
    table['setSelectionHeightStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectionHeightStyle = (maybeUnBoxEnum(
          values: BoxHeightStyle.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getSelectionWidthStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        BoxWidthStyle.values.indexWhere((x) {
          return x == vmObject.selectionWidthStyle;
        }),
      ];
    });
    table['setSelectionWidthStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectionWidthStyle = (maybeUnBoxEnum(
          values: BoxWidthStyle.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getEnableInteractiveSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.enableInteractiveSelection;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setEnableInteractiveSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.enableInteractiveSelection = (luaCallerArguments[1]);
      return [];
    });
    table['getSelectionEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.selectionEnabled,
      ];
    });
    table['getPromptRectColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.promptRectColor;
      if (returnValue != null) {
        return [
          maybeBoxObject<Color?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setPromptRectColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.promptRectColor = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['setPromptRectRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setPromptRectRange(
          maybeUnBoxAndBuildArgument<TextRange?, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getMaxScrollExtent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.maxScrollExtent,
      ];
    });
    table['getClipBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        Clip.values.indexWhere((x) {
          return x == vmObject.clipBehavior;
        }),
      ];
    });
    table['setClipBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clipBehavior = (maybeUnBoxEnum(
          values: Clip.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['describeSemanticsConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.describeSemanticsConfiguration(
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
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
    table['getEndpointsForSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getEndpointsForSelection(
                    maybeUnBoxAndBuildArgument<TextSelection, dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState))
                .map((x) => maybeBoxObject<TextSelectionPoint>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getRectForComposingRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getRectForComposingRange(
          maybeUnBoxAndBuildArgument<TextRange, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getPositionForPoint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TextPosition>(
            object: vmObject.getPositionForPoint(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getLocalRectForCaret'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.getLocalRectForCaret(
                maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
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
    table['getPreferredLineHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.preferredLineHeight,
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
    table['computeDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeDistanceToActualBaseline(maybeUnBoxEnum(
            values: TextBaseline.values, boxedEnum: luaCallerArguments[1])),
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
    table['getLastSecondaryTapDownPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastSecondaryTapDownPosition;
      if (returnValue != null) {
        return [
          maybeBoxObject<Offset?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['handleSecondaryTapDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleSecondaryTapDown(
          maybeUnBoxAndBuildArgument<TapDownDetails, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handleTapDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleTapDown(
          maybeUnBoxAndBuildArgument<TapDownDetails, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handleTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleTap();
      return [];
    });
    table['handleDoubleTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleDoubleTap();
      return [];
    });
    table['handleLongPress'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleLongPress();
      return [];
    });
    table['selectPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectPosition(
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null));
      return [];
    });
    table['selectPositionAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectPositionAt(
          to: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['to']
                  : null,
              parentState: hydroState),
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null),
          from: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['from']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['selectWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectWord(
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null));
      return [];
    });
    table['selectWordsInRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectWordsInRange(
          to: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['to']
                  : null,
              parentState: hydroState),
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null),
          from: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['from']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['selectWordEdge'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selectWordEdge(
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null));
      return [];
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
    table['setFloatingCursor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setFloatingCursor(
          maybeUnBoxEnum(
              values: FloatingCursorDragState.values,
              boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          resetLerpValue: luaCallerArguments.length >= 5
              ? luaCallerArguments[4]['resetLerpValue']
              : null?.toDouble());
      return [];
    });
    table['calculateBoundedFloatingCursorOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.calculateBoundedFloatingCursorOffset(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
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
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
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

  final RenderEditable vmObject;
}

class RTManagedRenderEditable extends RenderEditable
    implements Box<RenderEditable> {
  RTManagedRenderEditable(
      {Color? backgroundCursorColor,
      required Clip clipBehavior,
      Color? cursorColor,
      double? cursorHeight,
      Offset? cursorOffset,
      Radius? cursorRadius,
      required double cursorWidth,
      required double devicePixelRatio,
      bool? enableInteractiveSelection,
      required bool expands,
      required EdgeInsets floatingCursorAddedMargin,
      required bool forceLine,
      bool? hasFocus,
      required bool ignorePointer,
      Locale? locale,
      int? maxLines,
      int? minLines,
      required bool obscureText,
      required String obscuringCharacter,
      onCaretChanged,
      onSelectionChanged,
      required bool paintCursorAboveText,
      Color? promptRectColor,
      TextRange? promptRectRange,
      required bool readOnly,
      TextSelection? selection,
      Color? selectionColor,
      required BoxHeightStyle selectionHeightStyle,
      required BoxWidthStyle selectionWidthStyle,
      ValueNotifier<bool>? showCursor,
      StrutStyle? strutStyle,
      TextSpan? text,
      required TextAlign textAlign,
      TextHeightBehavior? textHeightBehavior,
      required double textScaleFactor,
      required TextWidthBasis textWidthBasis,
      required LayerLink endHandleLayerLink,
      required ViewportOffset offset,
      required LayerLink startHandleLayerLink,
      required TextDirection textDirection,
      required TextSelectionDelegate textSelectionDelegate,
      required this.table,
      required this.hydroState})
      : super(
            backgroundCursorColor: backgroundCursorColor,
            clipBehavior: clipBehavior,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorOffset: cursorOffset,
            cursorRadius: cursorRadius,
            cursorWidth: cursorWidth,
            devicePixelRatio: devicePixelRatio,
            enableInteractiveSelection: enableInteractiveSelection,
            expands: expands,
            floatingCursorAddedMargin: floatingCursorAddedMargin,
            forceLine: forceLine,
            hasFocus: hasFocus,
            ignorePointer: ignorePointer,
            locale: locale,
            maxLines: maxLines,
            minLines: minLines,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            onCaretChanged: onCaretChanged,
            onSelectionChanged: onSelectionChanged,
            paintCursorAboveText: paintCursorAboveText,
            promptRectColor: promptRectColor,
            promptRectRange: promptRectRange,
            readOnly: readOnly,
            selection: selection,
            selectionColor: selectionColor,
            selectionHeightStyle: selectionHeightStyle,
            selectionWidthStyle: selectionWidthStyle,
            showCursor: showCursor,
            strutStyle: strutStyle,
            text: text,
            textAlign: textAlign,
            textHeightBehavior: textHeightBehavior,
            textScaleFactor: textScaleFactor,
            textWidthBasis: textWidthBasis,
            endHandleLayerLink: endHandleLayerLink,
            offset: offset,
            startHandleLayerLink: startHandleLayerLink,
            textDirection: textDirection,
            textSelectionDelegate: textSelectionDelegate) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['ignorePointer'] = this.ignorePointer;
    table['textSelectionDelegate'] = maybeBoxObject<TextSelectionDelegate>(
        object: this.textSelectionDelegate,
        hydroState: hydroState,
        table: HydroTable());
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: parentData, hydroState: hydroState, table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: debugCreator, hydroState: hydroState, table: HydroTable());
    table['_dart_getTextHeightBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textHeightBehavior];
    });
    table['_dart_setTextHeightBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textHeightBehavior =
          (maybeUnBoxAndBuildArgument<TextHeightBehavior?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTextWidthBasis'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textWidthBasis];
    });
    table['_dart_setTextWidthBasis'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textWidthBasis = (maybeUnBoxEnum(
          values: TextWidthBasis.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getDevicePixelRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.devicePixelRatio];
    });
    table['_dart_setDevicePixelRatio'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.devicePixelRatio = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getObscuringCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.obscuringCharacter];
    });
    table['_dart_setObscuringCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.obscuringCharacter = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getObscureText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.obscureText];
    });
    table['_dart_setObscureText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.obscureText = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getSelectionStartInViewport'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selectionStartInViewport];
    });
    table['_dart_getSelectionEndInViewport'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selectionEndInViewport];
    });
    table['_dart_markNeedsTextLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsTextLayout();
      return [];
    });
    table['_dart_systemFontsDidChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.systemFontsDidChange();
      return [];
    });
    table['_dart_getText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.text];
    });
    table['_dart_setText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.text = (maybeUnBoxAndBuildArgument<TextSpan?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getTextAlign'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textAlign];
    });
    table['_dart_setTextAlign'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textAlign = (maybeUnBoxEnum(
          values: TextAlign.values, boxedEnum: luaCallerArguments[1]));
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
    table['_dart_getLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.locale];
    });
    table['_dart_setLocale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.locale = (maybeUnBoxAndBuildArgument<Locale?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getStrutStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.strutStyle];
    });
    table['_dart_setStrutStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.strutStyle = (maybeUnBoxAndBuildArgument<StrutStyle?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.cursorColor];
    });
    table['_dart_setCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cursorColor = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getBackgroundCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.backgroundCursorColor];
    });
    table['_dart_setBackgroundCursorColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.backgroundCursorColor =
          (maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getShowCursor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.showCursor];
    });
    table['_dart_setShowCursor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.showCursor = (maybeUnBoxAndBuildArgument<ValueNotifier<bool>, bool>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getHasFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasFocus];
    });
    table['_dart_setHasFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hasFocus = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getForceLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.forceLine];
    });
    table['_dart_setForceLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.forceLine = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.readOnly];
    });
    table['_dart_setReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.readOnly = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getMaxLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.maxLines];
    });
    table['_dart_setMaxLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.maxLines = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getMinLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.minLines];
    });
    table['_dart_setMinLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.minLines = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getExpands'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.expands];
    });
    table['_dart_setExpands'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.expands = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getSelectionColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selectionColor];
    });
    table['_dart_setSelectionColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectionColor = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getTextScaleFactor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textScaleFactor];
    });
    table['_dart_setTextScaleFactor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textScaleFactor = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selection];
    });
    table['_dart_setSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selection = (maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.offset];
    });
    table['_dart_setOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.offset = (maybeUnBoxAndBuildArgument<ViewportOffset, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getCursorWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.cursorWidth];
    });
    table['_dart_setCursorWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cursorWidth = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getCursorHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.cursorHeight];
    });
    table['_dart_setCursorHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cursorHeight = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getPaintCursorAboveText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.paintCursorAboveText];
    });
    table['_dart_setPaintCursorAboveText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.paintCursorAboveText = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getCursorOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.cursorOffset];
    });
    table['_dart_setCursorOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cursorOffset = (maybeUnBoxAndBuildArgument<Offset?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getCursorRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.cursorRadius];
    });
    table['_dart_setCursorRadius'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cursorRadius = (maybeUnBoxAndBuildArgument<Radius?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getStartHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.startHandleLayerLink];
    });
    table['_dart_setStartHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.startHandleLayerLink =
          (maybeUnBoxAndBuildArgument<LayerLink, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getEndHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.endHandleLayerLink];
    });
    table['_dart_setEndHandleLayerLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.endHandleLayerLink =
          (maybeUnBoxAndBuildArgument<LayerLink, dynamic>(luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getFloatingCursorAddedMargin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.floatingCursorAddedMargin];
    });
    table['_dart_setFloatingCursorAddedMargin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.floatingCursorAddedMargin =
          (maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getSelectionHeightStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selectionHeightStyle];
    });
    table['_dart_setSelectionHeightStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectionHeightStyle = (maybeUnBoxEnum(
          values: BoxHeightStyle.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getSelectionWidthStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selectionWidthStyle];
    });
    table['_dart_setSelectionWidthStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectionWidthStyle = (maybeUnBoxEnum(
          values: BoxWidthStyle.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getEnableInteractiveSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.enableInteractiveSelection];
    });
    table['_dart_setEnableInteractiveSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.enableInteractiveSelection = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getSelectionEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selectionEnabled];
    });
    table['_dart_getPromptRectColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.promptRectColor];
    });
    table['_dart_setPromptRectColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.promptRectColor = (maybeUnBoxAndBuildArgument<Color?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_setPromptRectRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setPromptRectRange(maybeUnBoxAndBuildArgument<TextRange?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getMaxScrollExtent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.maxScrollExtent];
    });
    table['_dart_getClipBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.clipBehavior];
    });
    table['_dart_setClipBehavior'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clipBehavior = (maybeUnBoxEnum(
          values: Clip.values, boxedEnum: luaCallerArguments[1]));
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
    table['_dart_getEndpointsForSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .getEndpointsForSelection(
                    maybeUnBoxAndBuildArgument<TextSelection, dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState))
                .map((x) => maybeBoxObject<TextSelectionPoint>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getRectForComposingRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.getRectForComposingRange(
                maybeUnBoxAndBuildArgument<TextRange, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getPositionForPoint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TextPosition>(
            object: super.getPositionForPoint(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getLocalRectForCaret'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: super.getLocalRectForCaret(
                maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
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
    table['_dart_getPreferredLineHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.preferredLineHeight];
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
    table['_dart_computeDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeDistanceToActualBaseline(maybeUnBoxEnum(
            values: TextBaseline.values, boxedEnum: luaCallerArguments[1]))
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
    table['_dart_getLastSecondaryTapDownPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.lastSecondaryTapDownPosition];
    });
    table['_dart_handleSecondaryTapDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleSecondaryTapDown(
          maybeUnBoxAndBuildArgument<TapDownDetails, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleTapDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleTapDown(maybeUnBoxAndBuildArgument<TapDownDetails, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_handleTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleTap();
      return [];
    });
    table['_dart_handleDoubleTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleDoubleTap();
      return [];
    });
    table['_dart_handleLongPress'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleLongPress();
      return [];
    });
    table['_dart_selectPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectPosition(
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null));
      return [];
    });
    table['_dart_selectPositionAt'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectPositionAt(
          to: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['to']
                  : null,
              parentState: hydroState),
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null),
          from: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['from']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_selectWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectWord(
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null));
      return [];
    });
    table['_dart_selectWordsInRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectWordsInRange(
          to: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['to']
                  : null,
              parentState: hydroState),
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null),
          from: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['from']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_selectWordEdge'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selectWordEdge(
          cause: maybeUnBoxEnum(
              values: SelectionChangedCause.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cause']
                  : null));
      return [];
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
    table['_dart_setFloatingCursor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setFloatingCursor(
          maybeUnBoxEnum(
              values: FloatingCursorDragState.values,
              boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          resetLerpValue: luaCallerArguments.length >= 5
              ? luaCallerArguments[4]['resetLerpValue']
              : null?.toDouble());
      return [];
    });
    table['_dart_calculateBoundedFloatingCursorOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.calculateBoundedFloatingCursorOffset(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
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
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
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

  RenderEditable unwrap() => this;
  RenderEditable get vmObject => this;
  @override
  TextHeightBehavior? get textHeightBehavior {
    Closure closure = table["getTextHeightBehavior"];
    return maybeUnBoxAndBuildArgument<TextHeightBehavior?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set textHeightBehavior(TextHeightBehavior? value) {
    Closure closure = table["setTextHeightBehavior"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextWidthBasis get textWidthBasis {
    Closure closure = table["getTextWidthBasis"];
    return maybeUnBoxEnum(
        values: TextWidthBasis.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set textWidthBasis(TextWidthBasis value) {
    Closure closure = table["setTextWidthBasis"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get devicePixelRatio {
    Closure closure = table["getDevicePixelRatio"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set devicePixelRatio(double value) {
    Closure closure = table["setDevicePixelRatio"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get obscuringCharacter {
    Closure closure = table["getObscuringCharacter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set obscuringCharacter(String value) {
    Closure closure = table["setObscuringCharacter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get obscureText {
    Closure closure = table["getObscureText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set obscureText(bool value) {
    Closure closure = table["setObscureText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ValueListenable<bool> get selectionStartInViewport {
    Closure closure = table["getSelectionStartInViewport"];
    return maybeUnBoxAndBuildArgument<ValueListenable<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ValueListenable<bool> get selectionEndInViewport {
    Closure closure = table["getSelectionEndInViewport"];
    return maybeUnBoxAndBuildArgument<ValueListenable<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void markNeedsTextLayout() {
    Closure closure = table["markNeedsTextLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void systemFontsDidChange() {
    super.systemFontsDidChange();
    Closure closure = table["systemFontsDidChange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextSpan? get text {
    Closure closure = table["getText"];
    return maybeUnBoxAndBuildArgument<TextSpan?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set text(TextSpan? value) {
    Closure closure = table["setText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextAlign get textAlign {
    Closure closure = table["getTextAlign"];
    return maybeUnBoxEnum(
        values: TextAlign.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set textAlign(TextAlign value) {
    Closure closure = table["setTextAlign"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextDirection get textDirection {
    Closure closure = table["getTextDirection"];
    return maybeUnBoxEnum(
        values: TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set textDirection(TextDirection value) {
    Closure closure = table["setTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Locale? get locale {
    Closure closure = table["getLocale"];
    return maybeUnBoxAndBuildArgument<Locale?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set locale(Locale? value) {
    Closure closure = table["setLocale"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  StrutStyle? get strutStyle {
    Closure closure = table["getStrutStyle"];
    return maybeUnBoxAndBuildArgument<StrutStyle?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set strutStyle(StrutStyle? value) {
    Closure closure = table["setStrutStyle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color? get cursorColor {
    Closure closure = table["getCursorColor"];
    return maybeUnBoxAndBuildArgument<Color?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set cursorColor(Color? value) {
    Closure closure = table["setCursorColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color? get backgroundCursorColor {
    Closure closure = table["getBackgroundCursorColor"];
    return maybeUnBoxAndBuildArgument<Color?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set backgroundCursorColor(Color? value) {
    Closure closure = table["setBackgroundCursorColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ValueNotifier<bool> get showCursor {
    Closure closure = table["getShowCursor"];
    return maybeUnBoxAndBuildArgument<ValueNotifier<bool>, bool>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set showCursor(ValueNotifier value) {
    Closure closure = table["setShowCursor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasFocus {
    Closure closure = table["getHasFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set hasFocus(bool value) {
    Closure closure = table["setHasFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get forceLine {
    Closure closure = table["getForceLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set forceLine(bool value) {
    Closure closure = table["setForceLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get readOnly {
    Closure closure = table["getReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set readOnly(bool value) {
    Closure closure = table["setReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get maxLines {
    Closure closure = table["getMaxLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set maxLines(int? value) {
    Closure closure = table["setMaxLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get minLines {
    Closure closure = table["getMinLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set minLines(int? value) {
    Closure closure = table["setMinLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get expands {
    Closure closure = table["getExpands"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set expands(bool value) {
    Closure closure = table["setExpands"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color? get selectionColor {
    Closure closure = table["getSelectionColor"];
    return maybeUnBoxAndBuildArgument<Color?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set selectionColor(Color? value) {
    Closure closure = table["setSelectionColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get textScaleFactor {
    Closure closure = table["getTextScaleFactor"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set textScaleFactor(double value) {
    Closure closure = table["setTextScaleFactor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextSelection? get selection {
    Closure closure = table["getSelection"];
    return maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set selection(TextSelection? value) {
    Closure closure = table["setSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ViewportOffset get offset {
    Closure closure = table["getOffset"];
    return maybeUnBoxAndBuildArgument<ViewportOffset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set offset(ViewportOffset value) {
    Closure closure = table["setOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get cursorWidth {
    Closure closure = table["getCursorWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set cursorWidth(double value) {
    Closure closure = table["setCursorWidth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get cursorHeight {
    Closure closure = table["getCursorHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set cursorHeight(double? value) {
    Closure closure = table["setCursorHeight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get paintCursorAboveText {
    Closure closure = table["getPaintCursorAboveText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set paintCursorAboveText(bool value) {
    Closure closure = table["setPaintCursorAboveText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset? get cursorOffset {
    Closure closure = table["getCursorOffset"];
    return maybeUnBoxAndBuildArgument<Offset?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set cursorOffset(Offset? value) {
    Closure closure = table["setCursorOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Radius? get cursorRadius {
    Closure closure = table["getCursorRadius"];
    return maybeUnBoxAndBuildArgument<Radius?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set cursorRadius(Radius? value) {
    Closure closure = table["setCursorRadius"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  LayerLink get startHandleLayerLink {
    Closure closure = table["getStartHandleLayerLink"];
    return maybeUnBoxAndBuildArgument<LayerLink, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set startHandleLayerLink(LayerLink value) {
    Closure closure = table["setStartHandleLayerLink"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  LayerLink get endHandleLayerLink {
    Closure closure = table["getEndHandleLayerLink"];
    return maybeUnBoxAndBuildArgument<LayerLink, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set endHandleLayerLink(LayerLink value) {
    Closure closure = table["setEndHandleLayerLink"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  EdgeInsets get floatingCursorAddedMargin {
    Closure closure = table["getFloatingCursorAddedMargin"];
    return maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set floatingCursorAddedMargin(EdgeInsets value) {
    Closure closure = table["setFloatingCursorAddedMargin"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BoxHeightStyle get selectionHeightStyle {
    Closure closure = table["getSelectionHeightStyle"];
    return maybeUnBoxEnum(
        values: BoxHeightStyle.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set selectionHeightStyle(BoxHeightStyle value) {
    Closure closure = table["setSelectionHeightStyle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BoxWidthStyle get selectionWidthStyle {
    Closure closure = table["getSelectionWidthStyle"];
    return maybeUnBoxEnum(
        values: BoxWidthStyle.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set selectionWidthStyle(BoxWidthStyle value) {
    Closure closure = table["setSelectionWidthStyle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get enableInteractiveSelection {
    Closure closure = table["getEnableInteractiveSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set enableInteractiveSelection(bool? value) {
    Closure closure = table["setEnableInteractiveSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get selectionEnabled {
    Closure closure = table["getSelectionEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color? get promptRectColor {
    Closure closure = table["getPromptRectColor"];
    return maybeUnBoxAndBuildArgument<Color?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set promptRectColor(Color? newValue) {
    Closure closure = table["setPromptRectColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setPromptRectRange(TextRange? newRange) {
    Closure closure = table["setPromptRectRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get maxScrollExtent {
    Closure closure = table["getMaxScrollExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Clip get clipBehavior {
    Closure closure = table["getClipBehavior"];
    return maybeUnBoxEnum(
        values: Clip.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set clipBehavior(Clip value) {
    Closure closure = table["setClipBehavior"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void describeSemanticsConfiguration(SemanticsConfiguration config) {
    Closure closure = table["describeSemanticsConfiguration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(PipelineOwner owner) {
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
  List<TextSelectionPoint> getEndpointsForSelection(TextSelection selection) {
    Closure closure = table["getEndpointsForSelection"];
    return maybeUnBoxAndBuildArgument<List<TextSelectionPoint>,
            TextSelectionPoint>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? getRectForComposingRange(TextRange range) {
    Closure closure = table["getRectForComposingRange"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  TextPosition getPositionForPoint(Offset globalPosition) {
    Closure closure = table["getPositionForPoint"];
    return maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect getLocalRectForCaret(TextPosition caretPosition) {
    Closure closure = table["getLocalRectForCaret"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    Closure closure = table["computeMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    Closure closure = table["computeMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get preferredLineHeight {
    Closure closure = table["getPreferredLineHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    Closure closure = table["computeMinIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    Closure closure = table["computeMaxIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeDistanceToActualBaseline(TextBaseline baseline) {
    Closure closure = table["computeDistanceToActualBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  bool hitTestSelf(Offset position) {
    Closure closure = table["hitTestSelf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset? get lastSecondaryTapDownPosition {
    Closure closure = table["getLastSecondaryTapDownPosition"];
    return maybeUnBoxAndBuildArgument<Offset?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void handleSecondaryTapDown(TapDownDetails details) {
    Closure closure = table["handleSecondaryTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleTapDown(TapDownDetails details) {
    Closure closure = table["handleTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleTap() {
    Closure closure = table["handleTap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleDoubleTap() {
    Closure closure = table["handleDoubleTap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleLongPress() {
    Closure closure = table["handleLongPress"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void selectPosition({required SelectionChangedCause cause}) {
    Closure closure = table["selectPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void selectPositionAt(
      {Offset? to,
      required SelectionChangedCause cause,
      required Offset from}) {
    Closure closure = table["selectPositionAt"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void selectWord({required SelectionChangedCause cause}) {
    Closure closure = table["selectWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void selectWordsInRange(
      {Offset? to,
      required SelectionChangedCause cause,
      required Offset from}) {
    Closure closure = table["selectWordsInRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void selectWordEdge({required SelectionChangedCause cause}) {
    Closure closure = table["selectWordEdge"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
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
  void setFloatingCursor(FloatingCursorDragState state, Offset boundedOffset,
      TextPosition lastTextPosition,
      {double? resetLerpValue}) {
    Closure closure = table["setFloatingCursor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset calculateBoundedFloatingCursorOffset(Offset rawCursorOffset) {
    Closure closure = table["calculateBoundedFloatingCursorOffset"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect? describeApproximatePaintClip(RenderObject child) {
    Closure closure = table["describeApproximatePaintClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
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
  void setupParentData(RenderObject child) {
    Closure closure = table["setupParentData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double getMinIntrinsicWidth(double height) {
    super.getMinIntrinsicWidth(height);
    Closure closure = table["getMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMaxIntrinsicWidth(double height) {
    super.getMaxIntrinsicWidth(height);
    Closure closure = table["getMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMinIntrinsicHeight(double width) {
    super.getMinIntrinsicHeight(width);
    Closure closure = table["getMinIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMaxIntrinsicHeight(double width) {
    super.getMaxIntrinsicHeight(width);
    Closure closure = table["getMaxIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Size getDryLayout(BoxConstraints constraints) {
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
  Size debugAdoptSize(Size value) {
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
  double? getDistanceToBaseline(TextBaseline baseline,
      {bool onlyReal = false}) {
    Closure closure = table["getDistanceToBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? getDistanceToActualBaseline(TextBaseline baseline) {
    super.getDistanceToActualBaseline(baseline);
    Closure closure = table["getDistanceToActualBaseline"];
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
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    Closure closure = table["hitTestChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void applyPaintTransform(RenderObject child, Matrix4 transform) {
    Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset globalToLocal(Offset point, {RenderObject? ancestor}) {
    Closure closure = table["globalToLocal"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Offset localToGlobal(Offset point, {RenderObject? ancestor}) {
    Closure closure = table["localToGlobal"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool debugHandleEvent(PointerEvent event, HitTestEntry entry) {
    Closure closure = table["debugHandleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaint(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintSize(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaintSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintBaselines(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaintBaselines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintPointers(PaintingContext context, Offset offset) {
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
  void set size(Size value) {
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
  void adoptChild(RenderObject child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(RenderObject child) {
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
  void layout(Constraints constraints, {bool parentUsesSize = false}) {
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
  void scheduleInitialPaint(ContainerLayer rootLayer) {
    Closure closure = table["scheduleInitialPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void replaceRootLayer(OffsetLayer rootLayer) {
    Closure closure = table["replaceRootLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Matrix4 getTransformTo(RenderObject? ancestor) {
    Closure closure = table["getTransformTo"];
    return maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeSemanticsClip(RenderObject? child) {
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
  void sendSemanticsEvent(SemanticsEvent semanticsEvent) {
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
  void assembleSemanticsNode(
      SemanticsNode node, SemanticsConfiguration config, Iterable children) {
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
  void showOnScreen(
      {Curve curve = Curves.ease,
      RenderObject? descendant,
      Duration duration = Duration.zero,
      Rect? rect}) {
    Closure closure = table["showOnScreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode describeForError(String name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.shallow}) {
    Closure closure = table["describeForError"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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
  void set layer(ContainerLayer? newLayer) {
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

void loadRenderEditable(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderEditable'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonCaretChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onCaretChanged']
        : null;
    Closure? unpackedonSelectionChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSelectionChanged']
        : null;

    return [
      RTManagedRenderEditable(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundCursorColor: maybeUnBoxAndBuildArgument<Color?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundCursorColor']
                  : null,
              parentState: hydroState),
          clipBehavior: maybeUnBoxEnum(
              values: Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          cursorColor: maybeUnBoxAndBuildArgument<Color?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['cursorColor']
                  : null,
              parentState: hydroState),
          cursorHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cursorHeight']
              : null?.toDouble(),
          cursorOffset: maybeUnBoxAndBuildArgument<Offset?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorOffset'] : null,
              parentState: hydroState),
          cursorRadius: maybeUnBoxAndBuildArgument<Radius?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorRadius'] : null, parentState: hydroState),
          cursorWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorWidth'] : null?.toDouble(),
          devicePixelRatio: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['devicePixelRatio'] : null?.toDouble(),
          enableInteractiveSelection: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableInteractiveSelection'] : null,
          expands: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['expands'] : null,
          floatingCursorAddedMargin: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingCursorAddedMargin'] : null, parentState: hydroState),
          forceLine: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['forceLine'] : null,
          hasFocus: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hasFocus'] : null,
          ignorePointer: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['ignorePointer'] : null,
          locale: maybeUnBoxAndBuildArgument<Locale?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
          maxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLines'] : null,
          minLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLines'] : null,
          obscureText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscureText'] : null,
          obscuringCharacter: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscuringCharacter'] : null,
          onCaretChanged: unpackedonCaretChanged != null
              ? (caretRect) => unpackedonCaretChanged.dispatch(
                    [luaCallerArguments[0], caretRect],
                    parentState: hydroState,
                  )
              : null,
          onSelectionChanged: unpackedonSelectionChanged != null
              ? (selection, renderObject, cause) => unpackedonSelectionChanged.dispatch(
                    [luaCallerArguments[0], selection, renderObject, cause],
                    parentState: hydroState,
                  )
              : null,
          paintCursorAboveText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['paintCursorAboveText'] : null,
          promptRectColor: maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['promptRectColor'] : null, parentState: hydroState),
          promptRectRange: maybeUnBoxAndBuildArgument<TextRange?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['promptRectRange'] : null, parentState: hydroState),
          readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null,
          selection: maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selection'] : null, parentState: hydroState),
          selectionColor: maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionColor'] : null, parentState: hydroState),
          selectionHeightStyle: maybeUnBoxEnum(values: BoxHeightStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionHeightStyle'] : null),
          selectionWidthStyle: maybeUnBoxEnum(values: BoxWidthStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionWidthStyle'] : null),
          showCursor: maybeUnBoxAndBuildArgument<ValueNotifier<bool>?, bool>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showCursor'] : null, parentState: hydroState),
          strutStyle: maybeUnBoxAndBuildArgument<StrutStyle?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['strutStyle'] : null, parentState: hydroState),
          text: maybeUnBoxAndBuildArgument<TextSpan?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['text'] : null, parentState: hydroState),
          textAlign: maybeUnBoxEnum(values: TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textAlign'] : null),
          textHeightBehavior: maybeUnBoxAndBuildArgument<TextHeightBehavior?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textHeightBehavior'] : null, parentState: hydroState),
          textScaleFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textScaleFactor'] : null?.toDouble(),
          textWidthBasis: maybeUnBoxEnum(values: TextWidthBasis.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textWidthBasis'] : null),
          endHandleLayerLink: maybeUnBoxAndBuildArgument<LayerLink, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['endHandleLayerLink'] : null, parentState: hydroState),
          offset: maybeUnBoxAndBuildArgument<ViewportOffset, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['offset'] : null, parentState: hydroState),
          startHandleLayerLink: maybeUnBoxAndBuildArgument<LayerLink, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['startHandleLayerLink'] : null, parentState: hydroState),
          textDirection: maybeUnBoxEnum(values: TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          textSelectionDelegate: maybeUnBoxAndBuildArgument<TextSelectionDelegate, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionDelegate'] : null, parentState: hydroState))
    ];
  });
  table['renderEditableNextCharacter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RenderEditable.nextCharacter(
          luaCallerArguments[1], luaCallerArguments[2], luaCallerArguments[3]),
    ];
  });
  table['renderEditablePreviousCharacter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RenderEditable.previousCharacter(
          luaCallerArguments[1], luaCallerArguments[2], luaCallerArguments[3]),
    ];
  });
  registerBoxer<RenderEditable>(boxer: (
      {required RenderEditable vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderEditable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
