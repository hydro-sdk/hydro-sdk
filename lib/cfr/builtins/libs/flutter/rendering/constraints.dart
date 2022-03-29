import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedConstraints extends _36c2.VMManagedBox<_9742.Constraints> {
  VMManagedConstraints(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsTight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isTight,
      ];
    });
    table['getIsNormalized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isNormalized,
      ];
    });
    table['debugAssertIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedinformationCollector =
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['informationCollector']
              : null;
      return [
        vmObject.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_eaf3.DiagnosticsNode>,
                        _eaf3.DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['isAppliedConstraint']
                : null),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9742.Constraints vmObject;
}

class RTManagedConstraints extends _9742.Constraints
    implements _36c2.Box<_9742.Constraints> {
  RTManagedConstraints({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getIsTight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [isTight];
    });
    table['_dart_getIsNormalized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [isNormalized];
    });
    table['_dart_debugAssertIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedinformationCollector =
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['informationCollector']
              : null;
      return [
        _36c2.maybeBoxObject(
            object: super.debugAssertIsValid(
                informationCollector: unpackedinformationCollector != null
                    ? () => _36c2.maybeUnBoxAndBuildArgument<
                            _fac9.Iterable<_eaf3.DiagnosticsNode>,
                            _eaf3.DiagnosticsNode>(
                        unpackedinformationCollector.dispatch(
                          [luaCallerArguments[0]],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null,
                isAppliedConstraint:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['isAppliedConstraint']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _9742.Constraints unwrap() => this;
  _9742.Constraints get vmObject => this;
  @_fac9.override
  _fac9.bool get isTight {
    _36c2.Closure closure = table["getIsTight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isNormalized {
    _36c2.Closure closure = table["getIsNormalized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool debugAssertIsValid(
      {_fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector,
      _fac9.bool isAppliedConstraint = false}) {
    _36c2.Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadConstraints(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['constraints'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedConstraints(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_9742.Constraints>(boxer: (
      {required _9742.Constraints vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedConstraints(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
