import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/date.dart' as _a848;
import 'package:flutter/src/material/date_picker.dart' as _b858;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDatePickerDialog
    extends _36c2.VMManagedBox<_b858.DatePickerDialog> {
  VMManagedDatePickerDialog(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['initialDate'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.initialDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['firstDate'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.firstDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lastDate'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.lastDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['currentDate'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.currentDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initialEntryMode'] =
        _a848.DatePickerEntryMode.values.indexWhere((x) {
      return x == vmObject.initialEntryMode;
    });
    table['cancelText'] = vmObject.cancelText;
    table['confirmText'] = vmObject.confirmText;
    table['helpText'] = vmObject.helpText;
    table['initialCalendarMode'] = _a848.DatePickerMode.values.indexWhere((x) {
      return x == vmObject.initialCalendarMode;
    });
    table['errorFormatText'] = vmObject.errorFormatText;
    table['errorInvalidText'] = vmObject.errorInvalidText;
    table['fieldHintText'] = vmObject.fieldHintText;
    table['fieldLabelText'] = vmObject.fieldLabelText;
    table['restorationId'] = vmObject.restorationId;
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

  final _b858.DatePickerDialog vmObject;
}

class RTManagedDatePickerDialog extends _b858.DatePickerDialog
    implements _36c2.Box<_b858.DatePickerDialog> {
  RTManagedDatePickerDialog(
      {_fac9.String? cancelText,
      _fac9.String? confirmText,
      _fac9.DateTime? currentDate,
      _fac9.String? errorFormatText,
      _fac9.String? errorInvalidText,
      _fac9.String? fieldHintText,
      _fac9.String? fieldLabelText,
      _fac9.String? helpText,
      required _a848.DatePickerMode initialCalendarMode,
      required _a848.DatePickerEntryMode initialEntryMode,
      _ab4a.Key? key,
      _fac9.String? restorationId,
      _fac9.bool Function(_fac9.DateTime day)? selectableDayPredicate,
      required _fac9.DateTime firstDate,
      required _fac9.DateTime initialDate,
      required _fac9.DateTime lastDate,
      required this.table,
      required this.hydroState})
      : super(
            cancelText: cancelText,
            confirmText: confirmText,
            currentDate: currentDate,
            errorFormatText: errorFormatText,
            errorInvalidText: errorInvalidText,
            fieldHintText: fieldHintText,
            fieldLabelText: fieldLabelText,
            helpText: helpText,
            initialCalendarMode: initialCalendarMode,
            initialEntryMode: initialEntryMode,
            key: key,
            restorationId: restorationId,
            selectableDayPredicate: selectableDayPredicate,
            firstDate: firstDate,
            initialDate: initialDate,
            lastDate: lastDate) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['initialDate'] = _36c2.maybeBoxObject(
        object: this.initialDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['firstDate'] = _36c2.maybeBoxObject(
        object: this.firstDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lastDate'] = _36c2.maybeBoxObject(
        object: this.lastDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['currentDate'] = _36c2.maybeBoxObject(
        object: this.currentDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initialEntryMode'] =
        _a848.DatePickerEntryMode.values.indexWhere((x) {
      return x == this.initialEntryMode;
    });
    table['cancelText'] = _36c2.maybeBoxObject(
        object: this.cancelText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['confirmText'] = _36c2.maybeBoxObject(
        object: this.confirmText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['helpText'] = _36c2.maybeBoxObject(
        object: this.helpText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initialCalendarMode'] = _a848.DatePickerMode.values.indexWhere((x) {
      return x == this.initialCalendarMode;
    });
    table['errorFormatText'] = _36c2.maybeBoxObject(
        object: this.errorFormatText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorInvalidText'] = _36c2.maybeBoxObject(
        object: this.errorInvalidText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fieldHintText'] = _36c2.maybeBoxObject(
        object: this.fieldHintText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fieldLabelText'] = _36c2.maybeBoxObject(
        object: this.fieldLabelText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['restorationId'] = _36c2.maybeBoxObject(
        object: this.restorationId,
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

  _b858.DatePickerDialog unwrap() => this;
  _b858.DatePickerDialog get vmObject => this;
  @_fac9.override
  _e2dc.State<_b858.DatePickerDialog> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_b858.DatePickerDialog>,
            _b858.DatePickerDialog>(
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

void loadDatePickerDialog(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['datePickerDialog'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedselectableDayPredicate =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['selectableDayPredicate']
            : null;

    return [
      RTManagedDatePickerDialog(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          cancelText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cancelText']
              : null,
          confirmText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['confirmText']
              : null,
          currentDate: _36c2
              .maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentDate'] : null,
                  parentState: hydroState),
          errorFormatText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['errorFormatText']
              : null,
          errorInvalidText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['errorInvalidText']
              : null,
          fieldHintText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['fieldHintText']
              : null,
          fieldLabelText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['fieldLabelText']
              : null,
          helpText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['helpText']
              : null,
          initialCalendarMode: _36c2.maybeUnBoxEnum(
              values: _a848.DatePickerMode.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['initialCalendarMode']
                  : null),
          initialEntryMode: _36c2.maybeUnBoxEnum(
              values: _a848.DatePickerEntryMode.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['initialEntryMode']
                  : null),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['restorationId'] : null,
          selectableDayPredicate: unpackedselectableDayPredicate != null
              ? (day) => unpackedselectableDayPredicate.dispatch(
                    [luaCallerArguments[0], day],
                    parentState: hydroState,
                  )[0]
              : null,
          firstDate: _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['firstDate'] : null, parentState: hydroState),
          initialDate: _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['initialDate'] : null, parentState: hydroState),
          lastDate: _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['lastDate'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_b858.DatePickerDialog>(boxer: (
      {required _b858.DatePickerDialog vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDatePickerDialog(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
