import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/data_table_theme.dart' as _8f52;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDataTableThemeData
    extends _36c2.VMManagedBox<_8f52.DataTableThemeData> {
  VMManagedDataTableThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['decoration'] = _36c2.maybeBoxObject<_13a5.Decoration?>(
        object: vmObject.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dataRowColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.dataRowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dataRowHeight'] = vmObject.dataRowHeight;
    table['dataTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.dataTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headingRowColor'] =
        _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
            object: vmObject.headingRowColor,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['headingRowHeight'] = vmObject.headingRowHeight;
    table['headingTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.headingTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['horizontalMargin'] = vmObject.horizontalMargin;
    table['columnSpacing'] = vmObject.columnSpacing;
    table['dividerThickness'] = vmObject.dividerThickness;
    table['checkboxHorizontalMargin'] = vmObject.checkboxHorizontalMargin;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8f52.DataTableThemeData>(
            object: vmObject.copyWith(
                checkboxHorizontalMargin: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['checkboxHorizontalMargin']
                    : null?.toDouble(),
                columnSpacing: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['columnSpacing']
                    : null?.toDouble(),
                dataRowColor: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_a643.Color?>?,
                        _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataRowColor'] : null,
                    parentState: hydroState),
                dataRowHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['dataRowHeight']
                    : null?.toDouble(),
                dataTextStyle: _36c2
                    .maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataTextStyle'] : null,
                        parentState: hydroState),
                decoration: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
                dividerThickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerThickness'] : null?.toDouble(),
                headingRowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowColor'] : null, parentState: hydroState),
                headingRowHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowHeight'] : null?.toDouble(),
                headingTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingTextStyle'] : null, parentState: hydroState),
                horizontalMargin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['horizontalMargin'] : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8f52.DataTableThemeData vmObject;
}

class RTManagedDataTableThemeData extends _8f52.DataTableThemeData
    implements _36c2.Box<_8f52.DataTableThemeData> {
  RTManagedDataTableThemeData(
      {_fac9.double? checkboxHorizontalMargin,
      _fac9.double? columnSpacing,
      _da12.MaterialStateProperty<_a643.Color?>? dataRowColor,
      _fac9.double? dataRowHeight,
      _74d0.TextStyle? dataTextStyle,
      _13a5.Decoration? decoration,
      _fac9.double? dividerThickness,
      _da12.MaterialStateProperty<_a643.Color?>? headingRowColor,
      _fac9.double? headingRowHeight,
      _74d0.TextStyle? headingTextStyle,
      _fac9.double? horizontalMargin,
      required this.table,
      required this.hydroState})
      : super(
            checkboxHorizontalMargin: checkboxHorizontalMargin,
            columnSpacing: columnSpacing,
            dataRowColor: dataRowColor,
            dataRowHeight: dataRowHeight,
            dataTextStyle: dataTextStyle,
            decoration: decoration,
            dividerThickness: dividerThickness,
            headingRowColor: headingRowColor,
            headingRowHeight: headingRowHeight,
            headingTextStyle: headingTextStyle,
            horizontalMargin: horizontalMargin) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['decoration'] = _36c2.maybeBoxObject(
        object: this.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dataRowColor'] = _36c2.maybeBoxObject(
        object: this.dataRowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dataRowHeight'] = _36c2.maybeBoxObject(
        object: this.dataRowHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dataTextStyle'] = _36c2.maybeBoxObject(
        object: this.dataTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headingRowColor'] = _36c2.maybeBoxObject(
        object: this.headingRowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headingRowHeight'] = _36c2.maybeBoxObject(
        object: this.headingRowHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headingTextStyle'] = _36c2.maybeBoxObject(
        object: this.headingTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['horizontalMargin'] = _36c2.maybeBoxObject(
        object: this.horizontalMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['columnSpacing'] = _36c2.maybeBoxObject(
        object: this.columnSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dividerThickness'] = _36c2.maybeBoxObject(
        object: this.dividerThickness,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkboxHorizontalMargin'] = _36c2.maybeBoxObject(
        object: this.checkboxHorizontalMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                checkboxHorizontalMargin:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['checkboxHorizontalMargin']
                            : null,
                        parentState: hydroState),
                columnSpacing:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['columnSpacing'] : null,
                        parentState: hydroState),
                dataRowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataRowColor'] : null,
                    parentState: hydroState),
                dataRowHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataRowHeight'] : null, parentState: hydroState),
                dataTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataTextStyle'] : null, parentState: hydroState),
                decoration: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
                dividerThickness: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerThickness'] : null, parentState: hydroState),
                headingRowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowColor'] : null, parentState: hydroState),
                headingRowHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowHeight'] : null, parentState: hydroState),
                headingTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingTextStyle'] : null, parentState: hydroState),
                horizontalMargin: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['horizontalMargin'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8f52.DataTableThemeData unwrap() => this;
  _8f52.DataTableThemeData get vmObject => this;
  @_fac9.override
  _8f52.DataTableThemeData copyWith(
      {_fac9.double? checkboxHorizontalMargin,
      _fac9.double? columnSpacing,
      _da12.MaterialStateProperty? dataRowColor,
      _fac9.double? dataRowHeight,
      _74d0.TextStyle? dataTextStyle,
      _13a5.Decoration? decoration,
      _fac9.double? dividerThickness,
      _da12.MaterialStateProperty? headingRowColor,
      _fac9.double? headingRowHeight,
      _74d0.TextStyle? headingTextStyle,
      _fac9.double? horizontalMargin}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8f52.DataTableThemeData, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
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
}

void loadDataTableThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dataTableThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDataTableThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          checkboxHorizontalMargin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['checkboxHorizontalMargin']
              : null?.toDouble(),
          columnSpacing: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['columnSpacing']
              : null?.toDouble(),
          dataRowColor: _36c2
              .maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataRowColor'] : null,
                  parentState: hydroState),
          dataRowHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['dataRowHeight']
              : null?.toDouble(),
          dataTextStyle:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['dataTextStyle']
                      : null,
                  parentState: hydroState),
          decoration: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
              parentState: hydroState),
          dividerThickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerThickness'] : null?.toDouble(),
          headingRowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowColor'] : null, parentState: hydroState),
          headingRowHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowHeight'] : null?.toDouble(),
          headingTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingTextStyle'] : null, parentState: hydroState),
          horizontalMargin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['horizontalMargin'] : null?.toDouble())
    ];
  });
  table['dataTableThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8f52.DataTableThemeData>(
          object: _8f52.DataTableThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_8f52.DataTableThemeData,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_8f52.DataTableThemeData,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_8f52.DataTableThemeData>(boxer: (
      {required _8f52.DataTableThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDataTableThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
