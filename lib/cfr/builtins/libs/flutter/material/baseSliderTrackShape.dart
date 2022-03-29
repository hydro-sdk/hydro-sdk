import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBaseSliderTrackShape
    extends _36c2.VMManagedBox<_4581.BaseSliderTrackShape> {
  VMManagedBaseSliderTrackShape(
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4581.BaseSliderTrackShape vmObject;
}

void loadBaseSliderTrackShape(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_4581.BaseSliderTrackShape>(boxer: (
      {required _4581.BaseSliderTrackShape vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBaseSliderTrackShape(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
