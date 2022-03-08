import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/sliver.dart' as _021d;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverHitTestResult
    extends _36c2.VMManagedBox<_021d.SliverHitTestResult> {
  VMManagedSliverHitTestResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['addWithAxisOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        vmObject.addWithAxisOffset(
            crossAxisOffset: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['crossAxisOffset']
                : null?.toDouble(),
            crossAxisPosition: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['crossAxisPosition']
                : null?.toDouble(),
            hitTest: (result,
                    {required crossAxisPosition, required mainAxisPosition}) =>
                unpackedhitTest.dispatch(
                  [
                    luaCallerArguments[0],
                    result,
                    _36c2.HydroTable.fromMap({
                      "crossAxisPosition": crossAxisPosition,
                      "mainAxisPosition": mainAxisPosition
                    }),
                  ],
                  parentState: hydroState,
                )[0],
            mainAxisOffset: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['mainAxisOffset']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['mainAxisPosition']
                : null?.toDouble(),
            paintOffset:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['paintOffset']
                        : null,
                    parentState: hydroState)),
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

  final _021d.SliverHitTestResult vmObject;
}

class RTManagedSliverHitTestResult extends _021d.SliverHitTestResult
    implements _36c2.Box<_021d.SliverHitTestResult> {
  RTManagedSliverHitTestResult({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_addWithAxisOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['hitTest']
          : null;

      return [
        _36c2.maybeBoxObject(
            object: super.addWithAxisOffset(
                crossAxisOffset:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['crossAxisOffset'] : null,
                        parentState: hydroState),
                crossAxisPosition:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['crossAxisPosition']
                            : null,
                        parentState: hydroState),
                hitTest: (result,
                        {required crossAxisPosition,
                        required mainAxisPosition}) =>
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        unpackedhitTest.dispatch(
                          [
                            luaCallerArguments[0],
                            result,
                            _36c2.HydroTable.fromMap({
                              "crossAxisPosition": _36c2.maybeBoxObject(
                                  object: crossAxisPosition,
                                  hydroState: hydroState,
                                  table: _36c2.HydroTable()),
                              "mainAxisPosition": _36c2.maybeBoxObject(
                                  object: mainAxisPosition,
                                  hydroState: hydroState,
                                  table: _36c2.HydroTable())
                            }),
                          ],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState),
                mainAxisOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisOffset'] : null,
                    parentState: hydroState),
                mainAxisPosition: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisPosition'] : null, parentState: hydroState),
                paintOffset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['paintOffset'] : null, parentState: hydroState)),
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

  _021d.SliverHitTestResult unwrap() => this;
  _021d.SliverHitTestResult get vmObject => this;
  @_fac9.override
  _fac9.bool addWithAxisOffset(
      {required _fac9.double crossAxisOffset,
      required _fac9.double crossAxisPosition,
      required _fac9.bool Function(_021d.SliverHitTestResult result,
              {required _fac9.double crossAxisPosition,
              required _fac9.double mainAxisPosition})
          hitTest,
      required _fac9.double mainAxisOffset,
      required _fac9.double mainAxisPosition,
      required _a643.Offset? paintOffset}) {
    _36c2.Closure closure = table["addWithAxisOffset"];
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

void loadSliverHitTestResult(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverHitTestResult'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverHitTestResult(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_021d.SliverHitTestResult>(boxer: (
      {required _021d.SliverHitTestResult vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverHitTestResult(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
