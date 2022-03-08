import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRectangularSliderValueIndicatorShape
    extends _36c2.VMManagedBox<_4581.RectangularSliderValueIndicatorShape> {
  VMManagedRectangularSliderValueIndicatorShape(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.getPreferredSize(
                luaCallerArguments[1], luaCallerArguments[2],
                labelPainter: _36c2.maybeUnBoxAndBuildArgument<
                        _fe5a.TextPainter?, _fac9.dynamic>(
                    luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['labelPainter']
                        : null,
                    parentState: hydroState),
                textScaleFactor: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['textScaleFactor']
                    : null?.toDouble()),
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
          activationAnimation:
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['activationAnimation'] : null,
                  parentState: hydroState),
          enableAnimation:
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                  luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null,
                  parentState: hydroState),
          isDiscrete: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isDiscrete'] : null,
          labelPainter: _36c2.maybeUnBoxAndBuildArgument<_fe5a.TextPainter, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['labelPainter'] : null, parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sizeWithOverflow: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sizeWithOverflow'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null),
          textScaleFactor: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textScaleFactor'] : null?.toDouble(),
          value: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['value'] : null?.toDouble());
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

  final _4581.RectangularSliderValueIndicatorShape vmObject;
}

class RTManagedRectangularSliderValueIndicatorShape
    extends _4581.RectangularSliderValueIndicatorShape
    implements _36c2.Box<_4581.RectangularSliderValueIndicatorShape> {
  RTManagedRectangularSliderValueIndicatorShape(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
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
                    parentState: hydroState),
                labelPainter: _36c2.maybeUnBoxAndBuildArgument<_fe5a.TextPainter?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['labelPainter'] : null,
                    parentState: hydroState),
                textScaleFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textScaleFactor'] : null,
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
          activationAnimation:
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['activationAnimation'] : null,
                  parentState: hydroState),
          enableAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
              luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null,
              parentState: hydroState),
          isDiscrete: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isDiscrete'] : null, parentState: hydroState),
          labelPainter: _36c2.maybeUnBoxAndBuildArgument<_fe5a.TextPainter, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['labelPainter'] : null, parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sizeWithOverflow: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sizeWithOverflow'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null),
          textScaleFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textScaleFactor'] : null, parentState: hydroState),
          value: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['value'] : null, parentState: hydroState));
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

  _4581.RectangularSliderValueIndicatorShape unwrap() => this;
  _4581.RectangularSliderValueIndicatorShape get vmObject => this;
  @_fac9.override
  _a643.Size getPreferredSize(isEnabled, isDiscrete,
      {_fe5a.TextPainter? labelPainter, _fac9.double? textScaleFactor}) {
    _36c2.Closure closure = table["getPreferredSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void paint(context, center,
      {required _86ca.Animation activationAnimation,
      required _86ca.Animation enableAnimation,
      required _fac9.bool isDiscrete,
      required _fe5a.TextPainter labelPainter,
      required _be2e.RenderBox parentBox,
      required _a643.Size sizeWithOverflow,
      required _4581.SliderThemeData sliderTheme,
      required _a643.TextDirection textDirection,
      required _fac9.double textScaleFactor,
      required _fac9.double value}) {
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

void loadRectangularSliderValueIndicatorShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['rectangularSliderValueIndicatorShape'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRectangularSliderValueIndicatorShape(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_4581.RectangularSliderValueIndicatorShape>(boxer: (
      {required _4581.RectangularSliderValueIndicatorShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRectangularSliderValueIndicatorShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
