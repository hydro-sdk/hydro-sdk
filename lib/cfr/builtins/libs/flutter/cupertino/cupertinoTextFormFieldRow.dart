import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/text_form_field_row.dart' as _135a;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/box_decoration.dart' as _51e4;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/text_formatter.dart' as _86aa;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/form.dart' as _5dd5;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoTextFormFieldRow
    extends _36c2.VMManagedBox<_135a.CupertinoTextFormFieldRow> {
  VMManagedCupertinoTextFormFieldRow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['prefix'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.prefix,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['controller'] = _36c2.maybeBoxObject<_d800.TextEditingController?>(
        object: vmObject.controller,
        hydroState: hydroState,
        table: _36c2.HydroTable());

    table['initialValue'] = vmObject.initialValue;
    table['enabled'] = vmObject.enabled;
    table['autovalidateMode'] = _5dd5.AutovalidateMode.values.indexWhere((x) {
      return x == vmObject.autovalidateMode;
    });
    table['restorationId'] = vmObject.restorationId;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_5dd5.FormFieldState>(
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

  final _135a.CupertinoTextFormFieldRow vmObject;
}

class RTManagedCupertinoTextFormFieldRow extends _135a.CupertinoTextFormFieldRow
    implements _36c2.Box<_135a.CupertinoTextFormFieldRow> {
  RTManagedCupertinoTextFormFieldRow(
      {required _fac9.bool autocorrect,
      _fac9.Iterable<_fac9.String>? autofillHints,
      required _fac9.bool autofocus,
      required _5dd5.AutovalidateMode autovalidateMode,
      _d800.TextEditingController? controller,
      _a643.Color? cursorColor,
      _fac9.double? cursorHeight,
      required _fac9.double cursorWidth,
      _51e4.BoxDecoration? decoration,
      required _fac9.bool enableInteractiveSelection,
      required _fac9.bool enableSuggestions,
      _fac9.bool? enabled,
      required _fac9.bool expands,
      _b485.FocusNode? focusNode,
      _fac9.String? initialValue,
      _fac9.List<_86aa.TextInputFormatter>? inputFormatters,
      _ab4a.Key? key,
      _a643.Brightness? keyboardAppearance,
      _8577.TextInputType? keyboardType,
      _fac9.int? maxLength,
      _fac9.int? maxLines,
      _fac9.int? minLines,
      required _fac9.bool obscureText,
      required _fac9.String obscuringCharacter,
      void Function(_fac9.String value)? onChanged,
      void Function()? onEditingComplete,
      void Function(_fac9.String value)? onFieldSubmitted,
      void Function(_fac9.String? newValue)? onSaved,
      void Function()? onTap,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.String? placeholder,
      _74d0.TextStyle? placeholderStyle,
      _e2dc.Widget? prefix,
      required _fac9.bool readOnly,
      required _96d1.EdgeInsets scrollPadding,
      _dbad.ScrollPhysics? scrollPhysics,
      _578c.TextSelectionControls? selectionControls,
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
      _fac9.String? Function(_fac9.String? value)? validator,
      required this.table,
      required this.hydroState})
      : super(
            autocorrect: autocorrect,
            autofillHints: autofillHints,
            autofocus: autofocus,
            autovalidateMode: autovalidateMode,
            controller: controller,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorWidth: cursorWidth,
            decoration: decoration,
            enableInteractiveSelection: enableInteractiveSelection,
            enableSuggestions: enableSuggestions,
            enabled: enabled,
            expands: expands,
            focusNode: focusNode,
            initialValue: initialValue,
            inputFormatters: inputFormatters,
            key: key,
            keyboardAppearance: keyboardAppearance,
            keyboardType: keyboardType,
            maxLength: maxLength,
            maxLines: maxLines,
            minLines: minLines,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            onTap: onTap,
            padding: padding,
            placeholder: placeholder,
            placeholderStyle: placeholderStyle,
            prefix: prefix,
            readOnly: readOnly,
            scrollPadding: scrollPadding,
            scrollPhysics: scrollPhysics,
            selectionControls: selectionControls,
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
            toolbarOptions: toolbarOptions,
            validator: validator) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['prefix'] = _36c2.maybeBoxObject(
        object: this.prefix, hydroState: hydroState, table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['controller'] = _36c2.maybeBoxObject(
        object: this.controller,
        hydroState: hydroState,
        table: _36c2.HydroTable());

    table['initialValue'] = _36c2.maybeBoxObject(
        object: this.initialValue,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enabled'] = _36c2.maybeBoxObject(
        object: this.enabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autovalidateMode'] = _5dd5.AutovalidateMode.values.indexWhere((x) {
      return x == this.autovalidateMode;
    });
    table['restorationId'] = _36c2.maybeBoxObject(
        object: restorationId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  _135a.CupertinoTextFormFieldRow unwrap() => this;
  _135a.CupertinoTextFormFieldRow get vmObject => this;
  @_fac9.override
  _5dd5.FormFieldState<_fac9.String> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_5dd5.FormFieldState<_fac9.String>,
            _fac9.String>(closure.dispatch([table], parentState: hydroState)[0],
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

void loadCupertinoTextFormFieldRow(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoTextFormFieldRow'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onChanged']
        : null;
    _36c2.Closure? unpackedonEditingComplete = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onEditingComplete']
        : null;
    _36c2.Closure? unpackedonFieldSubmitted = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onFieldSubmitted']
        : null;
    _36c2.Closure? unpackedonSaved = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSaved']
        : null;
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;

    _36c2.Closure? unpackedvalidator = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['validator']
        : null;
    return [
      RTManagedCupertinoTextFormFieldRow(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          autocorrect: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autocorrect']
              : null,
          autofillHints:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.String>?, _fac9.String>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['autofillHints']
                      : null,
                  parentState: hydroState),
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autofocus']
              : null,
          autovalidateMode: _36c2.maybeUnBoxEnum(
              values: _5dd5.AutovalidateMode.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['autovalidateMode']
                  : null),
          controller:
              _36c2.maybeUnBoxAndBuildArgument<_d800.TextEditingController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['controller'] : null,
                  parentState: hydroState),
          cursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorColor'] : null,
              parentState: hydroState),
          cursorHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorHeight'] : null?.toDouble(),
          cursorWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorWidth'] : null?.toDouble(),
          decoration: _36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
          enableInteractiveSelection: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableInteractiveSelection'] : null,
          enableSuggestions: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableSuggestions'] : null,
          enabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabled'] : null,
          expands: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['expands'] : null,
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null, parentState: hydroState),
          initialValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['initialValue'] : null,
          inputFormatters: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_86aa.TextInputFormatter>?, _86aa.TextInputFormatter>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputFormatters'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          keyboardAppearance: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardAppearance'] : null),
          keyboardType: _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputType?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardType'] : null, parentState: hydroState),
          maxLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLength'] : null,
          maxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLines'] : null,
          minLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLines'] : null,
          obscureText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscureText'] : null,
          obscuringCharacter: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscuringCharacter'] : null,
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
          onFieldSubmitted: unpackedonFieldSubmitted != null
              ? (value) => unpackedonFieldSubmitted.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          onSaved: unpackedonSaved != null
              ? (newValue) => unpackedonSaved.dispatch(
                    [luaCallerArguments[0], newValue],
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
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          placeholder: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['placeholder'] : null,
          placeholderStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['placeholderStyle'] : null, parentState: hydroState),
          prefix: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefix'] : null, parentState: hydroState),
          readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null,
          scrollPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPadding'] : null, parentState: hydroState),
          scrollPhysics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPhysics'] : null, parentState: hydroState),
          selectionControls: _36c2.maybeUnBoxAndBuildArgument<_578c.TextSelectionControls?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionControls'] : null, parentState: hydroState),
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
          toolbarOptions: _36c2.maybeUnBoxAndBuildArgument<_d800.ToolbarOptions?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarOptions'] : null, parentState: hydroState),
          validator: unpackedvalidator != null
              ? (value) => ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedvalidator.dispatch(
                      [luaCallerArguments[0], value],
                      parentState: hydroState,
                    ),
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_135a.CupertinoTextFormFieldRow>(boxer: (
      {required _135a.CupertinoTextFormFieldRow vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoTextFormFieldRow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
