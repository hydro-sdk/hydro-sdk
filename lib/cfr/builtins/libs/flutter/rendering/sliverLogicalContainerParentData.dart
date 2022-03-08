import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverLogicalContainerParentData
    extends _36c2.VMManagedBox<_021d.SliverLogicalContainerParentData> {
  VMManagedSliverLogicalContainerParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['previousSibling'] = _36c2.maybeBoxObject<_021d.RenderSliver?>(
        object: vmObject.previousSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['nextSibling'] = _36c2.maybeBoxObject<_021d.RenderSliver?>(
        object: vmObject.nextSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['layoutOffset'] = vmObject.layoutOffset;
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
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

  final _021d.SliverLogicalContainerParentData vmObject;
}

class RTManagedSliverLogicalContainerParentData
    extends _021d.SliverLogicalContainerParentData
    implements _36c2.Box<_021d.SliverLogicalContainerParentData> {
  RTManagedSliverLogicalContainerParentData(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['previousSibling'] = _36c2.maybeBoxObject(
        object: previousSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['nextSibling'] = _36c2.maybeBoxObject(
        object: nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
    table['layoutOffset'] = _36c2.maybeBoxObject(
        object: layoutOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.detach();
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _021d.SliverLogicalContainerParentData unwrap() => this;
  _021d.SliverLogicalContainerParentData get vmObject => this;
  @_fac9.override
  void detach() {
    super.detach();
    _36c2.Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverLogicalContainerParentData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverLogicalContainerParentData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverLogicalContainerParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_021d.SliverLogicalContainerParentData>(boxer: (
      {required _021d.SliverLogicalContainerParentData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverLogicalContainerParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
