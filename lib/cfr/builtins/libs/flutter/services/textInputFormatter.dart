import 'dart:core' as _fac9;

import 'package:flutter/src/services/text_formatter.dart' as _86aa;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextInputFormatter
    extends _36c2.VMManagedBox<_86aa.TextInputFormatter> {
  VMManagedTextInputFormatter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['formatEditUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextEditingValue>(
            object: vmObject.formatEditUpdate(
                _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _86aa.TextInputFormatter vmObject;
}

class RTManagedTextInputFormatter extends _86aa.TextInputFormatter
    implements _36c2.Box<_86aa.TextInputFormatter> {
  RTManagedTextInputFormatter({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_formatEditUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: formatEditUpdate(
                _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _86aa.TextInputFormatter unwrap() => this;
  _86aa.TextInputFormatter get vmObject => this;
  @_fac9.override
  _8577.TextEditingValue formatEditUpdate(oldValue, newValue) {
    _36c2.Closure closure = table["formatEditUpdate"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadTextInputFormatter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textInputFormatter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextInputFormatter(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['textInputFormatterWithFunction'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedformatFunction = luaCallerArguments[1];
    return [
      _36c2.maybeBoxObject<_86aa.TextInputFormatter>(
          object: _86aa.TextInputFormatter.withFunction((oldValue, newValue) =>
              _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                      _fac9.dynamic>(
                  unpackedformatFunction.dispatch(
                    [luaCallerArguments[0], oldValue, newValue],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_86aa.TextInputFormatter>(boxer: (
      {required _86aa.TextInputFormatter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextInputFormatter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
