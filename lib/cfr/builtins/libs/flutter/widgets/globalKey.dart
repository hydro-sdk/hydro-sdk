import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedGlobalKey extends _36c2
    .VMManagedBox<_e2dc.GlobalKey<_e2dc.State<_e2dc.StatefulWidget>>> {
  VMManagedGlobalKey(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getCurrentContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentContext;
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
    table['getCurrentWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentWidget;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Widget?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getCurrentState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentState;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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

  final _e2dc.GlobalKey<_e2dc.State<_e2dc.StatefulWidget>> vmObject;
}

void loadGlobalKey(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['globalKey'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_e2dc.GlobalKey>(
          object: _e2dc.GlobalKey(
              debugLabel: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['debugLabel']
                  : null),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  _36c2.registerBoxer<_e2dc.GlobalKey>(boxer: (
      {required _e2dc.GlobalKey vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedGlobalKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
