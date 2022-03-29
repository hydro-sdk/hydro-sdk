import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/ticker_provider.dart' as _3e16;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTickerProviderStateMixin extends _36c2
    .VMManagedBox<_3e16.TickerProviderStateMixin<_e2dc.StatefulWidget>> {
  VMManagedTickerProviderStateMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['createTicker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonTick = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_e067.Ticker>(
            object: vmObject.createTicker((elapsed) => unpackedonTick.dispatch(
                  [luaCallerArguments[0], elapsed],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeDependencies();
      return [];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3e16.TickerProviderStateMixin<_e2dc.StatefulWidget> vmObject;
}

void loadTickerProviderStateMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_3e16.TickerProviderStateMixin>(boxer: (
      {required _3e16.TickerProviderStateMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTickerProviderStateMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
