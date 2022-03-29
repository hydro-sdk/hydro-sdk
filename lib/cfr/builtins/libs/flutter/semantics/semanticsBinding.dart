import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/semantics/binding.dart' as _b53a;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsBinding
    extends _36c2.VMManagedBox<_b53a.SemanticsBinding> {
  VMManagedSemanticsBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['createSemanticsUpdateBuilder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.SemanticsUpdateBuilder>(
            object: vmObject.createSemanticsUpdateBuilder(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAccessibilityFeatures'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.AccessibilityFeatures>(
            object: vmObject.accessibilityFeatures,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDisableAnimations'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.disableAnimations,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b53a.SemanticsBinding vmObject;
}

void loadSemanticsBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['semanticsBindingInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _b53a.SemanticsBinding.instance;
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_b53a.SemanticsBinding?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_b53a.SemanticsBinding>(boxer: (
      {required _b53a.SemanticsBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
