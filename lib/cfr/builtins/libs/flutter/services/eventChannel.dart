import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/services/binary_messenger.dart' as _71d1;
import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/platform_channel.dart' as _aebe;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedEventChannel extends _36c2.VMManagedBox<_aebe.EventChannel> {
  VMManagedEventChannel(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['name'] = vmObject.name;
    table['codec'] = _36c2.maybeBoxObject<_7fbb.MethodCodec>(
        object: vmObject.codec,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getBinaryMessenger'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_71d1.BinaryMessenger>(
            object: vmObject.binaryMessenger,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['receiveBroadcastStream'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Stream>(
            object: vmObject.receiveBroadcastStream(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _aebe.EventChannel vmObject;
}

class RTManagedEventChannel extends _aebe.EventChannel
    implements _36c2.Box<_aebe.EventChannel> {
  RTManagedEventChannel(_fac9.String name$, _7fbb.MethodCodec codec$,
      _71d1.BinaryMessenger? binaryMessenger$,
      {required this.table, required this.hydroState})
      : super(
          name$,
          codec$,
          binaryMessenger$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['name'] = _36c2.maybeBoxObject(
        object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
    table['codec'] = _36c2.maybeBoxObject(
        object: codec, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getBinaryMessenger'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.binaryMessenger];
    });
    table['_dart_receiveBroadcastStream'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.receiveBroadcastStream(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _aebe.EventChannel unwrap() => this;
  _aebe.EventChannel get vmObject => this;
  @_fac9.override
  _71d1.BinaryMessenger get binaryMessenger {
    _36c2.Closure closure = table["getBinaryMessenger"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7de1.Stream<_fac9.dynamic> receiveBroadcastStream(
      [_fac9.dynamic? arguments]) {
    _36c2.Closure closure = table["receiveBroadcastStream"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Stream<_fac9.dynamic>, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadEventChannel(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['eventChannel'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedEventChannel(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_7fbb.MethodCodec, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger?,
              _fac9.dynamic>(luaCallerArguments[3], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_aebe.EventChannel>(boxer: (
      {required _aebe.EventChannel vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedEventChannel(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
