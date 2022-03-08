import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRangeSliderTrackShape
    extends _36c2.VMManagedBox<_4581.RangeSliderTrackShape> {
  VMManagedRangeSliderTrackShape(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
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
          endThumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['endThumbCenter'] : null, parentState: hydroState),
          parentBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['parentBox'] : null, parentState: hydroState),
          sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['sliderTheme'] : null, parentState: hydroState),
          startThumbCenter: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['startThumbCenter'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments[3]['textDirection'] : null));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4581.RangeSliderTrackShape vmObject;
}

void loadRangeSliderTrackShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_4581.RangeSliderTrackShape>(boxer: (
      {required _4581.RangeSliderTrackShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRangeSliderTrackShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
