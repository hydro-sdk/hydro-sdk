import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/debug.dart' as _ac58;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageSizeInfo extends _36c2.VMManagedBox<_ac58.ImageSizeInfo> {
  VMManagedImageSizeInfo(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['source'] = vmObject.source;
    table['displaySize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.displaySize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['imageSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.imageSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getDisplaySizeInBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.displaySizeInBytes,
      ];
    });
    table['getDecodedSizeInBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.decodedSizeInBytes,
      ];
    });
    table['toJson'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Map>(
            object: vmObject.toJson(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ac58.ImageSizeInfo vmObject;
}

class RTManagedImageSizeInfo extends _ac58.ImageSizeInfo
    implements _36c2.Box<_ac58.ImageSizeInfo> {
  RTManagedImageSizeInfo(
      {_fac9.String? source,
      required _a643.Size displaySize,
      required _a643.Size imageSize,
      required this.table,
      required this.hydroState})
      : super(source: source, displaySize: displaySize, imageSize: imageSize) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['source'] = _36c2.maybeBoxObject(
        object: this.source, hydroState: hydroState, table: _36c2.HydroTable());
    table['displaySize'] = _36c2.maybeBoxObject(
        object: this.displaySize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['imageSize'] = _36c2.maybeBoxObject(
        object: this.imageSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getDisplaySizeInBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.displaySizeInBytes];
    });
    table['_dart_getDecodedSizeInBytes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.decodedSizeInBytes];
    });
    table['_dart_toJson'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toJson(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ac58.ImageSizeInfo unwrap() => this;
  _ac58.ImageSizeInfo get vmObject => this;
  @_fac9.override
  _fac9.int get displaySizeInBytes {
    _36c2.Closure closure = table["getDisplaySizeInBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get decodedSizeInBytes {
    _36c2.Closure closure = table["getDecodedSizeInBytes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Map<_fac9.String, _fac9.Object?> toJson() {
    _36c2.Closure closure = table["toJson"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Map<_fac9.String, _fac9.Object?>,
            _fac9.String>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadImageSizeInfo(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['imageSizeInfo'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedImageSizeInfo(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          source: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['source']
              : null,
          displaySize: _36c2
              .maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['displaySize']
                      : null,
                  parentState: hydroState),
          imageSize:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['imageSize']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_ac58.ImageSizeInfo>(boxer: (
      {required _ac58.ImageSizeInfo vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedImageSizeInfo(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
