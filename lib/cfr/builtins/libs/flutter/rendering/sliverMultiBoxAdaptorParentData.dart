import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart' as _35be;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverMultiBoxAdaptorParentData
    extends _36c2.VMManagedBox<_35be.SliverMultiBoxAdaptorParentData> {
  VMManagedSliverMultiBoxAdaptorParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['previousSibling'] = _36c2.maybeBoxObject<_be2e.RenderBox?>(
        object: vmObject.previousSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['nextSibling'] = _36c2.maybeBoxObject<_be2e.RenderBox?>(
        object: vmObject.nextSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['keepAlive'] = vmObject.keepAlive;
    table['layoutOffset'] = vmObject.layoutOffset;
    table['getKeptAlive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.keptAlive,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
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

  final _35be.SliverMultiBoxAdaptorParentData vmObject;
}

class RTManagedSliverMultiBoxAdaptorParentData
    extends _35be.SliverMultiBoxAdaptorParentData
    implements _36c2.Box<_35be.SliverMultiBoxAdaptorParentData> {
  RTManagedSliverMultiBoxAdaptorParentData(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['index'] = _36c2.maybeBoxObject(
        object: index, hydroState: hydroState, table: _36c2.HydroTable());
    table['previousSibling'] = _36c2.maybeBoxObject(
        object: previousSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['nextSibling'] = _36c2.maybeBoxObject(
        object: nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
    table['keepAlive'] = _36c2.maybeBoxObject(
        object: keepAlive, hydroState: hydroState, table: _36c2.HydroTable());
    table['layoutOffset'] = _36c2.maybeBoxObject(
        object: layoutOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getKeptAlive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.keptAlive];
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
    table['_dart_detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _35be.SliverMultiBoxAdaptorParentData unwrap() => this;
  _35be.SliverMultiBoxAdaptorParentData get vmObject => this;
  @_fac9.override
  _fac9.bool get keptAlive {
    _36c2.Closure closure = table["getKeptAlive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void detach() {
    super.detach();
    _36c2.Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverMultiBoxAdaptorParentData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverMultiBoxAdaptorParentData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverMultiBoxAdaptorParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_35be.SliverMultiBoxAdaptorParentData>(boxer: (
      {required _35be.SliverMultiBoxAdaptorParentData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverMultiBoxAdaptorParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
