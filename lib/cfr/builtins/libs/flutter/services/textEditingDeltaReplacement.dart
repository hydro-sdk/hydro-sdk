import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_editing_delta.dart' as _99ef;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextEditingDeltaReplacement
    extends _36c2.VMManagedBox<_99ef.TextEditingDeltaReplacement> {
  VMManagedTextEditingDeltaReplacement(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['replacementText'] = vmObject.replacementText;
    table['replacedRange'] = _36c2.maybeBoxObject<_a643.TextRange>(
        object: vmObject.replacedRange,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['oldText'] = vmObject.oldText;
    table['selection'] = _36c2.maybeBoxObject<_7986.TextSelection>(
        object: vmObject.selection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['composing'] = _36c2.maybeBoxObject<_a643.TextRange>(
        object: vmObject.composing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getTextReplaced'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.textReplaced,
      ];
    });
    table['apply'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextEditingValue>(
            object: vmObject.apply(_36c2.maybeUnBoxAndBuildArgument<
                _8577.TextEditingValue,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  final _99ef.TextEditingDeltaReplacement vmObject;
}

class RTManagedTextEditingDeltaReplacement
    extends _99ef.TextEditingDeltaReplacement
    implements _36c2.Box<_99ef.TextEditingDeltaReplacement> {
  RTManagedTextEditingDeltaReplacement(
      {required _a643.TextRange composing,
      required _fac9.String oldText,
      required _a643.TextRange replacedRange,
      required _fac9.String replacementText,
      required _7986.TextSelection selection,
      required this.table,
      required this.hydroState})
      : super(
            composing: composing,
            oldText: oldText,
            replacedRange: replacedRange,
            replacementText: replacementText,
            selection: selection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['replacementText'] = _36c2.maybeBoxObject(
        object: this.replacementText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['replacedRange'] = _36c2.maybeBoxObject(
        object: this.replacedRange,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['oldText'] = _36c2.maybeBoxObject(
        object: this.oldText,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selection'] = _36c2.maybeBoxObject(
        object: this.selection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['composing'] = _36c2.maybeBoxObject(
        object: this.composing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getTextReplaced'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textReplaced];
    });
    table['_dart_apply'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.apply(_36c2.maybeUnBoxAndBuildArgument<
                _8577.TextEditingValue,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  _99ef.TextEditingDeltaReplacement unwrap() => this;
  _99ef.TextEditingDeltaReplacement get vmObject => this;
  @_fac9.override
  _fac9.String get textReplaced {
    _36c2.Closure closure = table["getTextReplaced"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _8577.TextEditingValue apply(value) {
    _36c2.Closure closure = table["apply"];
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

void loadTextEditingDeltaReplacement(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textEditingDeltaReplacement'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextEditingDeltaReplacement(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          composing: _36c2
              .maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['composing'] : null,
                  parentState: hydroState),
          oldText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldText']
              : null,
          replacedRange:
              _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['replacedRange']
                      : null,
                  parentState: hydroState),
          replacementText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['replacementText']
              : null,
          selection: _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selection'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_99ef.TextEditingDeltaReplacement>(boxer: (
      {required _99ef.TextEditingDeltaReplacement vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextEditingDeltaReplacement(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
