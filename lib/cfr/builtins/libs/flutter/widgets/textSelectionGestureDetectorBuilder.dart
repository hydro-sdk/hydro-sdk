import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/gestures/force_press.dart' as _6dde;
import 'package:flutter/src/gestures/long_press.dart' as _0586;
import 'package:flutter/src/gestures/tap.dart' as _1275;
import 'package:flutter/src/rendering/editable.dart' as _7eb4;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionGestureDetectorBuilder
    extends _36c2.VMManagedBox<_578c.TextSelectionGestureDetectorBuilder> {
  VMManagedTextSelectionGestureDetectorBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['delegate'] =
        _36c2.maybeBoxObject<_578c.TextSelectionGestureDetectorBuilderDelegate>(
            object: vmObject.delegate,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['getShouldShowSelectionToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldShowSelectionToolbar,
      ];
    });
    table['buildGestureDetector'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildGestureDetector(
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
                child: _36c2
                    .maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['child']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _578c.TextSelectionGestureDetectorBuilder vmObject;
}

class RTManagedTextSelectionGestureDetectorBuilder
    extends _578c.TextSelectionGestureDetectorBuilder
    implements _36c2.Box<_578c.TextSelectionGestureDetectorBuilder> {
  RTManagedTextSelectionGestureDetectorBuilder(
      {required _578c.TextSelectionGestureDetectorBuilderDelegate delegate,
      required this.table,
      required this.hydroState})
      : super(delegate: delegate) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['delegate'] = _36c2.maybeBoxObject(
        object: this.delegate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getShouldShowSelectionToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.shouldShowSelectionToolbar];
    });
    table['_dart_getEditableText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.editableText];
    });
    table['_dart_getRenderEditable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.renderEditable];
    });
    table['_dart_onTapDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onTapDown(
          _36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_onForcePressStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onForcePressStart(_36c2.maybeUnBoxAndBuildArgument<
          _6dde.ForcePressDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_onForcePressEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onForcePressEnd(_36c2.maybeUnBoxAndBuildArgument<
          _6dde.ForcePressDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_onSingleTapUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSingleTapUp(
          _36c2.maybeUnBoxAndBuildArgument<_1275.TapUpDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_onSingleTapCancel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSingleTapCancel();
      return [];
    });
    table['_dart_onSingleLongTapStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSingleLongTapStart(_36c2.maybeUnBoxAndBuildArgument<
          _0586.LongPressStartDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_onSingleLongTapMoveUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSingleLongTapMoveUpdate(_36c2.maybeUnBoxAndBuildArgument<
          _0586.LongPressMoveUpdateDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_onSingleLongTapEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSingleLongTapEnd(_36c2.maybeUnBoxAndBuildArgument<
          _0586.LongPressEndDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_onSecondaryTap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSecondaryTap();
      return [];
    });
    table['_dart_onSecondaryTapDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onSecondaryTapDown(
          _36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_onDoubleTapDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onDoubleTapDown(
          _36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_onDragSelectionStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onDragSelectionStart(_36c2.maybeUnBoxAndBuildArgument<
          _4bc7.DragStartDetails,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_onDragSelectionUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onDragSelectionUpdate(
          _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragStartDetails,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragUpdateDetails,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_onDragSelectionEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.onDragSelectionEnd(
          _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragEndDetails, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_buildGestureDetector'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildGestureDetector(
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
                child: _36c2
                    .maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['child']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _578c.TextSelectionGestureDetectorBuilder unwrap() => this;
  _578c.TextSelectionGestureDetectorBuilder get vmObject => this;
  @_fac9.override
  _fac9.bool get shouldShowSelectionToolbar {
    _36c2.Closure closure = table["getShouldShowSelectionToolbar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _d800.EditableTextState get editableText {
    _36c2.Closure closure = table["getEditableText"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_d800.EditableTextState, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7eb4.RenderEditable get renderEditable {
    _36c2.Closure closure = table["getRenderEditable"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7eb4.RenderEditable, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void onTapDown(details) {
    _36c2.Closure closure = table["onTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onForcePressStart(details) {
    _36c2.Closure closure = table["onForcePressStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onForcePressEnd(details) {
    _36c2.Closure closure = table["onForcePressEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSingleTapUp(details) {
    _36c2.Closure closure = table["onSingleTapUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSingleTapCancel() {
    _36c2.Closure closure = table["onSingleTapCancel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSingleLongTapStart(details) {
    _36c2.Closure closure = table["onSingleLongTapStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSingleLongTapMoveUpdate(details) {
    _36c2.Closure closure = table["onSingleLongTapMoveUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSingleLongTapEnd(details) {
    _36c2.Closure closure = table["onSingleLongTapEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSecondaryTap() {
    _36c2.Closure closure = table["onSecondaryTap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onSecondaryTapDown(details) {
    _36c2.Closure closure = table["onSecondaryTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onDoubleTapDown(details) {
    _36c2.Closure closure = table["onDoubleTapDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onDragSelectionStart(details) {
    _36c2.Closure closure = table["onDragSelectionStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onDragSelectionUpdate(startDetails, updateDetails) {
    _36c2.Closure closure = table["onDragSelectionUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void onDragSelectionEnd(details) {
    _36c2.Closure closure = table["onDragSelectionEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget buildGestureDetector(
      {_bf98.HitTestBehavior? behavior,
      _ab4a.Key? key,
      required _e2dc.Widget child}) {
    _36c2.Closure closure = table["buildGestureDetector"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadTextSelectionGestureDetectorBuilder(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textSelectionGestureDetectorBuilder'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextSelectionGestureDetectorBuilder(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          delegate: _36c2.maybeUnBoxAndBuildArgument<
                  _578c.TextSelectionGestureDetectorBuilderDelegate,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['delegate']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_578c.TextSelectionGestureDetectorBuilder>(boxer: (
      {required _578c.TextSelectionGestureDetectorBuilder vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextSelectionGestureDetectorBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
