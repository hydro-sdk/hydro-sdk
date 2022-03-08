import 'dart:core' as _fac9;

import 'package:flutter/src/services/keyboard_key.dart' as _e468;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;
import 'package:flutter/src/services/raw_keyboard_linux.dart' as _a336;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeyHelper extends _36c2.VMManagedBox<_a336.KeyHelper> {
  VMManagedKeyHelper(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDebugToolkit'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugToolkit,
      ];
    });
    table['getModifierSide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _94e8.KeyboardSide.values.indexWhere((x) {
          return x ==
              vmObject.getModifierSide(_36c2.maybeUnBoxEnum(
                  values: _94e8.ModifierKey.values,
                  boxedEnum: luaCallerArguments[1]));
        }),
      ];
    });
    table['isModifierPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isModifierPressed(
            _36c2.maybeUnBoxEnum(
                values: _94e8.ModifierKey.values,
                boxedEnum: luaCallerArguments[1]),
            luaCallerArguments[2],
            side: _36c2.maybeUnBoxEnum(
                values: _94e8.KeyboardSide.values,
                boxedEnum: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['side']
                    : null),
            isDown: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['isDown']
                : null,
            keyCode: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['keyCode']
                : null),
      ];
    });
    table['numpadKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.numpadKey(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e468.LogicalKeyboardKey?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['logicalKey'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.logicalKey(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e468.LogicalKeyboardKey?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getPlatformPlane'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.platformPlane,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a336.KeyHelper vmObject;
}

void loadKeyHelper(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_a336.KeyHelper>(boxer: (
      {required _a336.KeyHelper vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedKeyHelper(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
