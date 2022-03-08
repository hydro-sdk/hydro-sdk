import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/date_picker.dart' as _5b14;
import 'package:flutter/src/cupertino/localizations.dart' as _d48f;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoDatePicker
    extends _36c2.VMManagedBox<_5b14.CupertinoDatePicker> {
  VMManagedCupertinoDatePicker(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['mode'] = _5b14.CupertinoDatePickerMode.values.indexWhere((x) {
      return x == vmObject.mode;
    });
    table['initialDateTime'] = _36c2.maybeBoxObject<_fac9.DateTime>(
        object: vmObject.initialDateTime,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minimumDate'] = _36c2.maybeBoxObject<_fac9.DateTime?>(
        object: vmObject.minimumDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maximumDate'] = _36c2.maybeBoxObject<_fac9.DateTime?>(
        object: vmObject.maximumDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minimumYear'] = vmObject.minimumYear;
    table['maximumYear'] = vmObject.maximumYear;
    table['minuteInterval'] = vmObject.minuteInterval;
    table['use24hFormat'] = vmObject.use24hFormat;
    table['dateOrder'] = _d48f.DatePickerDateOrder.values.indexWhere((x) {
      return x == vmObject.dateOrder;
    });
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
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

  final _5b14.CupertinoDatePicker vmObject;
}

class RTManagedCupertinoDatePicker extends _5b14.CupertinoDatePicker
    implements _36c2.Box<_5b14.CupertinoDatePicker> {
  RTManagedCupertinoDatePicker(
      {_a643.Color? backgroundColor,
      _d48f.DatePickerDateOrder? dateOrder,
      _fac9.DateTime? initialDateTime,
      _ab4a.Key? key,
      _fac9.DateTime? maximumDate,
      _fac9.int? maximumYear,
      _fac9.DateTime? minimumDate,
      required _fac9.int minimumYear,
      required _fac9.int minuteInterval,
      required _5b14.CupertinoDatePickerMode mode,
      required _fac9.bool use24hFormat,
      required void Function(_fac9.DateTime value) onDateTimeChanged,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            dateOrder: dateOrder,
            initialDateTime: initialDateTime,
            key: key,
            maximumDate: maximumDate,
            maximumYear: maximumYear,
            minimumDate: minimumDate,
            minimumYear: minimumYear,
            minuteInterval: minuteInterval,
            mode: mode,
            use24hFormat: use24hFormat,
            onDateTimeChanged: onDateTimeChanged) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['mode'] = _5b14.CupertinoDatePickerMode.values.indexWhere((x) {
      return x == this.mode;
    });
    table['initialDateTime'] = _36c2.maybeBoxObject(
        object: this.initialDateTime,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minimumDate'] = _36c2.maybeBoxObject(
        object: this.minimumDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maximumDate'] = _36c2.maybeBoxObject(
        object: this.maximumDate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minimumYear'] = _36c2.maybeBoxObject(
        object: this.minimumYear,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maximumYear'] = _36c2.maybeBoxObject(
        object: this.maximumYear,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minuteInterval'] = _36c2.maybeBoxObject(
        object: this.minuteInterval,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['use24hFormat'] = _36c2.maybeBoxObject(
        object: this.use24hFormat,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dateOrder'] = _d48f.DatePickerDateOrder.values.indexWhere((x) {
      return x == this.dateOrder;
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
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

  _5b14.CupertinoDatePicker unwrap() => this;
  _5b14.CupertinoDatePicker get vmObject => this;
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

void loadCupertinoDatePicker(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoDatePicker'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedonDateTimeChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDateTimeChanged']
        : null;
    return [
      RTManagedCupertinoDatePicker(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundColor']
                  : null,
              parentState: hydroState),
          dateOrder: _36c2.maybeUnBoxEnum(
              values: _d48f.DatePickerDateOrder.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dateOrder']
                  : null),
          initialDateTime:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['initialDateTime'] : null,
                  parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          maximumDate: _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maximumDate'] : null,
              parentState: hydroState),
          maximumYear: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maximumYear'] : null,
          minimumDate: _36c2.maybeUnBoxAndBuildArgument<_fac9.DateTime?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minimumDate'] : null, parentState: hydroState),
          minimumYear: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minimumYear'] : null,
          minuteInterval: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minuteInterval'] : null,
          mode: _36c2.maybeUnBoxEnum(values: _5b14.CupertinoDatePickerMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mode'] : null),
          use24hFormat: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['use24hFormat'] : null,
          onDateTimeChanged: (value) => unpackedonDateTimeChanged.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              ))
    ];
  });
  _36c2.registerBoxer<_5b14.CupertinoDatePicker>(boxer: (
      {required _5b14.CupertinoDatePicker vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoDatePicker(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
