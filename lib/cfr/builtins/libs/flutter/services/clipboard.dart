import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/clipboard.dart' as _2668;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedClipboard extends _36c2.VMManagedBox<_2668.Clipboard> {
  VMManagedClipboard(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _2668.Clipboard vmObject;
}

void loadClipboard(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['clipboardSetData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _2668.Clipboard.setData(_36c2.maybeUnBoxAndBuildArgument<
              _2668.ClipboardData,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['clipboardGetData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _2668.Clipboard.getData(luaCallerArguments[1]),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['clipboardHasStrings'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _2668.Clipboard.hasStrings(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_2668.Clipboard>(boxer: (
      {required _2668.Clipboard vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedClipboard(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
