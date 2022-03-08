import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/tap.dart' as _1275;
import 'package:flutter/src/material/data_table.dart' as _3d7b;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDataCell extends _36c2.VMManagedBox<_3d7b.DataCell> {
  VMManagedDataCell(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['placeholder'] = vmObject.placeholder;
    table['showEditIcon'] = vmObject.showEditIcon;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3d7b.DataCell vmObject;
}

class RTManagedDataCell extends _3d7b.DataCell
    implements _36c2.Box<_3d7b.DataCell> {
  RTManagedDataCell(_e2dc.Widget child$,
      {void Function()? onDoubleTap,
      void Function()? onLongPress,
      void Function()? onTap,
      void Function()? onTapCancel,
      void Function(_1275.TapDownDetails details)? onTapDown,
      required _fac9.bool placeholder,
      required _fac9.bool showEditIcon,
      required this.table,
      required this.hydroState})
      : super(child$,
            onDoubleTap: onDoubleTap,
            onLongPress: onLongPress,
            onTap: onTap,
            onTapCancel: onTapCancel,
            onTapDown: onTapDown,
            placeholder: placeholder,
            showEditIcon: showEditIcon) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['placeholder'] = _36c2.maybeBoxObject(
        object: this.placeholder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showEditIcon'] = _36c2.maybeBoxObject(
        object: this.showEditIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _3d7b.DataCell unwrap() => this;
  _3d7b.DataCell get vmObject => this;
}

void loadDataCell(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dataCell'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonDoubleTap = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['onDoubleTap']
        : null;
    _36c2.Closure? unpackedonLongPress = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['onLongPress']
        : null;
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['onTap'] : null;
    _36c2.Closure? unpackedonTapCancel = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['onTapCancel']
        : null;
    _36c2.Closure? unpackedonTapDown = luaCallerArguments.length >= 3
        ? luaCallerArguments[2]['onTapDown']
        : null;

    return [
      RTManagedDataCell(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onDoubleTap: unpackedonDoubleTap != null
              ? () => unpackedonDoubleTap.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onLongPress: unpackedonLongPress != null
              ? () => unpackedonLongPress.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
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
          onTapCancel: unpackedonTapCancel != null
              ? () => unpackedonTapCancel.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onTapDown: unpackedonTapDown != null
              ? (details) => unpackedonTapDown.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          placeholder: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['placeholder']
              : null,
          showEditIcon: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['showEditIcon']
              : null)
    ];
  });
  _36c2.registerBoxer<_3d7b.DataCell>(boxer: (
      {required _3d7b.DataCell vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDataCell(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
