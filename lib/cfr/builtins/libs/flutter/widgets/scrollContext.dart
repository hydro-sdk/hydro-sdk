import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_context.dart' as _3c93;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollContext extends _36c2.VMManagedBox<_3c93.ScrollContext> {
  VMManagedScrollContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getNotificationContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.notificationContext;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.BuildContext?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getStorageContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.BuildContext>(
            object: vmObject.storageContext,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getVsync'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e067.TickerProvider>(
            object: vmObject.vsync,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAxisDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.AxisDirection.values.indexWhere((x) {
          return x == vmObject.axisDirection;
        }),
      ];
    });
    table['setIgnorePointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setIgnorePointer(luaCallerArguments[1]);
      return [];
    });
    table['setCanDrag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setCanDrag(luaCallerArguments[1]);
      return [];
    });
    table['setSemanticsActions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setSemanticsActions(_36c2.maybeUnBoxAndBuildArgument<
              _fac9.Set<_a643.SemanticsAction>,
              _a643.SemanticsAction>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['saveOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.saveOffset(luaCallerArguments[1]?.toDouble());
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3c93.ScrollContext vmObject;
}

void loadScrollContext(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_3c93.ScrollContext>(boxer: (
      {required _3c93.ScrollContext vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
