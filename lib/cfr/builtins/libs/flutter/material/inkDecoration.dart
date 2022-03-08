import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/ink_decoration.dart' as _8e1e;
import 'package:flutter/src/material/material.dart' as _e5b9;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInkDecoration extends _36c2.VMManagedBox<_8e1e.InkDecoration> {
  VMManagedInkDecoration(
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

    table['getDecoration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.decoration;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_13a5.Decoration?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setDecoration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.decoration =
          (_36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_61fa.ImageConfiguration>(
            object: vmObject.configuration,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.configuration = (_36c2.maybeUnBoxAndBuildArgument<
          _61fa.ImageConfiguration,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['paintFeature'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paintFeature(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e5b9.MaterialInkController>(
            object: vmObject.controller,
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

  final _8e1e.InkDecoration vmObject;
}

class RTManagedInkDecoration extends _8e1e.InkDecoration
    implements _36c2.Box<_8e1e.InkDecoration> {
  RTManagedInkDecoration(
      {void Function()? onRemoved,
      required _61fa.ImageConfiguration configuration,
      required _e5b9.MaterialInkController controller,
      _13a5.Decoration? decoration,
      required _be2e.RenderBox referenceBox,
      required this.table,
      required this.hydroState})
      : super(
            onRemoved: onRemoved,
            configuration: configuration,
            controller: controller,
            decoration: decoration,
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

    table['_dart_getDecoration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.decoration];
    });
    table['_dart_setDecoration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.decoration =
          (_36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.configuration];
    });
    table['_dart_setConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.configuration = (_36c2.maybeUnBoxAndBuildArgument<
          _61fa.ImageConfiguration,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_paintFeature'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paintFeature(
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
    table['_dart_getController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.controller];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8e1e.InkDecoration unwrap() => this;
  _8e1e.InkDecoration get vmObject => this;
  @_fac9.override
  _13a5.Decoration? get decoration {
    _36c2.Closure closure = table["getDecoration"];
    return _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set decoration(value) {
    _36c2.Closure closure = table["setDecoration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _61fa.ImageConfiguration get configuration {
    _36c2.Closure closure = table["getConfiguration"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void set configuration(value) {
    _36c2.Closure closure = table["setConfiguration"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

  @_fac9.override
  _e5b9.MaterialInkController get controller {
    _36c2.Closure closure = table["getController"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e5b9.MaterialInkController, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInkDecoration(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['inkDecoration'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonRemoved = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onRemoved']
        : null;

    return [
      RTManagedInkDecoration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onRemoved: unpackedonRemoved != null
              ? () => unpackedonRemoved.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          configuration:
              _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['configuration']
                      : null,
                  parentState: hydroState),
          controller:
              _36c2.maybeUnBoxAndBuildArgument<_e5b9.MaterialInkController, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['controller']
                      : null,
                  parentState: hydroState),
          decoration: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
              parentState: hydroState),
          referenceBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['referenceBox'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_8e1e.InkDecoration>(boxer: (
      {required _8e1e.InkDecoration vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInkDecoration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
