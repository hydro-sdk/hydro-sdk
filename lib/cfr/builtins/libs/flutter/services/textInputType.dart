import 'dart:core' as _fac9;

import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextInputType extends _36c2.VMManagedBox<_8577.TextInputType> {
  VMManagedTextInputType(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['signed'] = vmObject.signed;
    table['decimal'] = vmObject.decimal;
    table['toJson'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Map>(
            object: vmObject.toJson(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8577.TextInputType vmObject;
}

void loadTextInputType(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textInputTypeText'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.text,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeMultiline'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.multiline,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypePhone'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.phone,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeDatetime'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.datetime,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeEmailAddress'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.emailAddress,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeUrl'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.url,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeVisiblePassword'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.visiblePassword,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeName'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.name,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeStreetAddress'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.streetAddress,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  table['textInputTypeNone'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputType>(
          object: _8577.TextInputType.none,
          hydroState: hydroState,
          table: _36c2.HydroTable())
    ];
  });
  _36c2.registerBoxer<_8577.TextInputType>(boxer: (
      {required _8577.TextInputType vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextInputType(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
