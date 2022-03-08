import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/foundation/serialization.dart' as _6ccc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWriteBuffer extends _36c2.VMManagedBox<_6ccc.WriteBuffer> {
  VMManagedWriteBuffer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['putUint8'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putUint8(luaCallerArguments[1]);
      return [];
    });
    table['putUint16'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putUint16(luaCallerArguments[1],
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['putUint32'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putUint32(luaCallerArguments[1],
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['putInt32'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putInt32(luaCallerArguments[1],
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['putInt64'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putInt64(luaCallerArguments[1],
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['putFloat64'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putFloat64(luaCallerArguments[1]?.toDouble(),
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['putUint8List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putUint8List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['putInt32List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putInt32List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Int32List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['putInt64List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putInt64List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Int64List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['putFloat32List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putFloat32List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Float32List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['putFloat64List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.putFloat64List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Float64List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['done'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7537.ByteData>(
            object: vmObject.done(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6ccc.WriteBuffer vmObject;
}

class RTManagedWriteBuffer extends _6ccc.WriteBuffer
    implements _36c2.Box<_6ccc.WriteBuffer> {
  RTManagedWriteBuffer({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_putUint8'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putUint8(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_putUint16'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putUint16(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_putUint32'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putUint32(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_putInt32'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putInt32(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_putInt64'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putInt64(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_putFloat64'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putFloat64(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          endian:
              _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['endian']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_putUint8List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putUint8List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_putInt32List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putInt32List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Int32List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_putInt64List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putInt64List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Int64List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_putFloat32List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putFloat32List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Float32List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_putFloat64List'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.putFloat64List(
          _36c2.maybeUnBoxAndBuildArgument<_7537.Float64List, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_done'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.done(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _6ccc.WriteBuffer unwrap() => this;
  _6ccc.WriteBuffer get vmObject => this;
  @_fac9.override
  void putUint8(byte) {
    _36c2.Closure closure = table["putUint8"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putUint16(value, {_7537.Endian? endian}) {
    _36c2.Closure closure = table["putUint16"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putUint32(value, {_7537.Endian? endian}) {
    _36c2.Closure closure = table["putUint32"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putInt32(value, {_7537.Endian? endian}) {
    _36c2.Closure closure = table["putInt32"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putInt64(value, {_7537.Endian? endian}) {
    _36c2.Closure closure = table["putInt64"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putFloat64(value, {_7537.Endian? endian}) {
    _36c2.Closure closure = table["putFloat64"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putUint8List(list) {
    _36c2.Closure closure = table["putUint8List"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putInt32List(list) {
    _36c2.Closure closure = table["putInt32List"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putInt64List(list) {
    _36c2.Closure closure = table["putInt64List"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putFloat32List(list) {
    _36c2.Closure closure = table["putFloat32List"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void putFloat64List(list) {
    _36c2.Closure closure = table["putFloat64List"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7537.ByteData done() {
    _36c2.Closure closure = table["done"];
    return _36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadWriteBuffer(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['writeBuffer'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedWriteBuffer(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_6ccc.WriteBuffer>(boxer: (
      {required _6ccc.WriteBuffer vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedWriteBuffer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
