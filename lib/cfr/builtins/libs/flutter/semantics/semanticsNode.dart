import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:flutter/src/services/text_editing.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsNode extends VMManagedBox<SemanticsNode> {
  VMManagedSemanticsNode(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = maybeBoxObject<Key?>(
        object: vmObject.key, hydroState: hydroState, table: HydroTable());
    table['id'] = vmObject.id;
    table['parentSemanticsClipRect'] = maybeBoxObject<Rect?>(
        object: vmObject.parentSemanticsClipRect,
        hydroState: hydroState,
        table: HydroTable());
    table['parentPaintClipRect'] = maybeBoxObject<Rect?>(
        object: vmObject.parentPaintClipRect,
        hydroState: hydroState,
        table: HydroTable());
    table['elevationAdjustment'] = vmObject.elevationAdjustment;
    table['indexInParent'] = vmObject.indexInParent;
    table['tags'] = maybeBoxObject<Set?>(
        object: vmObject.tags, hydroState: hydroState, table: HydroTable());
    table['getTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.transform;
      if (returnValue != null) {
        return [
          maybeBoxObject<Matrix4?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.transform = (maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.rect, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['setRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rect = (maybeUnBoxAndBuildArgument<Rect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getIsInvisible'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isInvisible,
      ];
    });
    table['getIsMergedIntoParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isMergedIntoParent,
      ];
    });
    table['setIsMergedIntoParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isMergedIntoParent = (luaCallerArguments[1]);
      return [];
    });
    table['getIsPartOfNodeMerging'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isPartOfNodeMerging,
      ];
    });
    table['getMergeAllDescendantsIntoThisNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.mergeAllDescendantsIntoThisNode,
      ];
    });
    table['getHasChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasChildren,
      ];
    });
    table['getChildrenCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.childrenCount,
      ];
    });
    table['visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((node) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], node],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsOwner?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['attach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attach(maybeUnBoxAndBuildArgument<SemanticsOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['isTagged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isTagged(maybeUnBoxAndBuildArgument<SemanticsTag, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['hasFlag'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasFlag(maybeUnBoxAndBuildArgument<SemanticsFlag, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['getLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.label,
      ];
    });
    table['getValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.value,
      ];
    });
    table['getDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.decreasedValue,
      ];
    });
    table['getIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.increasedValue,
      ];
    });
    table['getHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hint,
      ];
    });
    table['getElevation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.elevation,
      ];
    });
    table['getThickness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.thickness,
      ];
    });
    table['getHintOverrides'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.hintOverrides;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsHintOverrides?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
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
    table['getSortKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.sortKey;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsSortKey?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getTextSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.textSelection;
      if (returnValue != null) {
        return [
          maybeBoxObject<TextSelection?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getIsMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.isMultiline;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollChildCount;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollIndex;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollPosition;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollExtentMax'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollExtentMax;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollExtentMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollExtentMin;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getPlatformViewId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.platformViewId;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getMaxValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.maxValueLength;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getCurrentValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentValueLength;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['updateWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.updateWith(
          childrenInInversePaintOrder:
              maybeUnBoxAndBuildArgument<List<SemanticsNode>?, SemanticsNode>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['childrenInInversePaintOrder']
                      : null,
                  parentState: hydroState),
          config: maybeUnBoxAndBuildArgument<SemanticsConfiguration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['config']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['getSemanticsData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsData>(
            object: vmObject.getSemanticsData(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['sendEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sendEvent(maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            childOrder: maybeUnBoxEnum(
                values: DebugSemanticsDumpOrder.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['childOrder']
                    : null),
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
                childOrder: maybeUnBoxEnum(
                    values: DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['childOrder']
                        : null),
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
    table['debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugDescribeChildren(
                    childOrder: maybeUnBoxEnum(
                        values: DebugSemanticsDumpOrder.values,
                        boxedEnum: luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['childOrder']
                            : null))
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugListChildrenInOrder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugListChildrenInOrder(maybeUnBoxEnum(
                    values: DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments[1]))
                .map((x) => maybeBoxObject<SemanticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsNode vmObject;
}

class RTManagedSemanticsNode extends SemanticsNode
    implements Box<SemanticsNode> {
  RTManagedSemanticsNode(
      {Key? key, showOnScreen, required this.table, required this.hydroState})
      : super(key: key, showOnScreen: showOnScreen) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = maybeBoxObject<Key?>(
        object: this.key, hydroState: hydroState, table: HydroTable());
    table['id'] = id;
    table['parentSemanticsClipRect'] = maybeBoxObject<Rect?>(
        object: parentSemanticsClipRect,
        hydroState: hydroState,
        table: HydroTable());
    table['parentPaintClipRect'] = maybeBoxObject<Rect?>(
        object: parentPaintClipRect,
        hydroState: hydroState,
        table: HydroTable());
    table['elevationAdjustment'] = elevationAdjustment;
    table['indexInParent'] = indexInParent;
    table['tags'] = maybeBoxObject<Set?>(
        object: tags, hydroState: hydroState, table: HydroTable());
    table['_dart_getTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.transform];
    });
    table['_dart_setTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.transform = (maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.rect];
    });
    table['_dart_setRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rect = (maybeUnBoxAndBuildArgument<Rect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getIsInvisible'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isInvisible];
    });
    table['_dart_getIsMergedIntoParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isMergedIntoParent];
    });
    table['_dart_setIsMergedIntoParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isMergedIntoParent = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsPartOfNodeMerging'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isPartOfNodeMerging];
    });
    table['_dart_getMergeAllDescendantsIntoThisNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.mergeAllDescendantsIntoThisNode];
    });
    table['_dart_getHasChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasChildren];
    });
    table['_dart_getChildrenCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.childrenCount];
    });
    table['_dart_visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((node) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], node],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_attach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attach(maybeUnBoxAndBuildArgument<SemanticsOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_isTagged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.isTagged(maybeUnBoxAndBuildArgument<SemanticsTag, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_hasFlag'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hasFlag(maybeUnBoxAndBuildArgument<SemanticsFlag, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_getLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.label];
    });
    table['_dart_getValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_getDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.decreasedValue];
    });
    table['_dart_getIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.increasedValue];
    });
    table['_dart_getHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hint];
    });
    table['_dart_getElevation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.elevation];
    });
    table['_dart_getThickness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.thickness];
    });
    table['_dart_getHintOverrides'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hintOverrides];
    });
    table['_dart_getTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textDirection];
    });
    table['_dart_getSortKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.sortKey];
    });
    table['_dart_getTextSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textSelection];
    });
    table['_dart_getIsMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isMultiline];
    });
    table['_dart_getScrollChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollChildCount];
    });
    table['_dart_getScrollIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollIndex];
    });
    table['_dart_getScrollPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollPosition];
    });
    table['_dart_getScrollExtentMax'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollExtentMax];
    });
    table['_dart_getScrollExtentMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollExtentMin];
    });
    table['_dart_getPlatformViewId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.platformViewId];
    });
    table['_dart_getMaxValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.maxValueLength];
    });
    table['_dart_getCurrentValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentValueLength];
    });
    table['_dart_updateWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.updateWith(
          childrenInInversePaintOrder:
              maybeUnBoxAndBuildArgument<List<SemanticsNode>?, SemanticsNode>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['childrenInInversePaintOrder']
                      : null,
                  parentState: hydroState),
          config: maybeUnBoxAndBuildArgument<SemanticsConfiguration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['config']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_getSemanticsData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsData>(
            object: super.getSemanticsData(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_sendEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sendEvent(maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            childOrder: maybeUnBoxEnum(
                values: DebugSemanticsDumpOrder.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['childOrder']
                    : null),
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
                childOrder: maybeUnBoxEnum(
                    values: DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['childOrder']
                        : null),
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
    table['_dart_debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugDescribeChildren(
                    childOrder: maybeUnBoxEnum(
                        values: DebugSemanticsDumpOrder.values,
                        boxedEnum: luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['childOrder']
                            : null))
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugListChildrenInOrder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugListChildrenInOrder(maybeUnBoxEnum(
                    values: DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments[1]))
                .map((x) => maybeBoxObject<SemanticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
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
    table['_dart_redepthChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
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
    table['_dart_dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dropChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
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
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsNode unwrap() => this;
  SemanticsNode get vmObject => this;
  @override
  Matrix4? get transform {
    Closure closure = table["getTransform"];
    return maybeUnBoxAndBuildArgument<Matrix4?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set transform(Matrix4? value) {
    Closure closure = table["setTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect get rect {
    Closure closure = table["getRect"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set rect(Rect value) {
    Closure closure = table["setRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isInvisible {
    Closure closure = table["getIsInvisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isMergedIntoParent {
    Closure closure = table["getIsMergedIntoParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isMergedIntoParent(bool value) {
    Closure closure = table["setIsMergedIntoParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isPartOfNodeMerging {
    Closure closure = table["getIsPartOfNodeMerging"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get mergeAllDescendantsIntoThisNode {
    Closure closure = table["getMergeAllDescendantsIntoThisNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasChildren {
    Closure closure = table["getHasChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get childrenCount {
    Closure closure = table["getChildrenCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildren(visitor) {
    Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsOwner? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<SemanticsOwner?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  SemanticsNode? get parent {
    Closure closure = table["getParent"];
    return maybeUnBoxAndBuildArgument<SemanticsNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void redepthChildren() {
    Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(SemanticsOwner owner) {
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
  bool isTagged(SemanticsTag tag) {
    Closure closure = table["isTagged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hasFlag(SemanticsFlag flag) {
    Closure closure = table["hasFlag"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get label {
    Closure closure = table["getLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get value {
    Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get decreasedValue {
    Closure closure = table["getDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get increasedValue {
    Closure closure = table["getIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get hint {
    Closure closure = table["getHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get elevation {
    Closure closure = table["getElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get thickness {
    Closure closure = table["getThickness"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  SemanticsHintOverrides? get hintOverrides {
    Closure closure = table["getHintOverrides"];
    return maybeUnBoxAndBuildArgument<SemanticsHintOverrides?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  TextDirection? get textDirection {
    Closure closure = table["getTextDirection"];
    return maybeUnBoxEnum(
        values: TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  SemanticsSortKey? get sortKey {
    Closure closure = table["getSortKey"];
    return maybeUnBoxAndBuildArgument<SemanticsSortKey?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  TextSelection? get textSelection {
    Closure closure = table["getTextSelection"];
    return maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool? get isMultiline {
    Closure closure = table["getIsMultiline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get scrollChildCount {
    Closure closure = table["getScrollChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get scrollIndex {
    Closure closure = table["getScrollIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? get scrollPosition {
    Closure closure = table["getScrollPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? get scrollExtentMax {
    Closure closure = table["getScrollExtentMax"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? get scrollExtentMin {
    Closure closure = table["getScrollExtentMin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  int? get platformViewId {
    Closure closure = table["getPlatformViewId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get maxValueLength {
    Closure closure = table["getMaxValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get currentValueLength {
    Closure closure = table["getCurrentValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void updateWith(
      {List? childrenInInversePaintOrder, SemanticsConfiguration? config}) {
    Closure closure = table["updateWith"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsData getSemanticsData() {
    Closure closure = table["getSemanticsData"];
    return maybeUnBoxAndBuildArgument<SemanticsData, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void sendEvent(SemanticsEvent event) {
    Closure closure = table["sendEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DebugSemanticsDumpOrder childOrder =
          DebugSemanticsDumpOrder.traversalOrder,
      DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {DebugSemanticsDumpOrder childOrder =
          DebugSemanticsDumpOrder.traversalOrder,
      String? name,
      DiagnosticsTreeStyle? style = DiagnosticsTreeStyle.sparse}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren(
      {DebugSemanticsDumpOrder childOrder =
          DebugSemanticsDumpOrder.inverseHitTest}) {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<SemanticsNode> debugListChildrenInOrder(
      DebugSemanticsDumpOrder childOrder) {
    Closure closure = table["debugListChildrenInOrder"];
    return maybeUnBoxAndBuildArgument<List<SemanticsNode>, SemanticsNode>(
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
  void redepthChild(AbstractNode child) {
    Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void adoptChild(AbstractNode child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(AbstractNode child) {
    super.dropChild(child);
    Closure closure = table["dropChild"];
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
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsNode(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsNode'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedshowOnScreen = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['showOnScreen']
        : null;
    return [
      RTManagedSemanticsNode(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          key: maybeUnBoxAndBuildArgument<Key?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          showOnScreen: unpackedshowOnScreen != null
              ? () => unpackedshowOnScreen.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  registerBoxer<SemanticsNode>(boxer: (
      {required SemanticsNode vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
