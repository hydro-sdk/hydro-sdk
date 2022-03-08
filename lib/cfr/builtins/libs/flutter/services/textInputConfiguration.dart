import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/autofill.dart' as _7283;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextInputConfiguration
    extends _36c2.VMManagedBox<_8577.TextInputConfiguration> {
  VMManagedTextInputConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['inputType'] = _36c2.maybeBoxObject<_8577.TextInputType>(
        object: vmObject.inputType,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['readOnly'] = vmObject.readOnly;
    table['obscureText'] = vmObject.obscureText;
    table['autocorrect'] = vmObject.autocorrect;
    table['autofillConfiguration'] =
        _36c2.maybeBoxObject<_7283.AutofillConfiguration>(
            object: vmObject.autofillConfiguration,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['smartDashesType'] = _8577.SmartDashesType.values.indexWhere((x) {
      return x == vmObject.smartDashesType;
    });
    table['smartQuotesType'] = _8577.SmartQuotesType.values.indexWhere((x) {
      return x == vmObject.smartQuotesType;
    });
    table['enableSuggestions'] = vmObject.enableSuggestions;
    table['actionLabel'] = vmObject.actionLabel;
    table['inputAction'] = _8577.TextInputAction.values.indexWhere((x) {
      return x == vmObject.inputAction;
    });
    table['textCapitalization'] =
        _8577.TextCapitalization.values.indexWhere((x) {
      return x == vmObject.textCapitalization;
    });
    table['keyboardAppearance'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.keyboardAppearance;
    });
    table['enableIMEPersonalizedLearning'] =
        vmObject.enableIMEPersonalizedLearning;
    table['enableDeltaModel'] = vmObject.enableDeltaModel;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextInputConfiguration>(
            object: vmObject.copyWith(
                actionLabel: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['actionLabel']
                    : null,
                autocorrect: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['autocorrect']
                    : null,
                autofillConfiguration: _36c2.maybeUnBoxAndBuildArgument<_7283.AutofillConfiguration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['autofillConfiguration']
                        : null,
                    parentState: hydroState),
                enableDeltaModel: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableDeltaModel']
                    : null,
                enableIMEPersonalizedLearning: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableIMEPersonalizedLearning']
                    : null,
                enableSuggestions: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableSuggestions']
                    : null,
                inputAction: _36c2.maybeUnBoxEnum(
                    values: _8577.TextInputAction.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputAction'] : null),
                inputType: _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputType?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputType'] : null, parentState: hydroState),
                keyboardAppearance: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardAppearance'] : null),
                obscureText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscureText'] : null,
                readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null,
                smartDashesType: _36c2.maybeUnBoxEnum(values: _8577.SmartDashesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartDashesType'] : null),
                smartQuotesType: _36c2.maybeUnBoxEnum(values: _8577.SmartQuotesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartQuotesType'] : null),
                textCapitalization: _36c2.maybeUnBoxEnum(values: _8577.TextCapitalization.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textCapitalization'] : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toJson'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Map>(
            object: vmObject.toJson(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8577.TextInputConfiguration vmObject;
}

class RTManagedTextInputConfiguration extends _8577.TextInputConfiguration
    implements _36c2.Box<_8577.TextInputConfiguration> {
  RTManagedTextInputConfiguration(
      {_fac9.String? actionLabel,
      required _fac9.bool autocorrect,
      required _7283.AutofillConfiguration autofillConfiguration,
      required _fac9.bool enableDeltaModel,
      required _fac9.bool enableIMEPersonalizedLearning,
      required _fac9.bool enableSuggestions,
      required _8577.TextInputAction inputAction,
      required _8577.TextInputType inputType,
      required _a643.Brightness keyboardAppearance,
      required _fac9.bool obscureText,
      required _fac9.bool readOnly,
      _8577.SmartDashesType? smartDashesType,
      _8577.SmartQuotesType? smartQuotesType,
      required _8577.TextCapitalization textCapitalization,
      required this.table,
      required this.hydroState})
      : super(
            actionLabel: actionLabel,
            autocorrect: autocorrect,
            autofillConfiguration: autofillConfiguration,
            enableDeltaModel: enableDeltaModel,
            enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
            enableSuggestions: enableSuggestions,
            inputAction: inputAction,
            inputType: inputType,
            keyboardAppearance: keyboardAppearance,
            obscureText: obscureText,
            readOnly: readOnly,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            textCapitalization: textCapitalization) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['inputType'] = _36c2.maybeBoxObject(
        object: this.inputType,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['readOnly'] = _36c2.maybeBoxObject(
        object: this.readOnly,
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
    table['autofillConfiguration'] = _36c2.maybeBoxObject(
        object: this.autofillConfiguration,
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
    table['actionLabel'] = _36c2.maybeBoxObject(
        object: this.actionLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inputAction'] = _8577.TextInputAction.values.indexWhere((x) {
      return x == this.inputAction;
    });
    table['textCapitalization'] =
        _8577.TextCapitalization.values.indexWhere((x) {
      return x == this.textCapitalization;
    });
    table['keyboardAppearance'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.keyboardAppearance;
    });
    table['enableIMEPersonalizedLearning'] = _36c2.maybeBoxObject(
        object: this.enableIMEPersonalizedLearning,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableDeltaModel'] = _36c2.maybeBoxObject(
        object: this.enableDeltaModel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                actionLabel: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actionLabel'] : null,
                    parentState: hydroState),
                autocorrect: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['autocorrect'] : null,
                    parentState: hydroState),
                autofillConfiguration: _36c2.maybeUnBoxAndBuildArgument<_7283.AutofillConfiguration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['autofillConfiguration']
                        : null,
                    parentState: hydroState),
                enableDeltaModel: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableDeltaModel'] : null,
                    parentState: hydroState),
                enableIMEPersonalizedLearning: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableIMEPersonalizedLearning'] : null, parentState: hydroState),
                enableSuggestions: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableSuggestions'] : null, parentState: hydroState),
                inputAction: _36c2.maybeUnBoxEnum(values: _8577.TextInputAction.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputAction'] : null),
                inputType: _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputType?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputType'] : null, parentState: hydroState),
                keyboardAppearance: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardAppearance'] : null),
                obscureText: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscureText'] : null, parentState: hydroState),
                readOnly: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null, parentState: hydroState),
                smartDashesType: _36c2.maybeUnBoxEnum(values: _8577.SmartDashesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartDashesType'] : null),
                smartQuotesType: _36c2.maybeUnBoxEnum(values: _8577.SmartQuotesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartQuotesType'] : null),
                textCapitalization: _36c2.maybeUnBoxEnum(values: _8577.TextCapitalization.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textCapitalization'] : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toJson'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toJson(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8577.TextInputConfiguration unwrap() => this;
  _8577.TextInputConfiguration get vmObject => this;
  @_fac9.override
  _8577.TextInputConfiguration copyWith(
      {_fac9.String? actionLabel,
      _fac9.bool? autocorrect,
      _7283.AutofillConfiguration? autofillConfiguration,
      _fac9.bool? enableDeltaModel,
      _fac9.bool? enableIMEPersonalizedLearning,
      _fac9.bool? enableSuggestions,
      _8577.TextInputAction? inputAction,
      _8577.TextInputType? inputType,
      _a643.Brightness? keyboardAppearance,
      _fac9.bool? obscureText,
      _fac9.bool? readOnly,
      _8577.SmartDashesType? smartDashesType,
      _8577.SmartQuotesType? smartQuotesType,
      _8577.TextCapitalization? textCapitalization}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputConfiguration,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Map<_fac9.String, _fac9.dynamic> toJson() {
    _36c2.Closure closure = table["toJson"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Map<_fac9.String, _fac9.dynamic>,
            _fac9.String>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadTextInputConfiguration(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textInputConfiguration'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextInputConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actionLabel: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['actionLabel']
              : null,
          autocorrect: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autocorrect']
              : null,
          autofillConfiguration: _36c2
              .maybeUnBoxAndBuildArgument<_7283.AutofillConfiguration, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['autofillConfiguration']
                      : null,
                  parentState: hydroState),
          enableDeltaModel: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableDeltaModel']
              : null,
          enableIMEPersonalizedLearning: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableIMEPersonalizedLearning']
              : null,
          enableSuggestions: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableSuggestions']
              : null,
          inputAction: _36c2.maybeUnBoxEnum(
              values: _8577.TextInputAction.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['inputAction']
                  : null),
          inputType:
              _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputType, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputType'] : null,
                  parentState: hydroState),
          keyboardAppearance: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardAppearance'] : null),
          obscureText: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscureText'] : null,
          readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null,
          smartDashesType: _36c2.maybeUnBoxEnum(values: _8577.SmartDashesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartDashesType'] : null),
          smartQuotesType: _36c2.maybeUnBoxEnum(values: _8577.SmartQuotesType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['smartQuotesType'] : null),
          textCapitalization: _36c2.maybeUnBoxEnum(values: _8577.TextCapitalization.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textCapitalization'] : null))
    ];
  });
  _36c2.registerBoxer<_8577.TextInputConfiguration>(boxer: (
      {required _8577.TextInputConfiguration vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextInputConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
