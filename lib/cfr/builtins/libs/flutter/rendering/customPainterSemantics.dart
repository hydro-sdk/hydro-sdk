import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/rendering/custom_paint.dart' as _93cf;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCustomPainterSemantics
    extends _36c2.VMManagedBox<_93cf.CustomPainterSemantics> {
  VMManagedCustomPainterSemantics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rect'] = _36c2.maybeBoxObject<_a643.Rect>(
        object: vmObject.rect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['transform'] = _36c2.maybeBoxObject<_db98.Matrix4?>(
        object: vmObject.transform,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['properties'] = _36c2.maybeBoxObject<_4c98.SemanticsProperties>(
        object: vmObject.properties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tags'] = _36c2.maybeBoxObject<_fac9.Set?>(
        object: vmObject.tags,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _93cf.CustomPainterSemantics vmObject;
}

class RTManagedCustomPainterSemantics extends _93cf.CustomPainterSemantics
    implements _36c2.Box<_93cf.CustomPainterSemantics> {
  RTManagedCustomPainterSemantics(
      {_ab4a.Key? key,
      _fac9.Set<_4c98.SemanticsTag>? tags,
      _db98.Matrix4? transform,
      required _4c98.SemanticsProperties properties,
      required _a643.Rect rect,
      required this.table,
      required this.hydroState})
      : super(
            key: key,
            tags: tags,
            transform: transform,
            properties: properties,
            rect: rect) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['rect'] = _36c2.maybeBoxObject(
        object: this.rect, hydroState: hydroState, table: _36c2.HydroTable());
    table['transform'] = _36c2.maybeBoxObject(
        object: this.transform,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['properties'] = _36c2.maybeBoxObject(
        object: this.properties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tags'] = _36c2.maybeBoxObject(
        object: this.tags, hydroState: hydroState, table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _93cf.CustomPainterSemantics unwrap() => this;
  _93cf.CustomPainterSemantics get vmObject => this;
}

void loadCustomPainterSemantics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['customPainterSemantics'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCustomPainterSemantics(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          tags:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_4c98.SemanticsTag>?, _4c98.SemanticsTag>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['tags']
                      : null,
                  parentState: hydroState),
          transform: _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transform'] : null,
              parentState: hydroState),
          properties: _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsProperties, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['properties'] : null, parentState: hydroState),
          rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_93cf.CustomPainterSemantics>(boxer: (
      {required _93cf.CustomPainterSemantics vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCustomPainterSemantics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
