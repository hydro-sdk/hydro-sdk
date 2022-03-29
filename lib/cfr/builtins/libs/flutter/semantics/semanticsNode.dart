import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;
import 'package:flutter/src/services/text_editing.dart' as _7986;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsNode extends _36c2.VMManagedBox<_4c98.SemanticsNode> {
  VMManagedSemanticsNode(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['parentSemanticsClipRect'] = _36c2.maybeBoxObject<_a643.Rect?>(
        object: vmObject.parentSemanticsClipRect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['parentPaintClipRect'] = _36c2.maybeBoxObject<_a643.Rect?>(
        object: vmObject.parentPaintClipRect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevationAdjustment'] = vmObject.elevationAdjustment;
    table['indexInParent'] = vmObject.indexInParent;
    table['tags'] = _36c2.maybeBoxObject<_fac9.Set?>(
        object: vmObject.tags,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.id,
      ];
    });
    table['getTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.transform;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_db98.Matrix4?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.transform =
          (_36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Rect>(
            object: vmObject.rect,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rect =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getIsInvisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isInvisible,
      ];
    });
    table['getIsMergedIntoParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isMergedIntoParent,
      ];
    });
    table['setIsMergedIntoParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.isMergedIntoParent = (luaCallerArguments[1]);
      return [];
    });
    table['getIsPartOfNodeMerging'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isPartOfNodeMerging,
      ];
    });
    table['getMergeAllDescendantsIntoThisNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.mergeAllDescendantsIntoThisNode,
      ];
    });
    table['getHasChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasChildren,
      ];
    });
    table['getChildrenCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childrenCount,
      ];
    });
    table['visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((node) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], node],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_4c98.SemanticsOwner?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_4c98.SemanticsNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attach(
          _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsOwner, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['isTagged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isTagged(
            _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['hasFlag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasFlag(_36c2.maybeUnBoxAndBuildArgument<_a643.SemanticsFlag,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.label,
      ];
    });
    table['getAttributedLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedLabel,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.value,
      ];
    });
    table['getAttributedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIncreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.increasedValue,
      ];
    });
    table['getAttributedIncreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedIncreasedValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDecreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.decreasedValue,
      ];
    });
    table['getAttributedDecreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedDecreasedValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hint,
      ];
    });
    table['getAttributedHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedHint,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.elevation,
      ];
    });
    table['getThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.thickness,
      ];
    });
    table['getHintOverrides'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.hintOverrides;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_4c98.SemanticsHintOverrides?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.textDirection;
      if (returnValue != null) {
        return [
          _a643.TextDirection.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['getSortKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.sortKey;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_4c98.SemanticsSortKey?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getTextSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.textSelection;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7986.TextSelection?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getIsMultiline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.isMultiline;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollChildCount;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollIndex;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollPosition;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollExtentMax'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollExtentMax;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getScrollExtentMin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollExtentMin;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getPlatformViewId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.platformViewId;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getMaxValueLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.maxValueLength;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getCurrentValueLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentValueLength;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['updateWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateWith(
          childrenInInversePaintOrder: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_4c98.SemanticsNode>?, _4c98.SemanticsNode>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['childrenInInversePaintOrder']
                  : null,
              parentState: hydroState),
          config: _36c2.maybeUnBoxAndBuildArgument<
                  _4c98.SemanticsConfiguration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['config']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['getSemanticsData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4c98.SemanticsData>(
            object: vmObject.getSemanticsData(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['sendEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.sendEvent(
          _36c2.maybeUnBoxAndBuildArgument<_7afa.SemanticsEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            childOrder: _36c2.maybeUnBoxEnum(
                values: _4c98.DebugSemanticsDumpOrder.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['childOrder']
                    : null),
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
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
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                childOrder: _36c2.maybeUnBoxEnum(
                    values: _4c98.DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['childOrder']
                        : null),
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugDescribeChildren(
                    childOrder: _36c2.maybeUnBoxEnum(
                        values: _4c98.DebugSemanticsDumpOrder.values,
                        boxedEnum: luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['childOrder']
                            : null))
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugListChildrenInOrder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugListChildrenInOrder(_36c2.maybeUnBoxEnum(
                    values: _4c98.DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments[1]))
                .map((x) => _36c2.maybeBoxObject<_4c98.SemanticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
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

  final _4c98.SemanticsNode vmObject;
}

class RTManagedSemanticsNode extends _4c98.SemanticsNode
    implements _36c2.Box<_4c98.SemanticsNode> {
  RTManagedSemanticsNode(
      {_ab4a.Key? key,
      void Function()? showOnScreen,
      required this.table,
      required this.hydroState})
      : super(key: key, showOnScreen: showOnScreen) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['parentSemanticsClipRect'] = _36c2.maybeBoxObject(
        object: parentSemanticsClipRect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['parentPaintClipRect'] = _36c2.maybeBoxObject(
        object: parentPaintClipRect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevationAdjustment'] = _36c2.maybeBoxObject(
        object: elevationAdjustment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indexInParent'] = _36c2.maybeBoxObject(
        object: indexInParent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tags'] = _36c2.maybeBoxObject(
        object: tags, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.id];
    });
    table['_dart_getTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.transform];
    });
    table['_dart_setTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.transform =
          (_36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.rect];
    });
    table['_dart_setRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.rect = (_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getIsInvisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isInvisible];
    });
    table['_dart_getIsMergedIntoParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isMergedIntoParent];
    });
    table['_dart_setIsMergedIntoParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.isMergedIntoParent =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getIsPartOfNodeMerging'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isPartOfNodeMerging];
    });
    table['_dart_getMergeAllDescendantsIntoThisNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mergeAllDescendantsIntoThisNode];
    });
    table['_dart_getHasChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasChildren];
    });
    table['_dart_getChildrenCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.childrenCount];
    });
    table['_dart_visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren(
          (node) => _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              unpackedvisitor.dispatch(
                [luaCallerArguments[0], node],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.attach(
          _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsOwner, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_isTagged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isTagged(_36c2.maybeUnBoxAndBuildArgument<
                _4c98.SemanticsTag,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hasFlag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hasFlag(_36c2.maybeUnBoxAndBuildArgument<
                _a643.SemanticsFlag,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.label];
    });
    table['_dart_getAttributedLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attributedLabel];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_getAttributedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attributedValue];
    });
    table['_dart_getIncreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.increasedValue];
    });
    table['_dart_getAttributedIncreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attributedIncreasedValue];
    });
    table['_dart_getDecreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.decreasedValue];
    });
    table['_dart_getAttributedDecreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attributedDecreasedValue];
    });
    table['_dart_getHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hint];
    });
    table['_dart_getAttributedHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attributedHint];
    });
    table['_dart_getElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.elevation];
    });
    table['_dart_getThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.thickness];
    });
    table['_dart_getHintOverrides'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hintOverrides];
    });
    table['_dart_getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textDirection];
    });
    table['_dart_getSortKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.sortKey];
    });
    table['_dart_getTextSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textSelection];
    });
    table['_dart_getIsMultiline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isMultiline];
    });
    table['_dart_getScrollChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scrollChildCount];
    });
    table['_dart_getScrollIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scrollIndex];
    });
    table['_dart_getScrollPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scrollPosition];
    });
    table['_dart_getScrollExtentMax'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scrollExtentMax];
    });
    table['_dart_getScrollExtentMin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scrollExtentMin];
    });
    table['_dart_getPlatformViewId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.platformViewId];
    });
    table['_dart_getMaxValueLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maxValueLength];
    });
    table['_dart_getCurrentValueLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentValueLength];
    });
    table['_dart_updateWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateWith(
          childrenInInversePaintOrder: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_4c98.SemanticsNode>?, _4c98.SemanticsNode>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['childrenInInversePaintOrder']
                  : null,
              parentState: hydroState),
          config: _36c2.maybeUnBoxAndBuildArgument<
                  _4c98.SemanticsConfiguration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['config']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_getSemanticsData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getSemanticsData(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_sendEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.sendEvent(
          _36c2.maybeUnBoxAndBuildArgument<_7afa.SemanticsEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                childOrder: _36c2.maybeUnBoxEnum(
                    values: _4c98.DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['childOrder']
                        : null),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixOtherLines'] : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                childOrder: _36c2.maybeUnBoxEnum(
                    values: _4c98.DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['childOrder']
                        : null),
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(
                childOrder: _36c2.maybeUnBoxEnum(
                    values: _4c98.DebugSemanticsDumpOrder.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['childOrder']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugListChildrenInOrder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugListChildrenInOrder(_36c2.maybeUnBoxEnum(
                values: _4c98.DebugSemanticsDumpOrder.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_redepthChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.redepthChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_adoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.adoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dropChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dropChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _4c98.SemanticsNode unwrap() => this;
  _4c98.SemanticsNode get vmObject => this;
  @_fac9.override
  _fac9.int get id {
    _36c2.Closure closure = table["getId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _db98.Matrix4? get transform {
    _36c2.Closure closure = table["getTransform"];
    return _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set transform(value) {
    _36c2.Closure closure = table["setTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Rect get rect {
    _36c2.Closure closure = table["getRect"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set rect(value) {
    _36c2.Closure closure = table["setRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isInvisible {
    _36c2.Closure closure = table["getIsInvisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isMergedIntoParent {
    _36c2.Closure closure = table["getIsMergedIntoParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set isMergedIntoParent(value) {
    _36c2.Closure closure = table["setIsMergedIntoParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isPartOfNodeMerging {
    _36c2.Closure closure = table["getIsPartOfNodeMerging"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get mergeAllDescendantsIntoThisNode {
    _36c2.Closure closure = table["getMergeAllDescendantsIntoThisNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasChildren {
    _36c2.Closure closure = table["getHasChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get childrenCount {
    _36c2.Closure closure = table["getChildrenCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void visitChildren(visitor) {
    _36c2.Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.SemanticsOwner? get owner {
    _36c2.Closure closure = table["getOwner"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.SemanticsOwner?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _4c98.SemanticsNode? get parent {
    _36c2.Closure closure = table["getParent"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.SemanticsNode?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void redepthChildren() {
    _36c2.Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void attach(owner) {
    super.attach(owner);
    _36c2.Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void detach() {
    super.detach();
    _36c2.Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool isTagged(tag) {
    _36c2.Closure closure = table["isTagged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hasFlag(flag) {
    _36c2.Closure closure = table["hasFlag"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get label {
    _36c2.Closure closure = table["getLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.AttributedString get attributedLabel {
    _36c2.Closure closure = table["getAttributedLabel"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get value {
    _36c2.Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.AttributedString get attributedValue {
    _36c2.Closure closure = table["getAttributedValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get increasedValue {
    _36c2.Closure closure = table["getIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.AttributedString get attributedIncreasedValue {
    _36c2.Closure closure = table["getAttributedIncreasedValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get decreasedValue {
    _36c2.Closure closure = table["getDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.AttributedString get attributedDecreasedValue {
    _36c2.Closure closure = table["getAttributedDecreasedValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get hint {
    _36c2.Closure closure = table["getHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.AttributedString get attributedHint {
    _36c2.Closure closure = table["getAttributedHint"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.double get elevation {
    _36c2.Closure closure = table["getElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get thickness {
    _36c2.Closure closure = table["getThickness"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _4c98.SemanticsHintOverrides? get hintOverrides {
    _36c2.Closure closure = table["getHintOverrides"];
    return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsHintOverrides?,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextDirection? get textDirection {
    _36c2.Closure closure = table["getTextDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _4c98.SemanticsSortKey? get sortKey {
    _36c2.Closure closure = table["getSortKey"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7986.TextSelection? get textSelection {
    _36c2.Closure closure = table["getTextSelection"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool? get isMultiline {
    _36c2.Closure closure = table["getIsMultiline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? get scrollChildCount {
    _36c2.Closure closure = table["getScrollChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? get scrollIndex {
    _36c2.Closure closure = table["getScrollIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double? get scrollPosition {
    _36c2.Closure closure = table["getScrollPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get scrollExtentMax {
    _36c2.Closure closure = table["getScrollExtentMax"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get scrollExtentMin {
    _36c2.Closure closure = table["getScrollExtentMin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.int? get platformViewId {
    _36c2.Closure closure = table["getPlatformViewId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? get maxValueLength {
    _36c2.Closure closure = table["getMaxValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? get currentValueLength {
    _36c2.Closure closure = table["getCurrentValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateWith(
      {_fac9.List? childrenInInversePaintOrder,
      required _4c98.SemanticsConfiguration? config}) {
    _36c2.Closure closure = table["updateWith"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _4c98.SemanticsData getSemanticsData() {
    _36c2.Closure closure = table["getSemanticsData"];
    return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void sendEvent(event) {
    _36c2.Closure closure = table["sendEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_4c98.DebugSemanticsDumpOrder childOrder =
          _4c98.DebugSemanticsDumpOrder.traversalOrder,
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_4c98.DebugSemanticsDumpOrder childOrder =
          _4c98.DebugSemanticsDumpOrder.traversalOrder,
      _fac9.String? name,
      _eaf3.DiagnosticsTreeStyle? style = _eaf3.DiagnosticsTreeStyle.sparse}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren(
      {_4c98.DebugSemanticsDumpOrder childOrder =
          _4c98.DebugSemanticsDumpOrder.inverseHitTest}) {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_4c98.SemanticsNode> debugListChildrenInOrder(childOrder) {
    _36c2.Closure closure = table["debugListChildrenInOrder"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_4c98.SemanticsNode>,
            _4c98.SemanticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void redepthChild(child) {
    _36c2.Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void adoptChild(child) {
    super.adoptChild(child);
    _36c2.Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dropChild(child) {
    super.dropChild(child);
    _36c2.Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get depth {
    _36c2.Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get attached {
    _36c2.Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSemanticsNode(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['semanticsNode'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedshowOnScreen = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['showOnScreen']
        : null;
    return [
      RTManagedSemanticsNode(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          showOnScreen: unpackedshowOnScreen != null
              ? () => unpackedshowOnScreen.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_4c98.SemanticsNode>(boxer: (
      {required _4c98.SemanticsNode vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
