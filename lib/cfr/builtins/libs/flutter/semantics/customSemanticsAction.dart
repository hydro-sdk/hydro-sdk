import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/semantics/semantics.dart' as _4c98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCustomSemanticsAction
    extends _36c2.VMManagedBox<_4c98.CustomSemanticsAction> {
  VMManagedCustomSemanticsAction(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['label'] = vmObject.label;
    table['hint'] = vmObject.hint;
    table['action'] = _36c2.maybeBoxObject<_a643.SemanticsAction?>(
        object: vmObject.action,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4c98.CustomSemanticsAction vmObject;
}

class RTManagedCustomSemanticsAction extends _4c98.CustomSemanticsAction
    implements _36c2.Box<_4c98.CustomSemanticsAction> {
  RTManagedCustomSemanticsAction(
      {required _fac9.String label,
      required this.table,
      required this.hydroState})
      : super(label: label) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['label'] = _36c2.maybeBoxObject(
        object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
    table['hint'] = _36c2.maybeBoxObject(
        object: hint, hydroState: hydroState, table: _36c2.HydroTable());
    table['action'] = _36c2.maybeBoxObject(
        object: action, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _4c98.CustomSemanticsAction unwrap() => this;
  _4c98.CustomSemanticsAction get vmObject => this;
  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCustomSemanticsAction(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['customSemanticsAction'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCustomSemanticsAction(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          label: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['label']
              : null)
    ];
  });
  table['customSemanticsActionGetIdentifier'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _4c98.CustomSemanticsAction.getIdentifier(
          _36c2.maybeUnBoxAndBuildArgument<_4c98.CustomSemanticsAction,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
    ];
  });
  table['customSemanticsActionGetAction'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue =
        _4c98.CustomSemanticsAction.getAction(luaCallerArguments[1]);
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_4c98.CustomSemanticsAction?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_4c98.CustomSemanticsAction>(boxer: (
      {required _4c98.CustomSemanticsAction vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCustomSemanticsAction(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
