import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/editable_text.dart' as _d800;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedToolbarOptions extends _36c2.VMManagedBox<_d800.ToolbarOptions> {
  VMManagedToolbarOptions(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['copy'] = vmObject.copy;
    table['cut'] = vmObject.cut;
    table['paste'] = vmObject.paste;
    table['selectAll'] = vmObject.selectAll;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d800.ToolbarOptions vmObject;
}

class RTManagedToolbarOptions extends _d800.ToolbarOptions
    implements _36c2.Box<_d800.ToolbarOptions> {
  RTManagedToolbarOptions(
      {required _fac9.bool copy,
      required _fac9.bool cut,
      required _fac9.bool paste,
      required _fac9.bool selectAll,
      required this.table,
      required this.hydroState})
      : super(copy: copy, cut: cut, paste: paste, selectAll: selectAll) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['copy'] = _36c2.maybeBoxObject(
        object: this.copy, hydroState: hydroState, table: _36c2.HydroTable());
    table['cut'] = _36c2.maybeBoxObject(
        object: this.cut, hydroState: hydroState, table: _36c2.HydroTable());
    table['paste'] = _36c2.maybeBoxObject(
        object: this.paste, hydroState: hydroState, table: _36c2.HydroTable());
    table['selectAll'] = _36c2.maybeBoxObject(
        object: this.selectAll,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _d800.ToolbarOptions unwrap() => this;
  _d800.ToolbarOptions get vmObject => this;
}

void loadToolbarOptions(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['toolbarOptions'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedToolbarOptions(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          copy: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['copy']
              : null,
          cut: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cut']
              : null,
          paste: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['paste']
              : null,
          selectAll: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['selectAll']
              : null)
    ];
  });
  _36c2.registerBoxer<_d800.ToolbarOptions>(boxer: (
      {required _d800.ToolbarOptions vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedToolbarOptions(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
