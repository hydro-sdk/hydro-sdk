import 'dart:core' as _fac9;

import 'package:flutter/src/services/autofill.dart' as _7283;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAutofillScope extends _36c2.VMManagedBox<_7283.AutofillScope> {
  VMManagedAutofillScope(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getAutofillClient'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getAutofillClient(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7283.AutofillClient?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getAutofillClients'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.autofillClients,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextInputConnection>(
            object: vmObject.attach(
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7283.AutofillScope vmObject;
}

void loadAutofillScope(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7283.AutofillScope>(boxer: (
      {required _7283.AutofillScope vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAutofillScope(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
