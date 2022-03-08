import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/material/data_table.dart' as _3d7b;
import 'package:flutter/src/material/data_table_source.dart' as _f61a;
import 'package:flutter/src/material/paginated_data_table.dart' as _306a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPaginatedDataTable
    extends _36c2.VMManagedBox<_306a.PaginatedDataTable> {
  VMManagedPaginatedDataTable(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['header'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.header,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>?>(
        object: vmObject.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['columns'] = _36c2.maybeBoxObject<_fac9.List<_3d7b.DataColumn>>(
        object: vmObject.columns,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sortColumnIndex'] = vmObject.sortColumnIndex;
    table['sortAscending'] = vmObject.sortAscending;
    table['dataRowHeight'] = vmObject.dataRowHeight;
    table['headingRowHeight'] = vmObject.headingRowHeight;
    table['horizontalMargin'] = vmObject.horizontalMargin;
    table['columnSpacing'] = vmObject.columnSpacing;
    table['showCheckboxColumn'] = vmObject.showCheckboxColumn;
    table['showFirstLastButtons'] = vmObject.showFirstLastButtons;
    table['initialFirstRowIndex'] = vmObject.initialFirstRowIndex;
    table['rowsPerPage'] = vmObject.rowsPerPage;
    table['availableRowsPerPage'] = _36c2.maybeBoxObject<_fac9.List<_fac9.int>>(
        object: vmObject.availableRowsPerPage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['source'] = _36c2.maybeBoxObject<_f61a.DataTableSource>(
        object: vmObject.source,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['checkboxHorizontalMargin'] = vmObject.checkboxHorizontalMargin;
    table['arrowHeadColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.arrowHeadColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_306a.PaginatedDataTableState>(
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

  final _306a.PaginatedDataTable vmObject;
}

class RTManagedPaginatedDataTable extends _306a.PaginatedDataTable
    implements _36c2.Box<_306a.PaginatedDataTable> {
  RTManagedPaginatedDataTable(
      {_fac9.List<_e2dc.Widget>? actions,
      _a643.Color? arrowHeadColor,
      required _fac9.List<_fac9.int> availableRowsPerPage,
      _fac9.double? checkboxHorizontalMargin,
      required _fac9.double columnSpacing,
      required _fac9.double dataRowHeight,
      required _02d2.DragStartBehavior dragStartBehavior,
      _e2dc.Widget? header,
      required _fac9.double headingRowHeight,
      required _fac9.double horizontalMargin,
      _fac9.int? initialFirstRowIndex,
      _ab4a.Key? key,
      void Function(_fac9.int value)? onPageChanged,
      void Function(_fac9.int? value)? onRowsPerPageChanged,
      void Function(_fac9.bool? value)? onSelectAll,
      required _fac9.int rowsPerPage,
      required _fac9.bool showCheckboxColumn,
      required _fac9.bool showFirstLastButtons,
      required _fac9.bool sortAscending,
      _fac9.int? sortColumnIndex,
      required _fac9.List<_3d7b.DataColumn> columns,
      required _f61a.DataTableSource source,
      required this.table,
      required this.hydroState})
      : super(
            actions: actions,
            arrowHeadColor: arrowHeadColor,
            availableRowsPerPage: availableRowsPerPage,
            checkboxHorizontalMargin: checkboxHorizontalMargin,
            columnSpacing: columnSpacing,
            dataRowHeight: dataRowHeight,
            dragStartBehavior: dragStartBehavior,
            header: header,
            headingRowHeight: headingRowHeight,
            horizontalMargin: horizontalMargin,
            initialFirstRowIndex: initialFirstRowIndex,
            key: key,
            onPageChanged: onPageChanged,
            onRowsPerPageChanged: onRowsPerPageChanged,
            onSelectAll: onSelectAll,
            rowsPerPage: rowsPerPage,
            showCheckboxColumn: showCheckboxColumn,
            showFirstLastButtons: showFirstLastButtons,
            sortAscending: sortAscending,
            sortColumnIndex: sortColumnIndex,
            columns: columns,
            source: source) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['header'] = _36c2.maybeBoxObject(
        object: this.header, hydroState: hydroState, table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject(
        object: this.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['dataRowHeight'] = _36c2.maybeBoxObject(
        object: this.dataRowHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['headingRowHeight'] = _36c2.maybeBoxObject(
        object: this.headingRowHeight,
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
    table['showFirstLastButtons'] = _36c2.maybeBoxObject(
        object: this.showFirstLastButtons,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initialFirstRowIndex'] = _36c2.maybeBoxObject(
        object: this.initialFirstRowIndex,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rowsPerPage'] = _36c2.maybeBoxObject(
        object: this.rowsPerPage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['availableRowsPerPage'] = _36c2.maybeBoxObject(
        object: this.availableRowsPerPage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['source'] = _36c2.maybeBoxObject(
        object: this.source, hydroState: hydroState, table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.dragStartBehavior;
    });
    table['checkboxHorizontalMargin'] = _36c2.maybeBoxObject(
        object: this.checkboxHorizontalMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['arrowHeadColor'] = _36c2.maybeBoxObject(
        object: this.arrowHeadColor,
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

  _306a.PaginatedDataTable unwrap() => this;
  _306a.PaginatedDataTable get vmObject => this;
  @_fac9.override
  _306a.PaginatedDataTableState createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_306a.PaginatedDataTableState,
            _fac9.dynamic>(
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

void loadPaginatedDataTable(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['paginatedDataTable'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonPageChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPageChanged']
        : null;
    _36c2.Closure? unpackedonRowsPerPageChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onRowsPerPageChanged']
        : null;
    _36c2.Closure? unpackedonSelectAll = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSelectAll']
        : null;

    return [
      RTManagedPaginatedDataTable(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actions: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>?, _e2dc.Widget>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['actions']
                  : null,
              parentState: hydroState),
          arrowHeadColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['arrowHeadColor']
                      : null,
                  parentState: hydroState),
          availableRowsPerPage:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.int>, _fac9.int>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['availableRowsPerPage'] : null,
                  parentState: hydroState),
          checkboxHorizontalMargin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkboxHorizontalMargin'] : null?.toDouble(),
          columnSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['columnSpacing'] : null?.toDouble(),
          dataRowHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataRowHeight'] : null?.toDouble(),
          dragStartBehavior: _36c2.maybeUnBoxEnum(values: _02d2.DragStartBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dragStartBehavior'] : null),
          header: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['header'] : null, parentState: hydroState),
          headingRowHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['headingRowHeight'] : null?.toDouble(),
          horizontalMargin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['horizontalMargin'] : null?.toDouble(),
          initialFirstRowIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['initialFirstRowIndex'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          onPageChanged: unpackedonPageChanged != null
              ? (value) => unpackedonPageChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          onRowsPerPageChanged: unpackedonRowsPerPageChanged != null
              ? (value) => unpackedonRowsPerPageChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          onSelectAll: unpackedonSelectAll != null
              ? (value) => unpackedonSelectAll.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          rowsPerPage: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rowsPerPage'] : null,
          showCheckboxColumn: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showCheckboxColumn'] : null,
          showFirstLastButtons: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showFirstLastButtons'] : null,
          sortAscending: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sortAscending'] : null,
          sortColumnIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sortColumnIndex'] : null,
          columns: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_3d7b.DataColumn>, _3d7b.DataColumn>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['columns'] : null, parentState: hydroState),
          source: _36c2.maybeUnBoxAndBuildArgument<_f61a.DataTableSource, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['source'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_306a.PaginatedDataTable>(boxer: (
      {required _306a.PaginatedDataTable vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPaginatedDataTable(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
