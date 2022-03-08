import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/data_table.dart' as _3d7b;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/rendering/table_border.dart' as _2738;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDataTable extends _36c2.VMManagedBox<_3d7b.DataTable> {
  VMManagedDataTable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['columns'] = _36c2.maybeBoxObject<_fac9.List<_3d7b.DataColumn>>(
        object: vmObject.columns,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sortColumnIndex'] = vmObject.sortColumnIndex;
    table['sortAscending'] = vmObject.sortAscending;
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
    table['showCheckboxColumn'] = vmObject.showCheckboxColumn;
    table['rows'] = _36c2.maybeBoxObject<_fac9.List<_3d7b.DataRow>>(
        object: vmObject.rows,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dividerThickness'] = vmObject.dividerThickness;
    table['showBottomBorder'] = vmObject.showBottomBorder;
    table['checkboxHorizontalMargin'] = vmObject.checkboxHorizontalMargin;
    table['border'] = _36c2.maybeBoxObject<_2738.TableBorder?>(
        object: vmObject.border,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatelessElement>(
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

  final _3d7b.DataTable vmObject;
}

class RTManagedDataTable extends _3d7b.DataTable
    implements _36c2.Box<_3d7b.DataTable> {
  RTManagedDataTable(
      {_2738.TableBorder? border,
      _fac9.double? checkboxHorizontalMargin,
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
      _ab4a.Key? key,
      void Function(_fac9.bool? value)? onSelectAll,
      required _fac9.bool showBottomBorder,
      required _fac9.bool showCheckboxColumn,
      required _fac9.bool sortAscending,
      _fac9.int? sortColumnIndex,
      required _fac9.List<_3d7b.DataColumn> columns,
      required _fac9.List<_3d7b.DataRow> rows,
      required this.table,
      required this.hydroState})
      : super(
            border: border,
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
            horizontalMargin: horizontalMargin,
            key: key,
            onSelectAll: onSelectAll,
            showBottomBorder: showBottomBorder,
            showCheckboxColumn: showCheckboxColumn,
            sortAscending: sortAscending,
            sortColumnIndex: sortColumnIndex,
            columns: columns,
            rows: rows) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['columns'] = _36c2.maybeBoxObject(
        object: this.columns,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sortColumnIndex'] = _36c2.maybeBoxObject(
        object: this.sortColumnIndex,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sortAscending'] = _36c2.maybeBoxObject(
        object: this.sortAscending,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['showCheckboxColumn'] = _36c2.maybeBoxObject(
        object: this.showCheckboxColumn,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rows'] = _36c2.maybeBoxObject(
        object: this.rows, hydroState: hydroState, table: _36c2.HydroTable());
    table['dividerThickness'] = _36c2.maybeBoxObject(
        object: this.dividerThickness,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showBottomBorder'] = _36c2.maybeBoxObject(
        object: this.showBottomBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkboxHorizontalMargin'] = _36c2.maybeBoxObject(
        object: this.checkboxHorizontalMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['border'] = _36c2.maybeBoxObject(
        object: this.border, hydroState: hydroState, table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  _3d7b.DataTable unwrap() => this;
  _3d7b.DataTable get vmObject => this;
  @_fac9.override
  _e2dc.Widget build(context) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatelessElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatelessElement, _fac9.dynamic>(
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

void loadDataTable(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dataTable'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonSelectAll = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSelectAll']
        : null;

    return [
      RTManagedDataTable(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          border: _36c2.maybeUnBoxAndBuildArgument<_2738.TableBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['border'] : null,
              parentState: hydroState),
          checkboxHorizontalMargin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['checkboxHorizontalMargin']
              : null?.toDouble(),
          columnSpacing: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['columnSpacing']
              : null?.toDouble(),
          dataRowColor:
              _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['dataRowColor']
                      : null,
                  parentState: hydroState),
          dataRowHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['dataRowHeight']
              : null?.toDouble(),
          dataTextStyle:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataTextStyle'] : null,
                  parentState: hydroState),
          decoration: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
          dividerThickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerThickness'] : null?.toDouble(),
          headingRowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowColor'] : null, parentState: hydroState),
          headingRowHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowHeight'] : null?.toDouble(),
          headingTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingTextStyle'] : null, parentState: hydroState),
          horizontalMargin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['horizontalMargin'] : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          onSelectAll: unpackedonSelectAll != null
              ? (value) => unpackedonSelectAll.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          showBottomBorder: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showBottomBorder'] : null,
          showCheckboxColumn: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showCheckboxColumn'] : null,
          sortAscending: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sortAscending'] : null,
          sortColumnIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sortColumnIndex'] : null,
          columns: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_3d7b.DataColumn>, _3d7b.DataColumn>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['columns'] : null, parentState: hydroState),
          rows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_3d7b.DataRow>, _3d7b.DataRow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rows'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_3d7b.DataTable>(boxer: (
      {required _3d7b.DataTable vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDataTable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
