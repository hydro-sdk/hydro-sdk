import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMouseCursorManager
    extends _36c2.VMManagedBox<_fd33.MouseCursorManager> {
  VMManagedMouseCursorManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['fallbackMouseCursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor>(
        object: vmObject.fallbackMouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugDeviceActiveCursor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue =
          vmObject.debugDeviceActiveCursor(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fd33.MouseCursor?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['handleDeviceCursorUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleDeviceCursorUpdate(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fd33.MouseCursor>,
                  _fd33.MouseCursor>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _fd33.MouseCursorManager vmObject;
}

class RTManagedMouseCursorManager extends _fd33.MouseCursorManager
    implements _36c2.Box<_fd33.MouseCursorManager> {
  RTManagedMouseCursorManager(_fd33.MouseCursor fallbackMouseCursor$,
      {required this.table, required this.hydroState})
      : super(
          fallbackMouseCursor$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['fallbackMouseCursor'] = _36c2.maybeBoxObject(
        object: this.fallbackMouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_debugDeviceActiveCursor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDeviceActiveCursor(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_handleDeviceCursorUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleDeviceCursorUpdate(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fd33.MouseCursor>,
                  _fd33.MouseCursor>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _fd33.MouseCursorManager unwrap() => this;
  _fd33.MouseCursorManager get vmObject => this;
  @_fac9.override
  _fd33.MouseCursor? debugDeviceActiveCursor(device) {
    _36c2.Closure closure = table["debugDeviceActiveCursor"];
    return _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void handleDeviceCursorUpdate(device, triggeringEvent, cursorCandidates) {
    _36c2.Closure closure = table["handleDeviceCursorUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMouseCursorManager(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['mouseCursorManager'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedMouseCursorManager(
          _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_fd33.MouseCursorManager>(boxer: (
      {required _fd33.MouseCursorManager vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMouseCursorManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
