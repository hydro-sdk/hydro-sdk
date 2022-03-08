import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMethodCodec extends _36c2.VMManagedBox<_7fbb.MethodCodec> {
  VMManagedMethodCodec(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['encodeMethodCall'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7537.ByteData>(
            object: vmObject.encodeMethodCall(_36c2.maybeUnBoxAndBuildArgument<
                _7fbb.MethodCall,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['decodeMethodCall'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7fbb.MethodCall>(
            object: vmObject.decodeMethodCall(_36c2.maybeUnBoxAndBuildArgument<
                _7537.ByteData?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['decodeEnvelope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.decodeEnvelope(
            _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['encodeSuccessEnvelope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7537.ByteData>(
            object: vmObject.encodeSuccessEnvelope(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['encodeErrorEnvelope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7537.ByteData>(
            object: vmObject.encodeErrorEnvelope(
                details: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['details']
                            : null,
                        parentState: hydroState),
                message: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['message']
                    : null,
                code: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['code']
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _7fbb.MethodCodec vmObject;
}

void loadMethodCodec(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_7fbb.MethodCodec>(boxer: (
      {required _7fbb.MethodCodec vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedMethodCodec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
