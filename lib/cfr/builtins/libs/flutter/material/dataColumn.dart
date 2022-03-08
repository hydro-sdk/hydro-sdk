import 'dart:core' as _fac9;

import 'package:flutter/src/material/data_table.dart' as _3d7b;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDataColumn extends _36c2.VMManagedBox<_3d7b.DataColumn> {
  VMManagedDataColumn(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['label'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.label,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltip'] = vmObject.tooltip;
    table['numeric'] = vmObject.numeric;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3d7b.DataColumn vmObject;
}

class RTManagedDataColumn extends _3d7b.DataColumn
    implements _36c2.Box<_3d7b.DataColumn> {
  RTManagedDataColumn(
      {required _fac9.bool numeric,
      void Function(_fac9.int columnIndex, _fac9.bool ascending)? onSort,
      _fac9.String? tooltip,
      required _e2dc.Widget label,
      required this.table,
      required this.hydroState})
      : super(
            numeric: numeric, onSort: onSort, tooltip: tooltip, label: label) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['label'] = _36c2.maybeBoxObject(
        object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
    table['tooltip'] = _36c2.maybeBoxObject(
        object: this.tooltip,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['numeric'] = _36c2.maybeBoxObject(
        object: this.numeric,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _3d7b.DataColumn unwrap() => this;
  _3d7b.DataColumn get vmObject => this;
}

void loadDataColumn(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dataColumn'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonSort =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onSort'] : null;

    return [
      RTManagedDataColumn(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          numeric: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['numeric']
              : null,
          onSort: unpackedonSort != null
              ? (columnIndex, ascending) => unpackedonSort.dispatch(
                    [luaCallerArguments[0], columnIndex, ascending],
                    parentState: hydroState,
                  )
              : null,
          tooltip: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['tooltip']
              : null,
          label: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['label']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_3d7b.DataColumn>(boxer: (
      {required _3d7b.DataColumn vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDataColumn(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
