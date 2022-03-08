import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/raw_keyboard.dart' as _94e8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedKeyEventManager
    extends _36c2.VMManagedBox<_9e29.KeyEventManager> {
  VMManagedKeyEventManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['handleKeyData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.handleKeyData(
            _36c2.maybeUnBoxAndBuildArgument<_a643.KeyData, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['handleRawKeyMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.handleRawKeyMessage(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9e29.KeyEventManager vmObject;
}

class RTManagedKeyEventManager extends _9e29.KeyEventManager
    implements _36c2.Box<_9e29.KeyEventManager> {
  RTManagedKeyEventManager(
      _9e29.HardwareKeyboard _hardwareKeyboard, _94e8.RawKeyboard _rawKeyboard,
      {required this.table, required this.hydroState})
      : super(
          _hardwareKeyboard,
          _rawKeyboard,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_handleKeyData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.handleKeyData(
                _36c2.maybeUnBoxAndBuildArgument<_a643.KeyData, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_handleRawKeyMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.handleRawKeyMessage(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _9e29.KeyEventManager unwrap() => this;
  _9e29.KeyEventManager get vmObject => this;
  @_fac9.override
  _fac9.bool handleKeyData(data) {
    _36c2.Closure closure = table["handleKeyData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.Map<_fac9.String, _fac9.dynamic>> handleRawKeyMessage(
      message) {
    _36c2.Closure closure = table["handleRawKeyMessage"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _7de1.Future<_fac9.Map<_fac9.String, _fac9.dynamic>>,
            _fac9.Map<_fac9.String, _fac9.dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void clearState() {
    _36c2.Closure closure = table["clearState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadKeyEventManager(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['keyEventManager'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedKeyEventManager(
          _36c2.maybeUnBoxAndBuildArgument<_9e29.HardwareKeyboard,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_94e8.RawKeyboard, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_9e29.KeyEventManager>(boxer: (
      {required _9e29.KeyEventManager vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedKeyEventManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
