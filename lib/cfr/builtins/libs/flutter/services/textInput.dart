import 'dart:core' as _fac9;

import 'package:flutter/src/services/platform_channel.dart' as _aebe;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextInput extends _36c2.VMManagedBox<_8577.TextInput> {
  VMManagedTextInput(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8577.TextInput vmObject;
}

void loadTextInput(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textInputSetChannel'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _8577.TextInput.setChannel(
        _36c2.maybeUnBoxAndBuildArgument<_aebe.MethodChannel, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState));
    return [];
  });
  table['textInputAttach'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8577.TextInputConnection>(
          object: _8577.TextInput.attach(
              _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputClient,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputConfiguration,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['textInputFinishAutofillContext'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _8577.TextInput.finishAutofillContext(
        shouldSave: luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['shouldSave']
            : null);
    return [];
  });
  _36c2.registerBoxer<_8577.TextInput>(boxer: (
      {required _8577.TextInput vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextInput(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
