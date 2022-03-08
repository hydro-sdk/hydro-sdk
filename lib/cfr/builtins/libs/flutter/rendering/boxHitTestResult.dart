import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBoxHitTestResult
    extends _36c2.VMManagedBox<_be2e.BoxHitTestResult> {
  VMManagedBoxHitTestResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addWithPaintTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithPaintTransform(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['position']
                        : null,
                    parentState: hydroState),
            transform:
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['transform']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['addWithPaintOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithPaintOffset(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            offset: _36c2
                .maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['offset']
                        : null,
                    parentState: hydroState),
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['position']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['addWithRawTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithRawTransform(
            hitTest: (result, position) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result, position],
                  parentState: hydroState,
                )[0],
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['position']
                        : null,
                    parentState: hydroState),
            transform:
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['transform']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['addWithOutOfBandPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;
      return [
        vmObject.addWithOutOfBandPosition(
            paintOffset:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['paintOffset']
                        : null,
                    parentState: hydroState),
            paintTransform:
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['paintTransform']
                        : null,
                    parentState: hydroState),
            rawTransform:
                _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rawTransform'] : null,
                    parentState: hydroState),
            hitTest: (result) => unpackedhitTest.dispatch(
                  [luaCallerArguments[0], result],
                  parentState: hydroState,
                )[0]),
      ];
    });
    table['add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.add(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.path,
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _be2e.BoxHitTestResult vmObject;
}

class RTManagedBoxHitTestResult extends _be2e.BoxHitTestResult
    implements _36c2.Box<_be2e.BoxHitTestResult> {
  RTManagedBoxHitTestResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addWithPaintTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        _36c2.maybeBoxObject(
            object: super.addWithPaintTransform(
                hitTest: (result, position) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedhitTest.dispatch(
                          [luaCallerArguments[0], result, position],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                position: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['position']
                            : null,
                        parentState: hydroState),
                transform: _36c2
                    .maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['transform']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addWithPaintOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        _36c2.maybeBoxObject(
            object: super.addWithPaintOffset(
                hitTest: (result, position) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedhitTest.dispatch(
                          [luaCallerArguments[0], result, position],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                offset: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['offset']
                            : null,
                        parentState: hydroState),
                position: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['position']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addWithRawTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        _36c2.maybeBoxObject(
            object: super.addWithRawTransform(
                hitTest: (result, position) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedhitTest.dispatch(
                          [luaCallerArguments[0], result, position],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                position: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['position']
                            : null,
                        parentState: hydroState),
                transform: _36c2
                    .maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['transform']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addWithOutOfBandPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.addWithOutOfBandPosition(
                paintOffset:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['paintOffset']
                            : null,
                        parentState: hydroState),
                paintTransform:
                    _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['paintTransform']
                            : null,
                        parentState: hydroState),
                rawTransform: _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rawTransform'] : null,
                    parentState: hydroState),
                hitTest: (result) => _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    unpackedhitTest.dispatch(
                      [luaCallerArguments[0], result],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.add(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_pushTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.pushTransform(
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_pushOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.pushOffset(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_popTransform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.popTransform();
      return [];
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
    table['_dart_getPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.path];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _be2e.BoxHitTestResult unwrap() => this;
  _be2e.BoxHitTestResult get vmObject => this;
  @_fac9.override
  _fac9.bool addWithPaintTransform(
      {required _fac9.bool Function(
              _be2e.BoxHitTestResult result, _a643.Offset position)
          hitTest,
      required _a643.Offset position,
      required _db98.Matrix4? transform}) {
    _36c2.Closure closure = table["addWithPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool addWithPaintOffset(
      {required _fac9.bool Function(
              _be2e.BoxHitTestResult result, _a643.Offset position)
          hitTest,
      required _a643.Offset? offset,
      required _a643.Offset position}) {
    _36c2.Closure closure = table["addWithPaintOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool addWithRawTransform(
      {required _fac9.bool Function(
              _be2e.BoxHitTestResult result, _a643.Offset position)
          hitTest,
      required _a643.Offset position,
      required _db98.Matrix4? transform}) {
    _36c2.Closure closure = table["addWithRawTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool addWithOutOfBandPosition(
      {_a643.Offset? paintOffset,
      _db98.Matrix4? paintTransform,
      _db98.Matrix4? rawTransform,
      required _fac9.bool Function(_be2e.BoxHitTestResult result) hitTest}) {
    _36c2.Closure closure = table["addWithOutOfBandPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void add(entry) {
    _36c2.Closure closure = table["add"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void pushTransform(transform) {
    _36c2.Closure closure = table["pushTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void pushOffset(offset) {
    _36c2.Closure closure = table["pushOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void popTransform() {
    _36c2.Closure closure = table["popTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Iterable<_baac.HitTestEntry> get path {
    _36c2.Closure closure = table["getPath"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_baac.HitTestEntry>,
            _baac.HitTestEntry>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBoxHitTestResult(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['boxHitTestResult'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedBoxHitTestResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_be2e.BoxHitTestResult>(boxer: (
      {required _be2e.BoxHitTestResult vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBoxHitTestResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
