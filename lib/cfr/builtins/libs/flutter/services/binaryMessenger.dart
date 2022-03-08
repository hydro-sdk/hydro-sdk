import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/binary_messenger.dart' as _71d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBinaryMessenger
    extends _36c2.VMManagedBox<_71d1.BinaryMessenger> {
  VMManagedBinaryMessenger(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['handlePlatformMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedcallback = luaCallerArguments[3];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.handlePlatformMessage(
                luaCallerArguments[1],
                _36c2
                    .maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
                        luaCallerArguments[2],
                        parentState: hydroState),
                unpackedcallback != null
                    ? (data) => unpackedcallback.dispatch(
                          [luaCallerArguments[0], data],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['send'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.send(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7de1.Future?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setMessageHandler'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedhandler = luaCallerArguments[2];
      vmObject.setMessageHandler(
          luaCallerArguments[1],
          unpackedhandler != null
              ? (message) => _36c2.maybeUnBoxAndBuildArgument<
                      _7de1.Future<_7537.ByteData?>?, _7537.ByteData?>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedhandler.dispatch(
                      [luaCallerArguments[0], message],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState)
              : null);
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _71d1.BinaryMessenger vmObject;
}

void loadBinaryMessenger(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_71d1.BinaryMessenger>(boxer: (
      {required _71d1.BinaryMessenger vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBinaryMessenger(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
