import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/drag.dart' as _d9fd;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/gestures/multidrag.dart' as _d5f6;
import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/widgets/drag_target.dart' as _0705;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDraggable
    extends _36c2.VMManagedBox<_0705.Draggable<_fac9.Object>> {
  VMManagedDraggable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['axis'] = _487f.Axis.values.indexWhere((x) {
      return x == vmObject.axis;
    });
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['childWhenDragging'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.childWhenDragging,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['feedback'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.feedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['feedbackOffset'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.feedbackOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragAnchor'] = _0705.DragAnchor.values.indexWhere((x) {
      return x == vmObject.dragAnchor;
    });
    table['ignoringFeedbackSemantics'] = vmObject.ignoringFeedbackSemantics;
    table['affinity'] = _487f.Axis.values.indexWhere((x) {
      return x == vmObject.affinity;
    });
    table['maxSimultaneousDrags'] = vmObject.maxSimultaneousDrags;
    table['rootOverlay'] = vmObject.rootOverlay;
    table['hitTestBehavior'] = _bf98.HitTestBehavior.values.indexWhere((x) {
      return x == vmObject.hitTestBehavior;
    });
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

  final _0705.Draggable<_fac9.Object> vmObject;
}

class RTManagedDraggable extends _0705.Draggable
    implements _36c2.Box<_0705.Draggable> {
  RTManagedDraggable(
      {_487f.Axis? affinity,
      _487f.Axis? axis,
      _e2dc.Widget? childWhenDragging,
      _fac9.Object? data,
      required _0705.DragAnchor dragAnchor,
      _a643.Offset Function(_0705.Draggable<_fac9.Object> draggable,
              _e2dc.BuildContext context, _a643.Offset position)?
          dragAnchorStrategy,
      required _a643.Offset feedbackOffset,
      required _bf98.HitTestBehavior hitTestBehavior,
      required _fac9.bool ignoringFeedbackSemantics,
      _ab4a.Key? key,
      _fac9.int? maxSimultaneousDrags,
      void Function()? onDragCompleted,
      void Function(_0705.DraggableDetails details)? onDragEnd,
      void Function()? onDragStarted,
      void Function(_4bc7.DragUpdateDetails details)? onDragUpdate,
      void Function(_10cb.Velocity velocity, _a643.Offset offset)?
          onDraggableCanceled,
      required _fac9.bool rootOverlay,
      required _e2dc.Widget child,
      required _e2dc.Widget feedback,
      required this.table,
      required this.hydroState})
      : super(
            affinity: affinity,
            axis: axis,
            childWhenDragging: childWhenDragging,
            data: data,
            dragAnchor: dragAnchor,
            dragAnchorStrategy: dragAnchorStrategy,
            feedbackOffset: feedbackOffset,
            hitTestBehavior: hitTestBehavior,
            ignoringFeedbackSemantics: ignoringFeedbackSemantics,
            key: key,
            maxSimultaneousDrags: maxSimultaneousDrags,
            onDragCompleted: onDragCompleted,
            onDragEnd: onDragEnd,
            onDragStarted: onDragStarted,
            onDragUpdate: onDragUpdate,
            onDraggableCanceled: onDraggableCanceled,
            rootOverlay: rootOverlay,
            child: child,
            feedback: feedback) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['axis'] = _487f.Axis.values.indexWhere((x) {
      return x == this.axis;
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['childWhenDragging'] = _36c2.maybeBoxObject(
        object: this.childWhenDragging,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['feedback'] = _36c2.maybeBoxObject(
        object: this.feedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['feedbackOffset'] = _36c2.maybeBoxObject(
        object: this.feedbackOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragAnchor'] = _0705.DragAnchor.values.indexWhere((x) {
      return x == this.dragAnchor;
    });
    table['ignoringFeedbackSemantics'] = _36c2.maybeBoxObject(
        object: this.ignoringFeedbackSemantics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['affinity'] = _487f.Axis.values.indexWhere((x) {
      return x == this.affinity;
    });
    table['maxSimultaneousDrags'] = _36c2.maybeBoxObject(
        object: this.maxSimultaneousDrags,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rootOverlay'] = _36c2.maybeBoxObject(
        object: this.rootOverlay,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hitTestBehavior'] = _bf98.HitTestBehavior.values.indexWhere((x) {
      return x == this.hitTestBehavior;
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createRecognizer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonStart = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.createRecognizer((position) =>
                _36c2.maybeUnBoxAndBuildArgument<_d9fd.Drag?, _fac9.dynamic>(
                    ((
                      final _fac9.List<_fac9.dynamic>? val,
                    ) =>
                        val != null && val.length >= 1 ? val[0] : null)(
                      unpackedonStart.dispatch(
                        [luaCallerArguments[0], position],
                        parentState: hydroState,
                      ),
                    ),
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
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

  _0705.Draggable unwrap() => this;
  _0705.Draggable get vmObject => this;
  @_fac9.override
  _d5f6.MultiDragGestureRecognizer createRecognizer(onStart) {
    _36c2.Closure closure = table["createRecognizer"];
    return _36c2.maybeUnBoxAndBuildArgument<_d5f6.MultiDragGestureRecognizer,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.State<_0705.Draggable<_fac9.Object>> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_0705.Draggable<_fac9.Object>>,
            _0705.Draggable<_fac9.Object>>(
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

void loadDraggable(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['draggable'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackeddragAnchorStrategy = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['dragAnchorStrategy']
        : null;

    _36c2.Closure? unpackedonDragCompleted = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDragCompleted']
        : null;
    _36c2.Closure? unpackedonDragEnd = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDragEnd']
        : null;
    _36c2.Closure? unpackedonDragStarted = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDragStarted']
        : null;
    _36c2.Closure? unpackedonDragUpdate = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDragUpdate']
        : null;
    _36c2.Closure? unpackedonDraggableCanceled = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDraggableCanceled']
        : null;

    return [
      RTManagedDraggable(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          affinity: _36c2.maybeUnBoxEnum(
              values: _487f.Axis.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['affinity']
                  : null),
          axis: _36c2.maybeUnBoxEnum(
              values: _487f.Axis.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['axis']
                  : null),
          childWhenDragging: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['childWhenDragging']
                  : null,
              parentState: hydroState),
          data: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['data']
              : null,
          dragAnchor: _36c2.maybeUnBoxEnum(
              values: _0705.DragAnchor.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dragAnchor']
                  : null),
          dragAnchorStrategy: unpackeddragAnchorStrategy != null
              ? (draggable, context, position) =>
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                      unpackeddragAnchorStrategy.dispatch(
                        [luaCallerArguments[0], draggable, context, position],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)
              : null,
          feedbackOffset:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['feedbackOffset'] : null,
                  parentState: hydroState),
          hitTestBehavior: _36c2.maybeUnBoxEnum(
              values: _bf98.HitTestBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hitTestBehavior'] : null),
          ignoringFeedbackSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['ignoringFeedbackSemantics'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          maxSimultaneousDrags: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxSimultaneousDrags'] : null,
          onDragCompleted: unpackedonDragCompleted != null
              ? () => unpackedonDragCompleted.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onDragEnd: unpackedonDragEnd != null
              ? (details) => unpackedonDragEnd.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onDragStarted: unpackedonDragStarted != null
              ? () => unpackedonDragStarted.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onDragUpdate: unpackedonDragUpdate != null
              ? (details) => unpackedonDragUpdate.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onDraggableCanceled: unpackedonDraggableCanceled != null
              ? (velocity, offset) => unpackedonDraggableCanceled.dispatch(
                    [luaCallerArguments[0], velocity, offset],
                    parentState: hydroState,
                  )
              : null,
          rootOverlay: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rootOverlay'] : null,
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState),
          feedback: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['feedback'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0705.Draggable>(boxer: (
      {required _0705.Draggable vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDraggable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
