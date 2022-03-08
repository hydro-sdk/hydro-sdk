import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/foundation/serialization.dart' as _6ccc;
import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/message_codecs.dart' as _860d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStandardMessageCodec
    extends _36c2.VMManagedBox<_860d.StandardMessageCodec> {
  VMManagedStandardMessageCodec(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['encodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.encodeMessage(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7537.ByteData?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['decodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.decodeMessage(
            _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['writeValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.writeValue(
          _36c2.maybeUnBoxAndBuildArgument<_6ccc.WriteBuffer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['readValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.readValue(
          _36c2.maybeUnBoxAndBuildArgument<_6ccc.ReadBuffer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Object?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['readValueOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.readValueOfType(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<_6ccc.ReadBuffer, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Object?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['writeSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.writeSize(
          _36c2.maybeUnBoxAndBuildArgument<_6ccc.WriteBuffer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['readSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.readSize(
            _36c2.maybeUnBoxAndBuildArgument<_6ccc.ReadBuffer, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _860d.StandardMessageCodec vmObject;
}

class RTManagedStandardMessageCodec extends _860d.StandardMessageCodec
    implements _36c2.Box<_860d.StandardMessageCodec> {
  RTManagedStandardMessageCodec({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_encodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.encodeMessage(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_decodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.decodeMessage(
            _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_writeValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.writeValue(
          _36c2.maybeUnBoxAndBuildArgument<_6ccc.WriteBuffer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_readValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.readValue(_36c2.maybeUnBoxAndBuildArgument<
                _6ccc.ReadBuffer,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_readValueOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.readValueOfType(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_6ccc.ReadBuffer,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_writeSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.writeSize(
          _36c2.maybeUnBoxAndBuildArgument<_6ccc.WriteBuffer, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_readSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.readSize(_36c2.maybeUnBoxAndBuildArgument<
                _6ccc.ReadBuffer,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _860d.StandardMessageCodec unwrap() => this;
  _860d.StandardMessageCodec get vmObject => this;
  @_fac9.override
  _7537.ByteData? encodeMessage(message) {
    _36c2.Closure closure = table["encodeMessage"];
    return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.dynamic decodeMessage(message) {
    _36c2.Closure closure = table["decodeMessage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void writeValue(buffer, value) {
    _36c2.Closure closure = table["writeValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Object? readValue(buffer) {
    _36c2.Closure closure = table["readValue"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Object? readValueOfType(type, buffer) {
    _36c2.Closure closure = table["readValueOfType"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void writeSize(buffer, value) {
    _36c2.Closure closure = table["writeSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int readSize(buffer) {
    _36c2.Closure closure = table["readSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadStandardMessageCodec(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['standardMessageCodec'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedStandardMessageCodec(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_860d.StandardMessageCodec>(boxer: (
      {required _860d.StandardMessageCodec vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedStandardMessageCodec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
