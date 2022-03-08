import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRoundRangeSliderTickMarkShape
    extends _36c2.VMManagedBox<_4581.RoundRangeSliderTickMarkShape> {
  VMManagedRoundRangeSliderTickMarkShape(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['tickMarkRadius'] = vmObject.tickMarkRadius;
    table['getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.getPreferredSize(
                isEnabled: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['isEnabled']
                    : null,
                sliderTheme: _36c2.maybeUnBoxAndBuildArgument<
                        _4581.SliderThemeData, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['sliderTheme']
                        : null,
                    parentState: hydroState)),
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
          isEnabled: luaCallerArguments.length >= 4
              ? luaCallerArguments[3]['isEnabled']
              : null,
          enableAnimation: _36c2
              .maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                  luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null,
                  parentState: hydroState),
          endThumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['endThumbCenter'] : null, parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          startThumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['startThumbCenter'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null));
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

  final _4581.RoundRangeSliderTickMarkShape vmObject;
}

class RTManagedRoundRangeSliderTickMarkShape
    extends _4581.RoundRangeSliderTickMarkShape
    implements _36c2.Box<_4581.RoundRangeSliderTickMarkShape> {
  RTManagedRoundRangeSliderTickMarkShape(
      {_fac9.double? tickMarkRadius,
      required this.table,
      required this.hydroState})
      : super(tickMarkRadius: tickMarkRadius) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['tickMarkRadius'] = _36c2.maybeBoxObject(
        object: this.tickMarkRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getPreferredSize(
                isEnabled:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['isEnabled']
                            : null,
                        parentState: hydroState),
                sliderTheme: _36c2.maybeUnBoxAndBuildArgument<
                        _4581.SliderThemeData, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['sliderTheme']
                        : null,
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
          isEnabled: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['isEnabled'] : null,
              parentState: hydroState),
          enableAnimation:
              _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(
                  luaCallerArguments.length >= 4 ? luaCallerArguments[3]['enableAnimation'] : null,
                  parentState: hydroState),
          endThumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['endThumbCenter'] : null, parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          startThumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['startThumbCenter'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null));
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

  _4581.RoundRangeSliderTickMarkShape unwrap() => this;
  _4581.RoundRangeSliderTickMarkShape get vmObject => this;
  @_fac9.override
  _a643.Size getPreferredSize(
      {_fac9.bool isEnabled = false,
      required _4581.SliderThemeData sliderTheme}) {
    _36c2.Closure closure = table["getPreferredSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void paint(context, center,
      {_fac9.bool isEnabled = false,
      required _86ca.Animation enableAnimation,
      required _a643.Offset endThumbCenter,
      required _be2e.RenderBox parentBox,
      required _4581.SliderThemeData sliderTheme,
      required _a643.Offset startThumbCenter,
      required _a643.TextDirection textDirection}) {
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

void loadRoundRangeSliderTickMarkShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['roundRangeSliderTickMarkShape'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRoundRangeSliderTickMarkShape(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          tickMarkRadius: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['tickMarkRadius']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_4581.RoundRangeSliderTickMarkShape>(boxer: (
      {required _4581.RoundRangeSliderTickMarkShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRoundRangeSliderTickMarkShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
