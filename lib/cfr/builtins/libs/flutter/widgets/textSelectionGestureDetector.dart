import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/gestures/force_press.dart' as _6dde;
import 'package:flutter/src/gestures/long_press.dart' as _0586;
import 'package:flutter/src/gestures/tap.dart' as _1275;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionGestureDetector
    extends _36c2.VMManagedBox<_578c.TextSelectionGestureDetector> {
  VMManagedTextSelectionGestureDetector(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['behavior'] = _bf98.HitTestBehavior.values.indexWhere((x) {
      return x == vmObject.behavior;
    });
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _578c.TextSelectionGestureDetector vmObject;
}

class RTManagedTextSelectionGestureDetector
    extends _578c.TextSelectionGestureDetector
    implements _36c2.Box<_578c.TextSelectionGestureDetector> {
  RTManagedTextSelectionGestureDetector(
      {_bf98.HitTestBehavior? behavior,
      _ab4a.Key? key,
      void Function(_1275.TapDownDetails details)? onDoubleTapDown,
      void Function(_4bc7.DragEndDetails details)? onDragSelectionEnd,
      void Function(_4bc7.DragStartDetails details)? onDragSelectionStart,
      void Function(_4bc7.DragStartDetails startDetails,
              _4bc7.DragUpdateDetails updateDetails)?
          onDragSelectionUpdate,
      void Function(_6dde.ForcePressDetails details)? onForcePressEnd,
      void Function(_6dde.ForcePressDetails details)? onForcePressStart,
      void Function()? onSecondaryTap,
      void Function(_1275.TapDownDetails details)? onSecondaryTapDown,
      void Function(_0586.LongPressEndDetails details)? onSingleLongTapEnd,
      void Function(_0586.LongPressMoveUpdateDetails details)?
          onSingleLongTapMoveUpdate,
      void Function(_0586.LongPressStartDetails details)? onSingleLongTapStart,
      void Function()? onSingleTapCancel,
      void Function(_1275.TapUpDetails details)? onSingleTapUp,
      void Function(_1275.TapDownDetails details)? onTapDown,
      required _e2dc.Widget child,
      required this.table,
      required this.hydroState})
      : super(
            behavior: behavior,
            key: key,
            onDoubleTapDown: onDoubleTapDown,
            onDragSelectionEnd: onDragSelectionEnd,
            onDragSelectionStart: onDragSelectionStart,
            onDragSelectionUpdate: onDragSelectionUpdate,
            onForcePressEnd: onForcePressEnd,
            onForcePressStart: onForcePressStart,
            onSecondaryTap: onSecondaryTap,
            onSecondaryTapDown: onSecondaryTapDown,
            onSingleLongTapEnd: onSingleLongTapEnd,
            onSingleLongTapMoveUpdate: onSingleLongTapMoveUpdate,
            onSingleLongTapStart: onSingleLongTapStart,
            onSingleTapCancel: onSingleTapCancel,
            onSingleTapUp: onSingleTapUp,
            onTapDown: onTapDown,
            child: child) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['behavior'] = _bf98.HitTestBehavior.values.indexWhere((x) {
      return x == this.behavior;
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _578c.TextSelectionGestureDetector unwrap() => this;
  _578c.TextSelectionGestureDetector get vmObject => this;
  @_fac9.override
  _e2dc.State<_e2dc.StatefulWidget> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_e2dc.StatefulWidget>,
            _e2dc.StatefulWidget>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
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
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextSelectionGestureDetector(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textSelectionGestureDetector'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonDoubleTapDown = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDoubleTapDown']
        : null;
    _36c2.Closure? unpackedonDragSelectionEnd = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDragSelectionEnd']
        : null;
    _36c2.Closure? unpackedonDragSelectionStart = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDragSelectionStart']
        : null;
    _36c2.Closure? unpackedonDragSelectionUpdate =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onDragSelectionUpdate']
            : null;
    _36c2.Closure? unpackedonForcePressEnd = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onForcePressEnd']
        : null;
    _36c2.Closure? unpackedonForcePressStart = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onForcePressStart']
        : null;
    _36c2.Closure? unpackedonSecondaryTap = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSecondaryTap']
        : null;
    _36c2.Closure? unpackedonSecondaryTapDown = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSecondaryTapDown']
        : null;
    _36c2.Closure? unpackedonSingleLongTapEnd = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSingleLongTapEnd']
        : null;
    _36c2.Closure? unpackedonSingleLongTapMoveUpdate =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onSingleLongTapMoveUpdate']
            : null;
    _36c2.Closure? unpackedonSingleLongTapStart = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSingleLongTapStart']
        : null;
    _36c2.Closure? unpackedonSingleTapCancel = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSingleTapCancel']
        : null;
    _36c2.Closure? unpackedonSingleTapUp = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSingleTapUp']
        : null;
    _36c2.Closure? unpackedonTapDown = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onTapDown']
        : null;

    return [
      RTManagedTextSelectionGestureDetector(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          behavior: _36c2.maybeUnBoxEnum(
              values: _bf98.HitTestBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['behavior']
                  : null),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          onDoubleTapDown: unpackedonDoubleTapDown != null
              ? (details) => unpackedonDoubleTapDown.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onDragSelectionEnd: unpackedonDragSelectionEnd != null
              ? (details) => unpackedonDragSelectionEnd.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onDragSelectionStart: unpackedonDragSelectionStart != null
              ? (details) => unpackedonDragSelectionStart.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onDragSelectionUpdate: unpackedonDragSelectionUpdate != null
              ? (startDetails, updateDetails) =>
                  unpackedonDragSelectionUpdate.dispatch(
                    [luaCallerArguments[0], startDetails, updateDetails],
                    parentState: hydroState,
                  )
              : null,
          onForcePressEnd: unpackedonForcePressEnd != null
              ? (details) => unpackedonForcePressEnd.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onForcePressStart: unpackedonForcePressStart != null
              ? (details) => unpackedonForcePressStart.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onSecondaryTap: unpackedonSecondaryTap != null
              ? () => unpackedonSecondaryTap.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null,
          onSecondaryTapDown: unpackedonSecondaryTapDown != null
              ? (details) => unpackedonSecondaryTapDown.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onSingleLongTapEnd: unpackedonSingleLongTapEnd != null
              ? (details) => unpackedonSingleLongTapEnd.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onSingleLongTapMoveUpdate: unpackedonSingleLongTapMoveUpdate != null
              ? (details) => unpackedonSingleLongTapMoveUpdate.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onSingleLongTapStart: unpackedonSingleLongTapStart != null
              ? (details) => unpackedonSingleLongTapStart.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onSingleTapCancel: unpackedonSingleTapCancel != null
              ? () => unpackedonSingleTapCancel.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null,
          onSingleTapUp: unpackedonSingleTapUp != null
              ? (details) => unpackedonSingleTapUp.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onTapDown: unpackedonTapDown != null
              ? (details) => unpackedonTapDown.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['child']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_578c.TextSelectionGestureDetector>(boxer: (
      {required _578c.TextSelectionGestureDetector vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextSelectionGestureDetector(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
