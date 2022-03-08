import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/stack.dart' as _b1b6;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStackParentData
    extends _36c2.VMManagedBox<_b1b6.StackParentData> {
  VMManagedStackParentData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['top'] = vmObject.top;
    table['right'] = vmObject.right;
    table['bottom'] = vmObject.bottom;
    table['left'] = vmObject.left;
    table['width'] = vmObject.width;
    table['height'] = vmObject.height;
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
    table['getRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_b1b6.RelativeRect>(
            object: vmObject.rect,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rect =
          (_36c2.maybeUnBoxAndBuildArgument<_b1b6.RelativeRect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getIsPositioned'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isPositioned,
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

  final _b1b6.StackParentData vmObject;
}

class RTManagedStackParentData extends _b1b6.StackParentData
    implements _36c2.Box<_b1b6.StackParentData> {
  RTManagedStackParentData({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['top'] = _36c2.maybeBoxObject(
        object: top, hydroState: hydroState, table: _36c2.HydroTable());
    table['right'] = _36c2.maybeBoxObject(
        object: right, hydroState: hydroState, table: _36c2.HydroTable());
    table['bottom'] = _36c2.maybeBoxObject(
        object: bottom, hydroState: hydroState, table: _36c2.HydroTable());
    table['left'] = _36c2.maybeBoxObject(
        object: left, hydroState: hydroState, table: _36c2.HydroTable());
    table['width'] = _36c2.maybeBoxObject(
        object: width, hydroState: hydroState, table: _36c2.HydroTable());
    table['height'] = _36c2.maybeBoxObject(
        object: height, hydroState: hydroState, table: _36c2.HydroTable());
    table['previousSibling'] = _36c2.maybeBoxObject(
        object: previousSibling,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['nextSibling'] = _36c2.maybeBoxObject(
        object: nextSibling, hydroState: hydroState, table: _36c2.HydroTable());
    table['offset'] = _36c2.maybeBoxObject(
        object: offset, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.rect];
    });
    table['_dart_setRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.rect =
          (_36c2.maybeUnBoxAndBuildArgument<_b1b6.RelativeRect, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getIsPositioned'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isPositioned];
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

  _b1b6.StackParentData unwrap() => this;
  _b1b6.StackParentData get vmObject => this;
  @_fac9.override
  _b1b6.RelativeRect get rect {
    _36c2.Closure closure = table["getRect"];
    return _36c2.maybeUnBoxAndBuildArgument<_b1b6.RelativeRect, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set rect(value) {
    _36c2.Closure closure = table["setRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isPositioned {
    _36c2.Closure closure = table["getIsPositioned"];
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

void loadStackParentData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['stackParentData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedStackParentData(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_b1b6.StackParentData>(boxer: (
      {required _b1b6.StackParentData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedStackParentData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
