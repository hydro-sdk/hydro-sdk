import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/material/selectable_text.dart' as _ae17;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/painting/text_span.dart' as _1584;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSelectableText extends _36c2.VMManagedBox<_ae17.SelectableText> {
  VMManagedSelectableText(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['data'] = vmObject.data;
    table['textSpan'] = _36c2.maybeBoxObject<_1584.TextSpan?>(
        object: vmObject.textSpan,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject<_b485.FocusNode?>(
        object: vmObject.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['style'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.style,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['strutStyle'] = _36c2.maybeBoxObject<_ced4.StrutStyle?>(
        object: vmObject.strutStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textAlign'] = _a643.TextAlign.values.indexWhere((x) {
      return x == vmObject.textAlign;
    });
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['textScaleFactor'] = vmObject.textScaleFactor;
    table['autofocus'] = vmObject.autofocus;
    table['minLines'] = vmObject.minLines;
    table['maxLines'] = vmObject.maxLines;
    table['showCursor'] = vmObject.showCursor;
    table['cursorWidth'] = vmObject.cursorWidth;
    table['cursorHeight'] = vmObject.cursorHeight;
    table['cursorRadius'] = _36c2.maybeBoxObject<_a643.Radius?>(
        object: vmObject.cursorRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cursorColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.cursorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectionHeightStyle'] = _a643.BoxHeightStyle.values.indexWhere((x) {
      return x == vmObject.selectionHeightStyle;
    });
    table['selectionWidthStyle'] = _a643.BoxWidthStyle.values.indexWhere((x) {
      return x == vmObject.selectionWidthStyle;
    });
    table['enableInteractiveSelection'] = vmObject.enableInteractiveSelection;
    table['selectionControls'] =
        _36c2.maybeBoxObject<_578c.TextSelectionControls?>(
            object: vmObject.selectionControls,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['toolbarOptions'] = _36c2.maybeBoxObject<_d800.ToolbarOptions>(
        object: vmObject.toolbarOptions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollPhysics'] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(
        object: vmObject.scrollPhysics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['semanticsLabel'] = vmObject.semanticsLabel;
    table['textHeightBehavior'] =
        _36c2.maybeBoxObject<_a643.TextHeightBehavior?>(
            object: vmObject.textHeightBehavior,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['textWidthBasis'] = _fe5a.TextWidthBasis.values.indexWhere((x) {
      return x == vmObject.textWidthBasis;
    });
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getSelectionEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectionEnabled,
      ];
    });
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  final _ae17.SelectableText vmObject;
}

class RTManagedSelectableText extends _ae17.SelectableText
    implements _36c2.Box<_ae17.SelectableText> {
  RTManagedSelectableText(_fac9.String data$,
      {required _fac9.bool autofocus,
      _a643.Color? cursorColor,
      _fac9.double? cursorHeight,
      _a643.Radius? cursorRadius,
      required _fac9.double cursorWidth,
      required _02d2.DragStartBehavior dragStartBehavior,
      required _fac9.bool enableInteractiveSelection,
      _b485.FocusNode? focusNode,
      _ab4a.Key? key,
      _fac9.int? maxLines,
      _fac9.int? minLines,
      void Function(_7986.TextSelection selection,
              _8577.SelectionChangedCause? cause)?
          onSelectionChanged,
      void Function()? onTap,
      _dbad.ScrollPhysics? scrollPhysics,
      _578c.TextSelectionControls? selectionControls,
      required _a643.BoxHeightStyle selectionHeightStyle,
      required _a643.BoxWidthStyle selectionWidthStyle,
      _fac9.String? semanticsLabel,
      required _fac9.bool showCursor,
      _ced4.StrutStyle? strutStyle,
      _74d0.TextStyle? style,
      _a643.TextAlign? textAlign,
      _a643.TextDirection? textDirection,
      _a643.TextHeightBehavior? textHeightBehavior,
      _fac9.double? textScaleFactor,
      _fe5a.TextWidthBasis? textWidthBasis,
      _d800.ToolbarOptions? toolbarOptions,
      required this.table,
      required this.hydroState})
      : super(data$,
            autofocus: autofocus,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorWidth: cursorWidth,
            dragStartBehavior: dragStartBehavior,
            enableInteractiveSelection: enableInteractiveSelection,
            focusNode: focusNode,
            key: key,
            maxLines: maxLines,
            minLines: minLines,
            onSelectionChanged: onSelectionChanged,
            onTap: onTap,
            scrollPhysics: scrollPhysics,
            selectionControls: selectionControls,
            selectionHeightStyle: selectionHeightStyle,
            selectionWidthStyle: selectionWidthStyle,
            semanticsLabel: semanticsLabel,
            showCursor: showCursor,
            strutStyle: strutStyle,
            style: style,
            textAlign: textAlign,
            textDirection: textDirection,
            textHeightBehavior: textHeightBehavior,
            textScaleFactor: textScaleFactor,
            textWidthBasis: textWidthBasis,
            toolbarOptions: toolbarOptions) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['data'] = _36c2.maybeBoxObject(
        object: this.data, hydroState: hydroState, table: _36c2.HydroTable());
    table['textSpan'] = _36c2.maybeBoxObject(
        object: textSpan, hydroState: hydroState, table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject(
        object: this.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['style'] = _36c2.maybeBoxObject(
        object: this.style, hydroState: hydroState, table: _36c2.HydroTable());
    table['strutStyle'] = _36c2.maybeBoxObject(
        object: this.strutStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textAlign'] = _a643.TextAlign.values.indexWhere((x) {
      return x == this.textAlign;
    });
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['textScaleFactor'] = _36c2.maybeBoxObject(
        object: this.textScaleFactor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofocus'] = _36c2.maybeBoxObject(
        object: this.autofocus,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minLines'] = _36c2.maybeBoxObject(
        object: this.minLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxLines'] = _36c2.maybeBoxObject(
        object: this.maxLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showCursor'] = _36c2.maybeBoxObject(
        object: this.showCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cursorWidth'] = _36c2.maybeBoxObject(
        object: this.cursorWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cursorHeight'] = _36c2.maybeBoxObject(
        object: this.cursorHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cursorRadius'] = _36c2.maybeBoxObject(
        object: this.cursorRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cursorColor'] = _36c2.maybeBoxObject(
        object: this.cursorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectionHeightStyle'] = _a643.BoxHeightStyle.values.indexWhere((x) {
      return x == this.selectionHeightStyle;
    });
    table['selectionWidthStyle'] = _a643.BoxWidthStyle.values.indexWhere((x) {
      return x == this.selectionWidthStyle;
    });
    table['enableInteractiveSelection'] = _36c2.maybeBoxObject(
        object: this.enableInteractiveSelection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectionControls'] = _36c2.maybeBoxObject(
        object: this.selectionControls,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.dragStartBehavior;
    });
    table['toolbarOptions'] = _36c2.maybeBoxObject(
        object: this.toolbarOptions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollPhysics'] = _36c2.maybeBoxObject(
        object: this.scrollPhysics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['semanticsLabel'] = _36c2.maybeBoxObject(
        object: this.semanticsLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textHeightBehavior'] = _36c2.maybeBoxObject(
        object: this.textHeightBehavior,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textWidthBasis'] = _fe5a.TextWidthBasis.values.indexWhere((x) {
      return x == this.textWidthBasis;
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getSelectionEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectionEnabled];
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  _ae17.SelectableText unwrap() => this;
  _ae17.SelectableText get vmObject => this;
  @_fac9.override
  _fac9.bool get selectionEnabled {
    _36c2.Closure closure = table["getSelectionEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.State<_ae17.SelectableText> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_ae17.SelectableText>,
            _ae17.SelectableText>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadSelectableText(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['selectableText'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonSelectionChanged = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['onSelectionChanged']
        : null;
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['onTap'] : null;

    return [
      RTManagedSelectableText(luaCallerArguments[1],
          table: luaCallerArguments[0],
          hydroState: hydroState,
          autofocus: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['autofocus']
              : null,
          cursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['cursorColor']
                  : null,
              parentState: hydroState),
          cursorHeight: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['cursorHeight']
              : null?.toDouble(),
          cursorRadius:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['cursorRadius'] : null,
                  parentState: hydroState),
          cursorWidth: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['cursorWidth']
              : null?.toDouble(),
          dragStartBehavior: _36c2.maybeUnBoxEnum(
              values: _02d2.DragStartBehavior.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['dragStartBehavior']
                  : null),
          enableInteractiveSelection: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['enableInteractiveSelection'] : null,
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['focusNode'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['key'] : null, parentState: hydroState),
          maxLines: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['maxLines'] : null,
          minLines: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['minLines'] : null,
          onSelectionChanged: unpackedonSelectionChanged != null
              ? (selection, cause) => unpackedonSelectionChanged.dispatch(
                    [luaCallerArguments[0], selection, cause],
                    parentState: hydroState,
                  )
              : null,
          onTap: unpackedonTap != null
              ? () => unpackedonTap.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          scrollPhysics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['scrollPhysics'] : null, parentState: hydroState),
          selectionControls: _36c2.maybeUnBoxAndBuildArgument<_578c.TextSelectionControls?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['selectionControls'] : null, parentState: hydroState),
          selectionHeightStyle: _36c2.maybeUnBoxEnum(values: _a643.BoxHeightStyle.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['selectionHeightStyle'] : null),
          selectionWidthStyle: _36c2.maybeUnBoxEnum(values: _a643.BoxWidthStyle.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['selectionWidthStyle'] : null),
          semanticsLabel: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['semanticsLabel'] : null,
          showCursor: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['showCursor'] : null,
          strutStyle: _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['strutStyle'] : null, parentState: hydroState),
          style: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['style'] : null, parentState: hydroState),
          textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textAlign'] : null),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textDirection'] : null),
          textHeightBehavior: _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textHeightBehavior'] : null, parentState: hydroState),
          textScaleFactor: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textScaleFactor'] : null?.toDouble(),
          textWidthBasis: _36c2.maybeUnBoxEnum(values: _fe5a.TextWidthBasis.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textWidthBasis'] : null),
          toolbarOptions: _36c2.maybeUnBoxAndBuildArgument<_d800.ToolbarOptions?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['toolbarOptions'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_ae17.SelectableText>(boxer: (
      {required _ae17.SelectableText vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSelectableText(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
