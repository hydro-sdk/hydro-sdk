import 'dart:core' as _fac9;

import 'package:flutter/src/services/autofill.dart' as _7283;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAutofillClient extends _36c2.VMManagedBox<_7283.AutofillClient> {
  VMManagedAutofillClient(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getAutofillId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.autofillId,
      ];
    });
    table['getTextInputConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextInputConfiguration>(
            object: vmObject.textInputConfiguration,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['autofill'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.autofill(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7283.AutofillClient vmObject;
}

void loadAutofillClient(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7283.AutofillClient>(boxer: (
      {required _7283.AutofillClient vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAutofillClient(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
