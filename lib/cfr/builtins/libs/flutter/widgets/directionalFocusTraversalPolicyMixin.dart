import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/focus_traversal.dart' as _65d3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDirectionalFocusTraversalPolicyMixin
    extends _36c2.VMManagedBox<_65d3.DirectionalFocusTraversalPolicyMixin> {
  VMManagedDirectionalFocusTraversalPolicyMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['invalidateScopeData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.invalidateScopeData(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusScopeNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['changedScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.changedScope(
          node:
              _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['node']
                      : null,
                  parentState: hydroState),
          oldScope: _36c2
              .maybeUnBoxAndBuildArgument<_b485.FocusScopeNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['oldScope']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['findFirstFocusInDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findFirstFocusInDirection(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _65d3.TraversalDirection.values,
              boxedEnum: luaCallerArguments[2]));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b485.FocusNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['inDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.inDirection(
            _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _65d3.TraversalDirection.values,
                boxedEnum: luaCallerArguments[2])),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _65d3.DirectionalFocusTraversalPolicyMixin vmObject;
}

void loadDirectionalFocusTraversalPolicyMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_65d3.DirectionalFocusTraversalPolicyMixin>(boxer: (
      {required _65d3.DirectionalFocusTraversalPolicyMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDirectionalFocusTraversalPolicyMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
