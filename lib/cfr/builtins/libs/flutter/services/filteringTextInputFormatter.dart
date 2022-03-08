import 'dart:core' as _fac9;

import 'package:flutter/src/services/text_formatter.dart' as _86aa;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFilteringTextInputFormatter
    extends _36c2.VMManagedBox<_86aa.FilteringTextInputFormatter> {
  VMManagedFilteringTextInputFormatter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['filterPattern'] = _36c2.maybeBoxObject<_fac9.Pattern>(
        object: vmObject.filterPattern,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['allow'] = vmObject.allow;
    table['replacementString'] = vmObject.replacementString;
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

  final _86aa.FilteringTextInputFormatter vmObject;
}

class RTManagedFilteringTextInputFormatter
    extends _86aa.FilteringTextInputFormatter
    implements _36c2.Box<_86aa.FilteringTextInputFormatter> {
  RTManagedFilteringTextInputFormatter(_fac9.Pattern filterPattern$,
      {required _fac9.String replacementString,
      required _fac9.bool allow,
      required this.table,
      required this.hydroState})
      : super(filterPattern$,
            replacementString: replacementString, allow: allow) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['filterPattern'] = _36c2.maybeBoxObject(
        object: this.filterPattern,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['allow'] = _36c2.maybeBoxObject(
        object: this.allow, hydroState: hydroState, table: _36c2.HydroTable());
    table['replacementString'] = _36c2.maybeBoxObject(
        object: this.replacementString,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_formatEditUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.formatEditUpdate(
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
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _86aa.FilteringTextInputFormatter unwrap() => this;
  _86aa.FilteringTextInputFormatter get vmObject => this;
  @_fac9.override
  _8577.TextEditingValue formatEditUpdate(oldValue, newValue) {
    _36c2.Closure closure = table["formatEditUpdate"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFilteringTextInputFormatter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['filteringTextInputFormatter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFilteringTextInputFormatter(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Pattern, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          replacementString: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['replacementString']
              : null,
          allow: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['allow']
              : null)
    ];
  });
  _36c2.registerBoxer<_86aa.FilteringTextInputFormatter>(boxer: (
      {required _86aa.FilteringTextInputFormatter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFilteringTextInputFormatter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
