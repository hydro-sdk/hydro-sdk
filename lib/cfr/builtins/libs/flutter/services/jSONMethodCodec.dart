import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/message_codecs.dart' as _860d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedJSONMethodCodec
    extends _36c2.VMManagedBox<_860d.JSONMethodCodec> {
  VMManagedJSONMethodCodec(
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

  final _860d.JSONMethodCodec vmObject;
}

class RTManagedJSONMethodCodec extends _860d.JSONMethodCodec
    implements _36c2.Box<_860d.JSONMethodCodec> {
  RTManagedJSONMethodCodec({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_encodeMethodCall'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.encodeMethodCall(_36c2.maybeUnBoxAndBuildArgument<
                _7fbb.MethodCall,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_decodeMethodCall'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.decodeMethodCall(_36c2.maybeUnBoxAndBuildArgument<
                _7537.ByteData?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_decodeEnvelope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.decodeEnvelope(
            _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_encodeSuccessEnvelope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.encodeSuccessEnvelope(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_encodeErrorEnvelope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.encodeErrorEnvelope(
                details: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['details'] : null,
                        parentState: hydroState),
                message: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['message']
                            : null,
                        parentState: hydroState),
                code: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['code'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _860d.JSONMethodCodec unwrap() => this;
  _860d.JSONMethodCodec get vmObject => this;
  @_fac9.override
  _7537.ByteData encodeMethodCall(methodCall) {
    _36c2.Closure closure = table["encodeMethodCall"];
    return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7fbb.MethodCall decodeMethodCall(methodCall) {
    _36c2.Closure closure = table["decodeMethodCall"];
    return _36c2.maybeUnBoxAndBuildArgument<_7fbb.MethodCall, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.dynamic decodeEnvelope(envelope) {
    _36c2.Closure closure = table["decodeEnvelope"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7537.ByteData encodeSuccessEnvelope(result) {
    _36c2.Closure closure = table["encodeSuccessEnvelope"];
    return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7537.ByteData encodeErrorEnvelope(
      {_fac9.Object? details,
      _fac9.String? message,
      required _fac9.String code}) {
    _36c2.Closure closure = table["encodeErrorEnvelope"];
    return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadJSONMethodCodec(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['jSONMethodCodec'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedJSONMethodCodec(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_860d.JSONMethodCodec>(boxer: (
      {required _860d.JSONMethodCodec vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedJSONMethodCodec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
