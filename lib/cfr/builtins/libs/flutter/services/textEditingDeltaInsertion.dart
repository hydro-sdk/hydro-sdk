import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_editing_delta.dart' as _99ef;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextEditingDeltaInsertion
    extends _36c2.VMManagedBox<_99ef.TextEditingDeltaInsertion> {
  VMManagedTextEditingDeltaInsertion(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['textInserted'] = vmObject.textInserted;
    table['insertionOffset'] = vmObject.insertionOffset;
    table['oldText'] = vmObject.oldText;
    table['selection'] = _36c2.maybeBoxObject<_7986.TextSelection>(
        object: vmObject.selection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['composing'] = _36c2.maybeBoxObject<_a643.TextRange>(
        object: vmObject.composing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  final _99ef.TextEditingDeltaInsertion vmObject;
}

class RTManagedTextEditingDeltaInsertion extends _99ef.TextEditingDeltaInsertion
    implements _36c2.Box<_99ef.TextEditingDeltaInsertion> {
  RTManagedTextEditingDeltaInsertion(
      {required _a643.TextRange composing,
      required _fac9.int insertionOffset,
      required _fac9.String oldText,
      required _7986.TextSelection selection,
      required _fac9.String textInserted,
      required this.table,
      required this.hydroState})
      : super(
            composing: composing,
            insertionOffset: insertionOffset,
            oldText: oldText,
            selection: selection,
            textInserted: textInserted) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['textInserted'] = _36c2.maybeBoxObject(
        object: this.textInserted,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['insertionOffset'] = _36c2.maybeBoxObject(
        object: this.insertionOffset,
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

  _99ef.TextEditingDeltaInsertion unwrap() => this;
  _99ef.TextEditingDeltaInsertion get vmObject => this;
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

void loadTextEditingDeltaInsertion(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textEditingDeltaInsertion'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextEditingDeltaInsertion(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          composing:
              _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['composing']
                      : null,
                  parentState: hydroState),
          insertionOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['insertionOffset']
              : null,
          oldText: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldText']
              : null,
          selection: _36c2
              .maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['selection']
                      : null,
                  parentState: hydroState),
          textInserted: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['textInserted']
              : null)
    ];
  });
  _36c2.registerBoxer<_99ef.TextEditingDeltaInsertion>(boxer: (
      {required _99ef.TextEditingDeltaInsertion vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextEditingDeltaInsertion(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
