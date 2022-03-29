import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/material.dart' as _e5b9;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInkFeature extends _36c2.VMManagedBox<_e5b9.InkFeature> {
  VMManagedInkFeature(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['referenceBox'] = _36c2.maybeBoxObject<_be2e.RenderBox>(
        object: vmObject.referenceBox,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e5b9.MaterialInkController>(
            object: vmObject.controller,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
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

  final _e5b9.InkFeature vmObject;
}

class RTManagedInkFeature extends _e5b9.InkFeature
    implements _36c2.Box<_e5b9.InkFeature> {
  RTManagedInkFeature(
      {void Function()? onRemoved,
      required _e5b9.MaterialInkController controller,
      required _be2e.RenderBox referenceBox,
      required this.table,
      required this.hydroState})
      : super(
            onRemoved: onRemoved,
            controller: controller,
            referenceBox: referenceBox) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['referenceBox'] = _36c2.maybeBoxObject(
        object: this.referenceBox,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.controller];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_paintFeature'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      paintFeature(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _e5b9.InkFeature unwrap() => this;
  _e5b9.InkFeature get vmObject => this;
  @_fac9.override
  _e5b9.MaterialInkController get controller {
    _36c2.Closure closure = table["getController"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e5b9.MaterialInkController, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void paintFeature(canvas, transform) {
    _36c2.Closure closure = table["paintFeature"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInkFeature(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['inkFeature'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonRemoved = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onRemoved']
        : null;

    return [
      RTManagedInkFeature(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onRemoved: unpackedonRemoved != null
              ? () => unpackedonRemoved.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null,
          controller: _36c2.maybeUnBoxAndBuildArgument<
                  _e5b9.MaterialInkController, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['controller']
                  : null,
              parentState: hydroState),
          referenceBox:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['referenceBox']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_e5b9.InkFeature>(boxer: (
      {required _e5b9.InkFeature vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInkFeature(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
