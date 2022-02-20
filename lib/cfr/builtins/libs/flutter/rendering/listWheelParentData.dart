import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/list_wheel_viewport.dart' as _5bcb;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListWheelParentData
    extends _36c2.VMManagedBox<_5bcb.ListWheelParentData> {
  VMManagedListWheelParentData(
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
    table['offset'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.offset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  final _5bcb.ListWheelParentData vmObject;
}

class RTManagedListWheelParentData extends _5bcb.ListWheelParentData
    implements _36c2.Box<_5bcb.ListWheelParentData> {
  RTManagedListWheelParentData({required this.table, required this.hydroState})
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
    table['offset'] = _36c2.maybeBoxObject(
        object: offset, hydroState: hydroState, table: _36c2.HydroTable());
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

  _5bcb.ListWheelParentData unwrap() => this;
  _5bcb.ListWheelParentData get vmObject => this;
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

void loadListWheelParentData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['listWheelParentData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedListWheelParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_5bcb.ListWheelParentData>(boxer: (
      {required _5bcb.ListWheelParentData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedListWheelParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
