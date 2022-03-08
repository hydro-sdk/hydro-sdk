import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/services/message_codec.dart' as _7fbb;
import 'package:flutter/src/services/message_codecs.dart' as _860d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStringCodec extends _36c2.VMManagedBox<_860d.StringCodec> {
  VMManagedStringCodec(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['decodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.decodeMessage(
          _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['encodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.encodeMessage(luaCallerArguments[1]);
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _860d.StringCodec vmObject;
}

class RTManagedStringCodec extends _860d.StringCodec
    implements _36c2.Box<_860d.StringCodec> {
  RTManagedStringCodec({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_decodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.decodeMessage(_36c2.maybeUnBoxAndBuildArgument<
                _7537.ByteData?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_encodeMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.encodeMessage(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _860d.StringCodec unwrap() => this;
  _860d.StringCodec get vmObject => this;
  @_fac9.override
  _fac9.String? decodeMessage(message) {
    _36c2.Closure closure = table["decodeMessage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7537.ByteData? encodeMessage(message) {
    _36c2.Closure closure = table["encodeMessage"];
    return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadStringCodec(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['stringCodec'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedStringCodec(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_860d.StringCodec>(boxer: (
      {required _860d.StringCodec vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedStringCodec(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
