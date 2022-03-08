import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMouseCursorSession
    extends _36c2.VMManagedBox<_fd33.MouseCursorSession> {
  VMManagedMouseCursorSession(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['cursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor>(
        object: vmObject.cursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['device'] = vmObject.device;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _fd33.MouseCursorSession vmObject;
}

void loadMouseCursorSession(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_fd33.MouseCursorSession>(boxer: (
      {required _fd33.MouseCursorSession vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMouseCursorSession(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
