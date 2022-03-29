import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionDelegate
    extends _36c2.VMManagedBox<_8577.TextSelectionDelegate> {
  VMManagedTextSelectionDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextEditingValue>(
            object: vmObject.textEditingValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textEditingValue = (_36c2.maybeUnBoxAndBuildArgument<
          _8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['userUpdateTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.userUpdateTextEditingValue(
          _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['hideToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hideToolbar(luaCallerArguments[1]);
      return [];
    });
    table['bringIntoView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.bringIntoView(
          _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getCutEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.cutEnabled,
      ];
    });
    table['getCopyEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.copyEnabled,
      ];
    });
    table['getPasteEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pasteEnabled,
      ];
    });
    table['getSelectAllEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectAllEnabled,
      ];
    });
    table['cutSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cutSelection(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['pasteText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pasteText(_36c2.maybeUnBoxEnum(
                values: _8577.SelectionChangedCause.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['selectAll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.selectAll(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['copySelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.copySelection(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8577.TextSelectionDelegate vmObject;
}

void loadTextSelectionDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_8577.TextSelectionDelegate>(boxer: (
      {required _8577.TextSelectionDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextSelectionDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
