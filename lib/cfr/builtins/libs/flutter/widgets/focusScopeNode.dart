import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/focus_traversal.dart' as _65d3;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFocusScopeNode extends _36c2.VMManagedBox<_b485.FocusScopeNode> {
  VMManagedFocusScopeNode(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getNearestScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_b485.FocusScopeNode>(
            object: vmObject.nearestScope,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIsFirstFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isFirstFocus,
      ];
    });
    table['getFocusedChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.focusedChild;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b485.FocusNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setFirstFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setFirstFocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusScopeNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['autofocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.autofocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['unfocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.unfocus(
          disposition: _36c2.maybeUnBoxEnum(
              values: _b485.UnfocusDisposition.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['disposition']
                  : null));
      return [];
    });
    table['consumeKeyboardToken'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.consumeKeyboardToken(),
      ];
    });
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedonKey = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onKey']
          : null;
      _36c2.Closure? unpackedonKeyEvent = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onKeyEvent']
          : null;
      return [
        _36c2.maybeBoxObject<_b485.FocusAttachment>(
            object: vmObject.attach(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                onKey: unpackedonKey != null
                    ? (node, event) => _36c2.maybeUnBoxEnum(
                        values: _b485.KeyEventResult.values,
                        boxedEnum: unpackedonKey.dispatch(
                          [luaCallerArguments[0], node, event],
                          parentState: hydroState,
                        )[0])
                    : null,
                onKeyEvent: unpackedonKeyEvent != null
                    ? (node, event) => _36c2.maybeUnBoxEnum(
                        values: _b485.KeyEventResult.values,
                        boxedEnum: unpackedonKeyEvent.dispatch(
                          [luaCallerArguments[0], node, event],
                          parentState: hydroState,
                        )[0])
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['requestFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.requestFocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['nextFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.nextFocus(),
      ];
    });
    table['previousFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.previousFocus(),
      ];
    });
    table['focusInDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.focusInDirection(_36c2.maybeUnBoxEnum(
            values: _65d3.TraversalDirection.values,
            boxedEnum: luaCallerArguments[1])),
      ];
    });
    table['debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['getSkipTraversal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.skipTraversal,
      ];
    });
    table['setSkipTraversal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.skipTraversal = (luaCallerArguments[1]);
      return [];
    });
    table['getCanRequestFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.canRequestFocus,
      ];
    });
    table['setCanRequestFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.canRequestFocus = (luaCallerArguments[1]);
      return [];
    });
    table['getDescendantsAreFocusable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.descendantsAreFocusable,
      ];
    });
    table['setDescendantsAreFocusable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.descendantsAreFocusable = (luaCallerArguments[1]);
      return [];
    });
    table['getContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.context;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.BuildContext?>(
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
          _36c2.maybeBoxObject<_b485.FocusNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.children,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTraversalChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.traversalChildren,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDebugLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugLabel;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setDebugLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugLabel = (luaCallerArguments[1]);
      return [];
    });
    table['getDescendants'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.descendants,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTraversalDescendants'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.traversalDescendants,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAncestors'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.ancestors,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHasFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasFocus,
      ];
    });
    table['getHasPrimaryFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasPrimaryFocus,
      ];
    });
    table['getHighlightMode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _b485.FocusHighlightMode.values.indexWhere((x) {
          return x == vmObject.highlightMode;
        }),
      ];
    });
    table['getEnclosingScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.enclosingScope;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b485.FocusScopeNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.size,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.offset,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
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
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
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
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
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

  final _b485.FocusScopeNode vmObject;
}

class RTManagedFocusScopeNode extends _b485.FocusScopeNode
    implements _36c2.Box<_b485.FocusScopeNode> {
  RTManagedFocusScopeNode(
      {required _fac9.bool canRequestFocus,
      _fac9.String? debugLabel,
      _b485.KeyEventResult Function(
              _b485.FocusNode node, _94e8.RawKeyEvent event)?
          onKey,
      _b485.KeyEventResult Function(_b485.FocusNode node, _9e29.KeyEvent event)?
          onKeyEvent,
      required _fac9.bool skipTraversal,
      required this.table,
      required this.hydroState})
      : super(
            canRequestFocus: canRequestFocus,
            debugLabel: debugLabel,
            onKey: onKey,
            onKeyEvent: onKeyEvent,
            skipTraversal: skipTraversal) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });

    table['_dart_getNearestScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.nearestScope];
    });
    table['_dart_getIsFirstFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isFirstFocus];
    });
    table['_dart_getFocusedChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.focusedChild];
    });
    table['_dart_setFirstFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setFirstFocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusScopeNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_autofocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.autofocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_unfocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.unfocus(
          disposition: _36c2.maybeUnBoxEnum(
              values: _b485.UnfocusDisposition.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['disposition']
                  : null));
      return [];
    });
    table['_dart_consumeKeyboardToken'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.consumeKeyboardToken(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedonKey = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onKey']
          : null;
      _36c2.Closure? unpackedonKeyEvent = luaCallerArguments.length >= 3
          ? luaCallerArguments[2]['onKeyEvent']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.attach(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                onKey: unpackedonKey != null
                    ? (node, event) => _36c2.maybeUnBoxEnum(
                        values: _b485.KeyEventResult.values,
                        boxedEnum: unpackedonKey.dispatch(
                          [luaCallerArguments[0], node, event],
                          parentState: hydroState,
                        )[0])
                    : null,
                onKeyEvent: unpackedonKeyEvent != null
                    ? (node, event) => _36c2.maybeUnBoxEnum(
                        values: _b485.KeyEventResult.values,
                        boxedEnum: unpackedonKeyEvent.dispatch(
                          [luaCallerArguments[0], node, event],
                          parentState: hydroState,
                        )[0])
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_requestFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.requestFocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_nextFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.nextFocus(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_previousFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.previousFocus(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_focusInDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.focusInDirection(_36c2.maybeUnBoxEnum(
                values: _65d3.TraversalDirection.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
    table['_dart_getSkipTraversal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.skipTraversal];
    });
    table['_dart_setSkipTraversal'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.skipTraversal =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getCanRequestFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.canRequestFocus];
    });
    table['_dart_setCanRequestFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.canRequestFocus =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDescendantsAreFocusable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.descendantsAreFocusable];
    });
    table['_dart_setDescendantsAreFocusable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.descendantsAreFocusable =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.context];
    });
    table['_dart_getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_getChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.children];
    });
    table['_dart_getTraversalChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.traversalChildren];
    });
    table['_dart_getDebugLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugLabel];
    });
    table['_dart_setDebugLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugLabel =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDescendants'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.descendants];
    });
    table['_dart_getTraversalDescendants'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.traversalDescendants];
    });
    table['_dart_getAncestors'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.ancestors];
    });
    table['_dart_getHasFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasFocus];
    });
    table['_dart_getHasPrimaryFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasPrimaryFocus];
    });
    table['_dart_getHighlightMode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.highlightMode];
    });
    table['_dart_getEnclosingScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.enclosingScope];
    });
    table['_dart_getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_getOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.offset];
    });
    table['_dart_getRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.rect];
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
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
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
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasListeners];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _b485.FocusScopeNode unwrap() => this;
  _b485.FocusScopeNode get vmObject => this;
  @_fac9.override
  _b485.FocusScopeNode get nearestScope {
    _36c2.Closure closure = table["getNearestScope"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_b485.FocusScopeNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isFirstFocus {
    _36c2.Closure closure = table["getIsFirstFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b485.FocusNode? get focusedChild {
    _36c2.Closure closure = table["getFocusedChild"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void setFirstFocus(scope) {
    _36c2.Closure closure = table["setFirstFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void autofocus(node) {
    _36c2.Closure closure = table["autofocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void unfocus(
      {_b485.UnfocusDisposition disposition = _b485.UnfocusDisposition.scope}) {
    _36c2.Closure closure = table["unfocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool consumeKeyboardToken() {
    _36c2.Closure closure = table["consumeKeyboardToken"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b485.FocusAttachment attach(context,
      {_b485.KeyEventResult Function(
              _b485.FocusNode node, _94e8.RawKeyEvent event)?
          onKey,
      _b485.KeyEventResult Function(_b485.FocusNode node, _9e29.KeyEvent event)?
          onKeyEvent}) {
    super.attach(context, onKey: onKey, onKeyEvent: onKeyEvent);
    _36c2.Closure closure = table["attach"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_b485.FocusAttachment, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void requestFocus([_b485.FocusNode? node]) {
    _36c2.Closure closure = table["requestFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool nextFocus() {
    _36c2.Closure closure = table["nextFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool previousFocus() {
    _36c2.Closure closure = table["previousFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool focusInDirection(direction) {
    _36c2.Closure closure = table["focusInDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get skipTraversal {
    _36c2.Closure closure = table["getSkipTraversal"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set skipTraversal(value) {
    _36c2.Closure closure = table["setSkipTraversal"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get canRequestFocus {
    _36c2.Closure closure = table["getCanRequestFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set canRequestFocus(value) {
    super.canRequestFocus = value;
    _36c2.Closure closure = table["setCanRequestFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get descendantsAreFocusable {
    _36c2.Closure closure = table["getDescendantsAreFocusable"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set descendantsAreFocusable(value) {
    super.descendantsAreFocusable = value;
    _36c2.Closure closure = table["setDescendantsAreFocusable"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.BuildContext? get context {
    _36c2.Closure closure = table["getContext"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _b485.FocusNode? get parent {
    _36c2.Closure closure = table["getParent"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_b485.FocusNode> get children {
    _36c2.Closure closure = table["getChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_b485.FocusNode>,
            _b485.FocusNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_b485.FocusNode> get traversalChildren {
    _36c2.Closure closure = table["getTraversalChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_b485.FocusNode>,
            _b485.FocusNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String? get debugLabel {
    _36c2.Closure closure = table["getDebugLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set debugLabel(value) {
    _36c2.Closure closure = table["setDebugLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Iterable<_b485.FocusNode> get descendants {
    _36c2.Closure closure = table["getDescendants"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_b485.FocusNode>,
            _b485.FocusNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_b485.FocusNode> get traversalDescendants {
    _36c2.Closure closure = table["getTraversalDescendants"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_b485.FocusNode>,
            _b485.FocusNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Iterable<_b485.FocusNode> get ancestors {
    _36c2.Closure closure = table["getAncestors"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_b485.FocusNode>,
            _b485.FocusNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get hasFocus {
    _36c2.Closure closure = table["getHasFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasPrimaryFocus {
    _36c2.Closure closure = table["getHasPrimaryFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b485.FocusHighlightMode get highlightMode {
    _36c2.Closure closure = table["getHighlightMode"];
    return _36c2.maybeUnBoxEnum(
        values: _b485.FocusHighlightMode.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _b485.FocusScopeNode? get enclosingScope {
    _36c2.Closure closure = table["getEnclosingScope"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_b485.FocusScopeNode?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.Size get size {
    _36c2.Closure closure = table["getSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Offset get offset {
    _36c2.Closure closure = table["getOffset"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Rect get rect {
    _36c2.Closure closure = table["getRect"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
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
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasListeners {
    _36c2.Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFocusScopeNode(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['focusScopeNode'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonKey =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onKey'] : null;
    _36c2.Closure? unpackedonKeyEvent = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onKeyEvent']
        : null;

    return [
      RTManagedFocusScopeNode(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          canRequestFocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['canRequestFocus']
              : null,
          debugLabel: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['debugLabel']
              : null,
          onKey: unpackedonKey != null
              ? (node, event) => _36c2.maybeUnBoxEnum(
                  values: _b485.KeyEventResult.values,
                  boxedEnum: unpackedonKey.dispatch(
                    [luaCallerArguments[0], node, event],
                    parentState: hydroState,
                  )[0])
              : null,
          onKeyEvent: unpackedonKeyEvent != null
              ? (node, event) => _36c2.maybeUnBoxEnum(
                  values: _b485.KeyEventResult.values,
                  boxedEnum: unpackedonKeyEvent.dispatch(
                    [luaCallerArguments[0], node, event],
                    parentState: hydroState,
                  )[0])
              : null,
          skipTraversal: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['skipTraversal']
              : null)
    ];
  });
  _36c2.registerBoxer<_b485.FocusScopeNode>(boxer: (
      {required _b485.FocusScopeNode vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFocusScopeNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
