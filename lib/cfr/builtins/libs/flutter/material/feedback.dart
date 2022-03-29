import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/material/feedback.dart' as _b9d0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFeedback extends _36c2.VMManagedBox<_b9d0.Feedback> {
  VMManagedFeedback(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {}

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b9d0.Feedback vmObject;
}

void loadFeedback(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['feedbackForTap'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _b9d0.Feedback.forTap(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['feedbackWrapForTap'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedcallback = luaCallerArguments[1];
    final returnValue = _b9d0.Feedback.wrapForTap(
        unpackedcallback != null
            ? () => unpackedcallback.dispatch(
                  [luaCallerArguments[0]],
                  parentState: hydroState,
                )
            : null,
        _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
            luaCallerArguments[2],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        returnValue,
      ];
    }
    return [];
  });
  table['feedbackForLongPress'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_7de1.Future>(
          object: _b9d0.Feedback.forLongPress(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['feedbackWrapForLongPress'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedcallback = luaCallerArguments[1];
    final returnValue = _b9d0.Feedback.wrapForLongPress(
        unpackedcallback != null
            ? () => unpackedcallback.dispatch(
                  [luaCallerArguments[0]],
                  parentState: hydroState,
                )
            : null,
        _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
            luaCallerArguments[2],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        returnValue,
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_b9d0.Feedback>(boxer: (
      {required _b9d0.Feedback vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFeedback(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
