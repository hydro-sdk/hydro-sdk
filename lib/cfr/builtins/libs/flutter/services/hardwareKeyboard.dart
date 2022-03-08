import 'dart:core' as _fac9;

import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/keyboard_key.dart' as _e468;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedHardwareKeyboard
    extends _36c2.VMManagedBox<_9e29.HardwareKeyboard> {
  VMManagedHardwareKeyboard(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPhysicalKeysPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Set>(
            object: vmObject.physicalKeysPressed,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getLogicalKeysPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Set>(
            object: vmObject.logicalKeysPressed,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['lookUpLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lookUpLayout(_36c2
          .maybeUnBoxAndBuildArgument<_e468.PhysicalKeyboardKey, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
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
    table['getLockModesEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Set>(
            object: vmObject.lockModesEnabled,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['addHandler'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhandler = luaCallerArguments[1];
      vmObject.addHandler((event) => unpackedhandler.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['removeHandler'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhandler = luaCallerArguments[1];
      vmObject.removeHandler((event) => unpackedhandler.dispatch(
            [luaCallerArguments[0], event],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['handleKeyEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.handleKeyEvent(
            _36c2.maybeUnBoxAndBuildArgument<_9e29.KeyEvent, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9e29.HardwareKeyboard vmObject;
}

class RTManagedHardwareKeyboard extends _9e29.HardwareKeyboard
    implements _36c2.Box<_9e29.HardwareKeyboard> {
  RTManagedHardwareKeyboard({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getPhysicalKeysPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.physicalKeysPressed];
    });
    table['_dart_getLogicalKeysPressed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.logicalKeysPressed];
    });
    table['_dart_lookUpLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.lookUpLayout(_36c2.maybeUnBoxAndBuildArgument<
                _e468.PhysicalKeyboardKey,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLockModesEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.lockModesEnabled];
    });
    table['_dart_addHandler'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhandler = luaCallerArguments[1];
      super.addHandler((event) =>
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              unpackedhandler.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeHandler'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhandler = luaCallerArguments[1];
      super.removeHandler((event) =>
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              unpackedhandler.dispatch(
                [luaCallerArguments[0], event],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleKeyEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.handleKeyEvent(
                _36c2.maybeUnBoxAndBuildArgument<_9e29.KeyEvent, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _9e29.HardwareKeyboard unwrap() => this;
  _9e29.HardwareKeyboard get vmObject => this;
  @_fac9.override
  _fac9.Set<_e468.PhysicalKeyboardKey> get physicalKeysPressed {
    _36c2.Closure closure = table["getPhysicalKeysPressed"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Set<_e468.PhysicalKeyboardKey>, _e468.PhysicalKeyboardKey>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Set<_e468.LogicalKeyboardKey> get logicalKeysPressed {
    _36c2.Closure closure = table["getLogicalKeysPressed"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_e468.LogicalKeyboardKey>,
            _e468.LogicalKeyboardKey>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e468.LogicalKeyboardKey? lookUpLayout(physicalKey) {
    _36c2.Closure closure = table["lookUpLayout"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e468.LogicalKeyboardKey?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.Set<_9e29.KeyboardLockMode> get lockModesEnabled {
    _36c2.Closure closure = table["getLockModesEnabled"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_9e29.KeyboardLockMode>,
            _9e29.KeyboardLockMode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void addHandler(handler) {
    _36c2.Closure closure = table["addHandler"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeHandler(handler) {
    _36c2.Closure closure = table["removeHandler"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool handleKeyEvent(event) {
    _36c2.Closure closure = table["handleKeyEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clearState() {
    _36c2.Closure closure = table["clearState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadHardwareKeyboard(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['hardwareKeyboard'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedHardwareKeyboard(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['hardwareKeyboardInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9e29.HardwareKeyboard>(
          object: _9e29.HardwareKeyboard.instance,
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_9e29.HardwareKeyboard>(boxer: (
      {required _9e29.HardwareKeyboard vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedHardwareKeyboard(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
