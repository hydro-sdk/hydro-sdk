import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/stack_frame.dart' as _0e62;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPartialStackFrame
    extends _36c2.VMManagedBox<_5dcc.PartialStackFrame> {
  VMManagedPartialStackFrame(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['package'] = _36c2.maybeBoxObject<_fac9.Pattern>(
        object: vmObject.package,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['className'] = vmObject.className;
    table['method'] = vmObject.method;
    table['matches'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.matches(
            _36c2.maybeUnBoxAndBuildArgument<_0e62.StackFrame, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _5dcc.PartialStackFrame vmObject;
}

class RTManagedPartialStackFrame extends _5dcc.PartialStackFrame
    implements _36c2.Box<_5dcc.PartialStackFrame> {
  RTManagedPartialStackFrame(
      {required _fac9.String className,
      required _fac9.String method,
      required _fac9.Pattern package,
      required this.table,
      required this.hydroState})
      : super(className: className, method: method, package: package) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['package'] = _36c2.maybeBoxObject(
        object: this.package,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['className'] = _36c2.maybeBoxObject(
        object: this.className,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['method'] = _36c2.maybeBoxObject(
        object: this.method, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_matches'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.matches(_36c2.maybeUnBoxAndBuildArgument<
                _0e62.StackFrame,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _5dcc.PartialStackFrame unwrap() => this;
  _5dcc.PartialStackFrame get vmObject => this;
  @_fac9.override
  _fac9.bool matches(stackFrame) {
    _36c2.Closure closure = table["matches"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPartialStackFrame(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['partialStackFrame'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPartialStackFrame(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          className: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['className']
              : null,
          method: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['method']
              : null,
          package:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Pattern, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['package']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_5dcc.PartialStackFrame>(boxer: (
      {required _5dcc.PartialStackFrame vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPartialStackFrame(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
