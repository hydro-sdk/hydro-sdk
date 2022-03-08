import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRoundRangeSliderThumbShape
    extends _36c2.VMManagedBox<_4581.RoundRangeSliderThumbShape> {
  VMManagedRoundRangeSliderThumbShape(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['enabledThumbRadius'] = vmObject.enabledThumbRadius;
    table['disabledThumbRadius'] = vmObject.disabledThumbRadius;
    table['elevation'] = vmObject.elevation;
    table['pressedElevation'] = vmObject.pressedElevation;
    table['getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.getPreferredSize(
                luaCallerArguments[1], luaCallerArguments[2]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          isDiscrete: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isDiscrete']
              : null,
          isEnabled: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isEnabled']
              : null,
          isOnTop: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isOnTop']
              : null,
          isPressed: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isPressed']
              : null,
          textDirection: _36c2.maybeUnBoxEnum(
              values: _a643.TextDirection.values,
              boxedEnum: luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['textDirection']
                  : null),
          thumb: _36c2.maybeUnBoxEnum(
              values: _4581.Thumb.values,
              boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['thumb'] : null),
          activationAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['activationAnimation'] : null, parentState: hydroState),
          enableAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState));
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

  final _4581.RoundRangeSliderThumbShape vmObject;
}

class RTManagedRoundRangeSliderThumbShape
    extends _4581.RoundRangeSliderThumbShape
    implements _36c2.Box<_4581.RoundRangeSliderThumbShape> {
  RTManagedRoundRangeSliderThumbShape(
      {_fac9.double? disabledThumbRadius,
      required _fac9.double elevation,
      required _fac9.double enabledThumbRadius,
      required _fac9.double pressedElevation,
      required this.table,
      required this.hydroState})
      : super(
            disabledThumbRadius: disabledThumbRadius,
            elevation: elevation,
            enabledThumbRadius: enabledThumbRadius,
            pressedElevation: pressedElevation) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['enabledThumbRadius'] = _36c2.maybeBoxObject(
        object: this.enabledThumbRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledThumbRadius'] = _36c2.maybeBoxObject(
        object: this.disabledThumbRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressedElevation'] = _36c2.maybeBoxObject(
        object: this.pressedElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getPreferredSize(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          isDiscrete:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isDiscrete'] : null,
                  parentState: hydroState),
          isEnabled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isEnabled'] : null,
              parentState: hydroState),
          isOnTop: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isOnTop'] : null, parentState: hydroState),
          isPressed: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isPressed'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null),
          thumb: _36c2.maybeUnBoxEnum(values: _4581.Thumb.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['thumb'] : null),
          activationAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['activationAnimation'] : null, parentState: hydroState),
          enableAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState));
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

  _4581.RoundRangeSliderThumbShape unwrap() => this;
  _4581.RoundRangeSliderThumbShape get vmObject => this;
  @_fac9.override
  _a643.Size getPreferredSize(isEnabled, isDiscrete) {
    _36c2.Closure closure = table["getPreferredSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void paint(context, center,
      {_fac9.bool isDiscrete = false,
      _fac9.bool isEnabled = false,
      _fac9.bool? isOnTop,
      _fac9.bool? isPressed,
      _a643.TextDirection? textDirection,
      _4581.Thumb? thumb,
      required _86ca.Animation activationAnimation,
      required _86ca.Animation enableAnimation,
      required _4581.SliderThemeData sliderTheme}) {
    _36c2.Closure closure = table["paint"];
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

void loadRoundRangeSliderThumbShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['roundRangeSliderThumbShape'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRoundRangeSliderThumbShape(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          disabledThumbRadius: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['disabledThumbRadius']
              : null?.toDouble(),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          enabledThumbRadius: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enabledThumbRadius']
              : null?.toDouble(),
          pressedElevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['pressedElevation']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_4581.RoundRangeSliderThumbShape>(boxer: (
      {required _4581.RoundRangeSliderThumbShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRoundRangeSliderThumbShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
