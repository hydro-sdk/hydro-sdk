import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRectangularSliderTrackShape
    extends _36c2.VMManagedBox<_4581.RectangularSliderTrackShape> {
  VMManagedRectangularSliderTrackShape(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['disabledThumbGapWidth'] = vmObject.disabledThumbGapWidth;
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
          enableAnimation:
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                  luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null,
                  parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null),
          thumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['thumbCenter'] : null, parentState: hydroState));
      return [];
    });
    table['getPreferredRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Rect>(
            object: vmObject.getPreferredRect(
                isDiscrete: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['isDiscrete']
                    : null,
                isEnabled: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['isEnabled']
                    : null,
                offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['offset'] : null,
                    parentState: hydroState),
                parentBox:
                    _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['parentBox']
                            : null,
                        parentState: hydroState),
                sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sliderTheme'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
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

  final _4581.RectangularSliderTrackShape vmObject;
}

class RTManagedRectangularSliderTrackShape
    extends _4581.RectangularSliderTrackShape
    implements _36c2.Box<_4581.RectangularSliderTrackShape> {
  RTManagedRectangularSliderTrackShape(
      {required _fac9.double disabledThumbGapWidth,
      required this.table,
      required this.hydroState})
      : super(disabledThumbGapWidth: disabledThumbGapWidth) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['disabledThumbGapWidth'] = _36c2.maybeBoxObject(
        object: this.disabledThumbGapWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
          enableAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null, parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null),
          thumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['thumbCenter'] : null, parentState: hydroState));
      return [];
    });
    table['_dart_getPreferredRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getPreferredRect(
                isDiscrete: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['isDiscrete']
                        : null,
                    parentState: hydroState),
                isEnabled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isEnabled'] : null,
                    parentState: hydroState),
                offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['offset'] : null,
                    parentState: hydroState),
                parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['parentBox'] : null,
                    parentState: hydroState),
                sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sliderTheme'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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

  _4581.RectangularSliderTrackShape unwrap() => this;
  _4581.RectangularSliderTrackShape get vmObject => this;
  @_fac9.override
  void paint(context, offset,
      {_fac9.bool isDiscrete = false,
      _fac9.bool isEnabled = false,
      required _86ca.Animation enableAnimation,
      required _be2e.RenderBox parentBox,
      required _4581.SliderThemeData sliderTheme,
      required _a643.TextDirection textDirection,
      required _a643.Offset thumbCenter}) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Rect getPreferredRect(
      {_fac9.bool isDiscrete = false,
      _fac9.bool isEnabled = false,
      _a643.Offset offset = _a643.Offset.zero,
      required _be2e.RenderBox parentBox,
      required _4581.SliderThemeData sliderTheme}) {
    _36c2.Closure closure = table["getPreferredRect"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadRectangularSliderTrackShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['rectangularSliderTrackShape'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRectangularSliderTrackShape(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          disabledThumbGapWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['disabledThumbGapWidth']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_4581.RectangularSliderTrackShape>(boxer: (
      {required _4581.RectangularSliderTrackShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRectangularSliderTrackShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
