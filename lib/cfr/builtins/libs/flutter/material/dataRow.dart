import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/data_table.dart' as _3d7b;
import 'package:flutter/src/material/material_state.dart' as _da12;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDataRow extends _36c2.VMManagedBox<_3d7b.DataRow> {
  VMManagedDataRow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = _36c2.maybeBoxObject<_ab4a.LocalKey?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selected'] = vmObject.selected;
    table['cells'] = _36c2.maybeBoxObject<_fac9.List<_3d7b.DataCell>>(
        object: vmObject.cells,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3d7b.DataRow vmObject;
}

class RTManagedDataRow extends _3d7b.DataRow
    implements _36c2.Box<_3d7b.DataRow> {
  RTManagedDataRow(
      {_da12.MaterialStateProperty<_a643.Color?>? color,
      _ab4a.LocalKey? key,
      void Function()? onLongPress,
      void Function(_fac9.bool? value)? onSelectChanged,
      required _fac9.bool selected,
      required _fac9.List<_3d7b.DataCell> cells,
      required this.table,
      required this.hydroState})
      : super(
            color: color,
            key: key,
            onLongPress: onLongPress,
            onSelectChanged: onSelectChanged,
            selected: selected,
            cells: cells) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['selected'] = _36c2.maybeBoxObject(
        object: this.selected,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cells'] = _36c2.maybeBoxObject(
        object: this.cells, hydroState: hydroState, table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _3d7b.DataRow unwrap() => this;
  _3d7b.DataRow get vmObject => this;
}

void loadDataRow(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dataRow'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonLongPress = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onLongPress']
        : null;
    _36c2.Closure? unpackedonSelectChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSelectChanged']
        : null;

    return [
      RTManagedDataRow(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          color: _36c2.maybeUnBoxAndBuildArgument<
                  _da12.MaterialStateProperty<_a643.Color?>?,
                  _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.LocalKey?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          onLongPress: unpackedonLongPress != null
              ? () => unpackedonLongPress.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSelectChanged: unpackedonSelectChanged != null
              ? (value) => unpackedonSelectChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          selected: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['selected']
              : null,
          cells: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_3d7b.DataCell>, _3d7b.DataCell>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cells'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_3d7b.DataRow>(boxer: (
      {required _3d7b.DataRow vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDataRow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
