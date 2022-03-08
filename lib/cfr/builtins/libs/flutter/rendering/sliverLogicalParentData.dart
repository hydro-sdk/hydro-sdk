import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverLogicalParentData
    extends _36c2.VMManagedBox<_021d.SliverLogicalParentData> {
  VMManagedSliverLogicalParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['layoutOffset'] = vmObject.layoutOffset;
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

  final _021d.SliverLogicalParentData vmObject;
}

class RTManagedSliverLogicalParentData extends _021d.SliverLogicalParentData
    implements _36c2.Box<_021d.SliverLogicalParentData> {
  RTManagedSliverLogicalParentData(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['layoutOffset'] = _36c2.maybeBoxObject(
        object: layoutOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  _021d.SliverLogicalParentData unwrap() => this;
  _021d.SliverLogicalParentData get vmObject => this;
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

void loadSliverLogicalParentData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverLogicalParentData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverLogicalParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_021d.SliverLogicalParentData>(boxer: (
      {required _021d.SliverLogicalParentData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverLogicalParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
