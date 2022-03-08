import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/material/input_decorator.dart' as _ea86;
import 'package:flutter/src/material/text_field.dart' as _6de5;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/services/text_formatter.dart' as _86aa;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextField extends _36c2.VMManagedBox<_6de5.TextField> {
  VMManagedTextField(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['controller'] = _36c2.maybeBoxObject<_d800.TextEditingController?>(
        object: vmObject.controller,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject<_b485.FocusNode?>(
        object: vmObject.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject<_ea86.InputDecoration?>(
        object: vmObject.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['keyboardType'] = _36c2.maybeBoxObject<_8577.TextInputType>(
        object: vmObject.keyboardType,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textInputAction'] = _8577.TextInputAction.values.indexWhere((x) {
      return x == vmObject.textInputAction;
    });
    table['textCapitalization'] =
        _8577.TextCapitalization.values.indexWhere((x) {
      return x == vmObject.textCapitalization;
    });
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
    table['textAlignVertical'] = _36c2.maybeBoxObject<_ca85.TextAlignVertical?>(
        object: vmObject.textAlignVertical,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['autofocus'] = vmObject.autofocus;
    table['obscuringCharacter'] = vmObject.obscuringCharacter;
    table['obscureText'] = vmObject.obscureText;
    table['autocorrect'] = vmObject.autocorrect;
    table['smartDashesType'] = _8577.SmartDashesType.values.indexWhere((x) {
      return x == vmObject.smartDashesType;
    });
    table['smartQuotesType'] = _8577.SmartQuotesType.values.indexWhere((x) {
      return x == vmObject.smartQuotesType;
    });
    table['enableSuggestions'] = vmObject.enableSuggestions;
    table['maxLines'] = vmObject.maxLines;
    table['minLines'] = vmObject.minLines;
    table['expands'] = vmObject.expands;
    table['readOnly'] = vmObject.readOnly;
    table['toolbarOptions'] = _36c2.maybeBoxObject<_d800.ToolbarOptions>(
        object: vmObject.toolbarOptions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showCursor'] = vmObject.showCursor;
    table['maxLength'] = vmObject.maxLength;
    table['maxLengthEnforced'] = vmObject.maxLengthEnforced;
    table['maxLengthEnforcement'] =
        _86aa.MaxLengthEnforcement.values.indexWhere((x) {
      return x == vmObject.maxLengthEnforcement;
    });
    table['inputFormatters'] =
        _36c2.maybeBoxObject<_fac9.List<_86aa.TextInputFormatter>?>(
            object: vmObject.inputFormatters,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['enabled'] = vmObject.enabled;
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
    table['keyboardAppearance'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.keyboardAppearance;
    });
    table['scrollPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(
        object: vmObject.scrollPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableInteractiveSelection'] = vmObject.enableInteractiveSelection;
    table['selectionControls'] =
        _36c2.maybeBoxObject<_578c.TextSelectionControls?>(
            object: vmObject.selectionControls,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['mouseCursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollPhysics'] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(
        object: vmObject.scrollPhysics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollController'] = _36c2.maybeBoxObject<_9585.ScrollController?>(
        object: vmObject.scrollController,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofillHints'] = _36c2.maybeBoxObject<_fac9.Iterable?>(
        object: vmObject.autofillHints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['restorationId'] = vmObject.restorationId;
    table['enableIMEPersonalizedLearning'] =
        vmObject.enableIMEPersonalizedLearning;
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

  final _6de5.TextField vmObject;
}

class RTManagedTextField extends _6de5.TextField
    implements _36c2.Box<_6de5.TextField> {
  RTManagedTextField(
      {required _fac9.bool autocorrect,
      _fac9.Iterable<_fac9.String>? autofillHints,
      required _fac9.bool autofocus,
      _e2dc.Widget? Function(_e2dc.BuildContext context,
              {required _fac9.int currentLength,
              required _fac9.bool isFocused,
              _fac9.int? maxLength})?
          buildCounter,
      required _a643.Clip clipBehavior,
      _d800.TextEditingController? controller,
      _a643.Color? cursorColor,
      _fac9.double? cursorHeight,
      _a643.Radius? cursorRadius,
      required _fac9.double cursorWidth,
      _ea86.InputDecoration? decoration,
      required _02d2.DragStartBehavior dragStartBehavior,
      required _fac9.bool enableIMEPersonalizedLearning,
      required _fac9.bool enableInteractiveSelection,
      required _fac9.bool enableSuggestions,
      _fac9.bool? enabled,
      required _fac9.bool expands,
      _b485.FocusNode? focusNode,
      _fac9.List<_86aa.TextInputFormatter>? inputFormatters,
      _ab4a.Key? key,
      _a643.Brightness? keyboardAppearance,
      _8577.TextInputType? keyboardType,
      _fac9.int? maxLength,
      required _fac9.bool maxLengthEnforced,
      _86aa.MaxLengthEnforcement? maxLengthEnforcement,
      _fac9.int? maxLines,
      _fac9.int? minLines,
      _fd33.MouseCursor? mouseCursor,
      required _fac9.bool obscureText,
      required _fac9.String obscuringCharacter,
      void Function(_fac9.String, _fac9.Map<_fac9.String, _fac9.dynamic>)?
          onAppPrivateCommand,
      void Function(_fac9.String value)? onChanged,
      void Function()? onEditingComplete,
      void Function(_fac9.String value)? onSubmitted,
      void Function()? onTap,
      required _fac9.bool readOnly,
      _fac9.String? restorationId,
      _9585.ScrollController? scrollController,
      required _96d1.EdgeInsets scrollPadding,
      _dbad.ScrollPhysics? scrollPhysics,
      _578c.TextSelectionControls? selectionControls,
      required _a643.BoxHeightStyle selectionHeightStyle,
      required _a643.BoxWidthStyle selectionWidthStyle,
      _fac9.bool? showCursor,
      _8577.SmartDashesType? smartDashesType,
      _8577.SmartQuotesType? smartQuotesType,
      _ced4.StrutStyle? strutStyle,
      _74d0.TextStyle? style,
      required _a643.TextAlign textAlign,
      _ca85.TextAlignVertical? textAlignVertical,
      required _8577.TextCapitalization textCapitalization,
      _a643.TextDirection? textDirection,
      _8577.TextInputAction? textInputAction,
      _d800.ToolbarOptions? toolbarOptions,
      required this.table,
      required this.hydroState})
      : super(
            autocorrect: autocorrect,
            autofillHints: autofillHints,
            autofocus: autofocus,
            buildCounter: buildCounter,
            clipBehavior: clipBehavior,
            controller: controller,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorWidth: cursorWidth,
            decoration: decoration,
            dragStartBehavior: dragStartBehavior,
            enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
            enableInteractiveSelection: enableInteractiveSelection,
            enableSuggestions: enableSuggestions,
            enabled: enabled,
            expands: expands,
            focusNode: focusNode,
            inputFormatters: inputFormatters,
            key: key,
            keyboardAppearance: keyboardAppearance,
            keyboardType: keyboardType,
            maxLength: maxLength,
            maxLengthEnforced: maxLengthEnforced,
            maxLengthEnforcement: maxLengthEnforcement,
            maxLines: maxLines,
            minLines: minLines,
            mouseCursor: mouseCursor,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            onAppPrivateCommand: onAppPrivateCommand,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onSubmitted: onSubmitted,
            onTap: onTap,
            readOnly: readOnly,
            restorationId: restorationId,
            scrollController: scrollController,
            scrollPadding: scrollPadding,
            scrollPhysics: scrollPhysics,
            selectionControls: selectionControls,
            selectionHeightStyle: selectionHeightStyle,
            selectionWidthStyle: selectionWidthStyle,
            showCursor: showCursor,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            strutStyle: strutStyle,
            style: style,
            textAlign: textAlign,
            textAlignVertical: textAlignVertical,
            textCapitalization: textCapitalization,
            textDirection: textDirection,
            textInputAction: textInputAction,
            toolbarOptions: toolbarOptions) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['controller'] = _36c2.maybeBoxObject(
        object: this.controller,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject(
        object: this.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject(
        object: this.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['keyboardType'] = _36c2.maybeBoxObject(
        object: this.keyboardType,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textInputAction'] = _8577.TextInputAction.values.indexWhere((x) {
      return x == this.textInputAction;
    });
    table['textCapitalization'] =
        _8577.TextCapitalization.values.indexWhere((x) {
      return x == this.textCapitalization;
    });
    table['style'] = _36c2.maybeBoxObject(
        object: this.style, hydroState: hydroState, table: _36c2.HydroTable());
    table['strutStyle'] = _36c2.maybeBoxObject(
        object: this.strutStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textAlign'] = _a643.TextAlign.values.indexWhere((x) {
      return x == this.textAlign;
    });
    table['textAlignVertical'] = _36c2.maybeBoxObject(
        object: this.textAlignVertical,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['autofocus'] = _36c2.maybeBoxObject(
        object: this.autofocus,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['obscuringCharacter'] = _36c2.maybeBoxObject(
        object: this.obscuringCharacter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['obscureText'] = _36c2.maybeBoxObject(
        object: this.obscureText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autocorrect'] = _36c2.maybeBoxObject(
        object: this.autocorrect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['smartDashesType'] = _8577.SmartDashesType.values.indexWhere((x) {
      return x == this.smartDashesType;
    });
    table['smartQuotesType'] = _8577.SmartQuotesType.values.indexWhere((x) {
      return x == this.smartQuotesType;
    });
    table['enableSuggestions'] = _36c2.maybeBoxObject(
        object: this.enableSuggestions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxLines'] = _36c2.maybeBoxObject(
        object: this.maxLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minLines'] = _36c2.maybeBoxObject(
        object: this.minLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['expands'] = _36c2.maybeBoxObject(
        object: this.expands,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['readOnly'] = _36c2.maybeBoxObject(
        object: this.readOnly,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarOptions'] = _36c2.maybeBoxObject(
        object: this.toolbarOptions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showCursor'] = _36c2.maybeBoxObject(
        object: this.showCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxLength'] = _36c2.maybeBoxObject(
        object: this.maxLength,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxLengthEnforced'] = _36c2.maybeBoxObject(
        object: this.maxLengthEnforced,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxLengthEnforcement'] =
        _86aa.MaxLengthEnforcement.values.indexWhere((x) {
      return x == this.maxLengthEnforcement;
    });
    table['inputFormatters'] = _36c2.maybeBoxObject(
        object: this.inputFormatters,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enabled'] = _36c2.maybeBoxObject(
        object: this.enabled,
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
    table['keyboardAppearance'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.keyboardAppearance;
    });
    table['scrollPadding'] = _36c2.maybeBoxObject(
        object: this.scrollPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollPhysics'] = _36c2.maybeBoxObject(
        object: this.scrollPhysics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollController'] = _36c2.maybeBoxObject(
        object: this.scrollController,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofillHints'] = _36c2.maybeBoxObject(
        object: this.autofillHints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['restorationId'] = _36c2.maybeBoxObject(
        object: this.restorationId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableIMEPersonalizedLearning'] = _36c2.maybeBoxObject(
        object: this.enableIMEPersonalizedLearning,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  _6de5.TextField unwrap() => this;
  _6de5.TextField get vmObject => this;
  @_fac9.override
  _fac9.bool get selectionEnabled {
    _36c2.Closure closure = table["getSelectionEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.State<_6de5.TextField> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_6de5.TextField>,
            _6de5.TextField>(
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

void loadTextField(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textField'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedbuildCounter = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['buildCounter']
        : null;

    _36c2.Closure? unpackedonAppPrivateCommand = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onAppPrivateCommand']
        : null;
    _36c2.Closure? unpackedonChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onChanged']
        : null;
    _36c2.Closure? unpackedonEditingComplete = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onEditingComplete']
        : null;
    _36c2.Closure? unpackedonSubmitted = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSubmitted']
        : null;
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;

    return [
      RTManagedTextField(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          autocorrect: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autocorrect']
              : null,
          autofillHints:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['autofillHints'] : null,
                  parentState: hydroState),
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autofocus']
              : null,
          buildCounter: unpackedbuildCounter != null
              ? (context, {required currentLength, required isFocused, maxLength}) => _36c2
                  .maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
                      ((
                        final _fac9.List<_fac9.dynamic>? val,
                      ) =>
                          val != null && val.length >= 1 ? val[0] : null)(
                        unpackedbuildCounter.dispatch(
                          [
                            luaCallerArguments[0],
                            context,
                            _36c2.HydroTable.fromMap({
                              "currentLength": currentLength,
                              "isFocused": isFocused,
                              "maxLength": maxLength
                            }),
                          ],
                          parentState: hydroState,
                        ),
                      ),
                      parentState: hydroState)
              : null,
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          controller: _36c2.maybeUnBoxAndBuildArgument<_d800.TextEditingController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['controller'] : null,
              parentState: hydroState),
          cursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorColor'] : null,
              parentState: hydroState),
          cursorHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorHeight'] : null?.toDouble(),
          cursorRadius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorRadius'] : null, parentState: hydroState),
          cursorWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorWidth'] : null?.toDouble(),
          decoration: _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
          dragStartBehavior: _36c2.maybeUnBoxEnum(values: _02d2.DragStartBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dragStartBehavior'] : null),
          enableIMEPersonalizedLearning: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableIMEPersonalizedLearning'] : null,
          enableInteractiveSelection: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableInteractiveSelection'] : null,
          enableSuggestions: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableSuggestions'] : null,
          enabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabled'] : null,
          expands: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['expands'] : null,
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null, parentState: hydroState),
          inputFormatters: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_86aa.TextInputFormatter>?, _86aa.TextInputFormatter>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputFormatters'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          keyboardAppearance: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardAppearance'] : null),
          keyboardType: _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputType?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardType'] : null, parentState: hydroState),
          maxLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLength'] : null,
          maxLengthEnforced: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLengthEnforced'] : null,
          maxLengthEnforcement: _36c2.maybeUnBoxEnum(values: _86aa.MaxLengthEnforcement.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLengthEnforcement'] : null),
          maxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLines'] : null,
          minLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLines'] : null,
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
          obscureText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscureText'] : null,
          obscuringCharacter: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscuringCharacter'] : null,
          onAppPrivateCommand: unpackedonAppPrivateCommand != null
              ? (_, __) => unpackedonAppPrivateCommand.dispatch(
                    [luaCallerArguments[0], _, __],
                    parentState: hydroState,
                  )
              : null,
          onChanged: unpackedonChanged != null
              ? (value) => unpackedonChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          onEditingComplete: unpackedonEditingComplete != null
              ? () => unpackedonEditingComplete.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSubmitted: unpackedonSubmitted != null
              ? (value) => unpackedonSubmitted.dispatch(
                    [luaCallerArguments[0], value],
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
          readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null,
          restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['restorationId'] : null,
          scrollController: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollController'] : null, parentState: hydroState),
          scrollPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPadding'] : null, parentState: hydroState),
          scrollPhysics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPhysics'] : null, parentState: hydroState),
          selectionControls: _36c2.maybeUnBoxAndBuildArgument<_578c.TextSelectionControls?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionControls'] : null, parentState: hydroState),
          selectionHeightStyle: _36c2.maybeUnBoxEnum(values: _a643.BoxHeightStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionHeightStyle'] : null),
          selectionWidthStyle: _36c2.maybeUnBoxEnum(values: _a643.BoxWidthStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionWidthStyle'] : null),
          showCursor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showCursor'] : null,
          smartDashesType: _36c2.maybeUnBoxEnum(values: _8577.SmartDashesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartDashesType'] : null),
          smartQuotesType: _36c2.maybeUnBoxEnum(values: _8577.SmartQuotesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartQuotesType'] : null),
          strutStyle: _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['strutStyle'] : null, parentState: hydroState),
          style: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null, parentState: hydroState),
          textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textAlign'] : null),
          textAlignVertical: _36c2.maybeUnBoxAndBuildArgument<_ca85.TextAlignVertical?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textAlignVertical'] : null, parentState: hydroState),
          textCapitalization: _36c2.maybeUnBoxEnum(values: _8577.TextCapitalization.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textCapitalization'] : null),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          textInputAction: _36c2.maybeUnBoxEnum(values: _8577.TextInputAction.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textInputAction'] : null),
          toolbarOptions: _36c2.maybeUnBoxAndBuildArgument<_d800.ToolbarOptions?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarOptions'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_6de5.TextField>(boxer: (
      {required _6de5.TextField vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextField(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
