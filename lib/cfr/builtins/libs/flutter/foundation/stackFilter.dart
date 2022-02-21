import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/stack_frame.dart' as _0e62;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStackFilter extends _36c2.VMManagedBox<_5dcc.StackFilter> {
  VMManagedStackFilter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['filter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.filter(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_0e62.StackFrame>,
              _0e62.StackFrame>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String?>,
              _fac9.String?>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _5dcc.StackFilter vmObject;
}

void loadStackFilter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_5dcc.StackFilter>(boxer: (
      {required _5dcc.StackFilter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedStackFilter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
