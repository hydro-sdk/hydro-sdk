import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliderThemeData
    extends _36c2.VMManagedBox<_4581.SliderThemeData> {
  VMManagedSliderThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['trackHeight'] = vmObject.trackHeight;
    table['activeTrackColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.activeTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inactiveTrackColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.inactiveTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledActiveTrackColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledActiveTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledInactiveTrackColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledInactiveTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['activeTickMarkColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.activeTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inactiveTickMarkColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.inactiveTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledActiveTickMarkColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledActiveTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledInactiveTickMarkColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledInactiveTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['thumbColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.thumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlappingShapeStrokeColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.overlappingShapeStrokeColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledThumbColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledThumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['valueIndicatorColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.valueIndicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayShape'] = _36c2.maybeBoxObject<_4581.SliderComponentShape?>(
        object: vmObject.overlayShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tickMarkShape'] = _36c2.maybeBoxObject<_4581.SliderTickMarkShape?>(
        object: vmObject.tickMarkShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['thumbShape'] = _36c2.maybeBoxObject<_4581.SliderComponentShape?>(
        object: vmObject.thumbShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackShape'] = _36c2.maybeBoxObject<_4581.SliderTrackShape?>(
        object: vmObject.trackShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['valueIndicatorShape'] =
        _36c2.maybeBoxObject<_4581.SliderComponentShape?>(
            object: vmObject.valueIndicatorShape,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['rangeTickMarkShape'] =
        _36c2.maybeBoxObject<_4581.RangeSliderTickMarkShape?>(
            object: vmObject.rangeTickMarkShape,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['rangeThumbShape'] =
        _36c2.maybeBoxObject<_4581.RangeSliderThumbShape?>(
            object: vmObject.rangeThumbShape,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['rangeTrackShape'] =
        _36c2.maybeBoxObject<_4581.RangeSliderTrackShape?>(
            object: vmObject.rangeTrackShape,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['rangeValueIndicatorShape'] =
        _36c2.maybeBoxObject<_4581.RangeSliderValueIndicatorShape?>(
            object: vmObject.rangeValueIndicatorShape,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['showValueIndicator'] =
        _4581.ShowValueIndicator.values.indexWhere((x) {
      return x == vmObject.showValueIndicator;
    });
    table['valueIndicatorTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.valueIndicatorTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minThumbSeparation'] = vmObject.minThumbSeparation;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedthumbSelector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['thumbSelector']
          : null;

      return [
        _36c2.maybeBoxObject<_4581.SliderThemeData>(
            object: vmObject.copyWith(
                activeTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['activeTickMarkColor']
                        : null,
                    parentState: hydroState),
                activeTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['activeTrackColor']
                        : null,
                    parentState: hydroState),
                disabledActiveTickMarkColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActiveTickMarkColor'] : null,
                        parentState: hydroState),
                disabledActiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActiveTrackColor'] : null, parentState: hydroState),
                disabledInactiveTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledInactiveTickMarkColor'] : null, parentState: hydroState),
                disabledInactiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledInactiveTrackColor'] : null, parentState: hydroState),
                disabledThumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledThumbColor'] : null, parentState: hydroState),
                inactiveTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveTickMarkColor'] : null, parentState: hydroState),
                inactiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveTrackColor'] : null, parentState: hydroState),
                minThumbSeparation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minThumbSeparation'] : null?.toDouble(),
                overlappingShapeStrokeColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlappingShapeStrokeColor'] : null, parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
                overlayShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayShape'] : null, parentState: hydroState),
                rangeThumbShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderThumbShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeThumbShape'] : null, parentState: hydroState),
                rangeTickMarkShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderTickMarkShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeTickMarkShape'] : null, parentState: hydroState),
                rangeTrackShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderTrackShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeTrackShape'] : null, parentState: hydroState),
                rangeValueIndicatorShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderValueIndicatorShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeValueIndicatorShape'] : null, parentState: hydroState),
                showValueIndicator: _36c2.maybeUnBoxEnum(values: _4581.ShowValueIndicator.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showValueIndicator'] : null),
                thumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null, parentState: hydroState),
                thumbSelector: unpackedthumbSelector != null
                    ? (textDirection, values, tapValue, thumbSize, trackSize, dx) => _36c2.maybeUnBoxEnum(
                        values: _4581.Thumb.values,
                        boxedEnum: ((
                          final _fac9.List<_fac9.dynamic>? val,
                        ) =>
                            val != null && val.length >= 1 ? val[0] : null)(
                          unpackedthumbSelector.dispatch(
                            [
                              luaCallerArguments[0],
                              textDirection,
                              values,
                              tapValue,
                              thumbSize,
                              trackSize,
                              dx
                            ],
                            parentState: hydroState,
                          ),
                        ))
                    : null,
                thumbShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbShape'] : null, parentState: hydroState),
                tickMarkShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderTickMarkShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tickMarkShape'] : null, parentState: hydroState),
                trackHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackHeight'] : null?.toDouble(),
                trackShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderTrackShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackShape'] : null, parentState: hydroState),
                valueIndicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorColor'] : null, parentState: hydroState),
                valueIndicatorShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorShape'] : null, parentState: hydroState),
                valueIndicatorTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorTextStyle'] : null, parentState: hydroState)),
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4581.SliderThemeData vmObject;
}

class RTManagedSliderThemeData extends _4581.SliderThemeData
    implements _36c2.Box<_4581.SliderThemeData> {
  RTManagedSliderThemeData(
      {_a643.Color? activeTickMarkColor,
      _a643.Color? activeTrackColor,
      _a643.Color? disabledActiveTickMarkColor,
      _a643.Color? disabledActiveTrackColor,
      _a643.Color? disabledInactiveTickMarkColor,
      _a643.Color? disabledInactiveTrackColor,
      _a643.Color? disabledThumbColor,
      _a643.Color? inactiveTickMarkColor,
      _a643.Color? inactiveTrackColor,
      _fac9.double? minThumbSeparation,
      _a643.Color? overlappingShapeStrokeColor,
      _a643.Color? overlayColor,
      _4581.SliderComponentShape? overlayShape,
      _4581.RangeSliderThumbShape? rangeThumbShape,
      _4581.RangeSliderTickMarkShape? rangeTickMarkShape,
      _4581.RangeSliderTrackShape? rangeTrackShape,
      _4581.RangeSliderValueIndicatorShape? rangeValueIndicatorShape,
      _4581.ShowValueIndicator? showValueIndicator,
      _a643.Color? thumbColor,
      _4581.Thumb? Function(
              _a643.TextDirection textDirection,
              _4581.RangeValues values,
              _fac9.double tapValue,
              _a643.Size thumbSize,
              _a643.Size trackSize,
              _fac9.double dx)?
          thumbSelector,
      _4581.SliderComponentShape? thumbShape,
      _4581.SliderTickMarkShape? tickMarkShape,
      _fac9.double? trackHeight,
      _4581.SliderTrackShape? trackShape,
      _a643.Color? valueIndicatorColor,
      _4581.SliderComponentShape? valueIndicatorShape,
      _74d0.TextStyle? valueIndicatorTextStyle,
      required this.table,
      required this.hydroState})
      : super(
            activeTickMarkColor: activeTickMarkColor,
            activeTrackColor: activeTrackColor,
            disabledActiveTickMarkColor: disabledActiveTickMarkColor,
            disabledActiveTrackColor: disabledActiveTrackColor,
            disabledInactiveTickMarkColor: disabledInactiveTickMarkColor,
            disabledInactiveTrackColor: disabledInactiveTrackColor,
            disabledThumbColor: disabledThumbColor,
            inactiveTickMarkColor: inactiveTickMarkColor,
            inactiveTrackColor: inactiveTrackColor,
            minThumbSeparation: minThumbSeparation,
            overlappingShapeStrokeColor: overlappingShapeStrokeColor,
            overlayColor: overlayColor,
            overlayShape: overlayShape,
            rangeThumbShape: rangeThumbShape,
            rangeTickMarkShape: rangeTickMarkShape,
            rangeTrackShape: rangeTrackShape,
            rangeValueIndicatorShape: rangeValueIndicatorShape,
            showValueIndicator: showValueIndicator,
            thumbColor: thumbColor,
            thumbSelector: thumbSelector,
            thumbShape: thumbShape,
            tickMarkShape: tickMarkShape,
            trackHeight: trackHeight,
            trackShape: trackShape,
            valueIndicatorColor: valueIndicatorColor,
            valueIndicatorShape: valueIndicatorShape,
            valueIndicatorTextStyle: valueIndicatorTextStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['trackHeight'] = _36c2.maybeBoxObject(
        object: this.trackHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['activeTrackColor'] = _36c2.maybeBoxObject(
        object: this.activeTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inactiveTrackColor'] = _36c2.maybeBoxObject(
        object: this.inactiveTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledActiveTrackColor'] = _36c2.maybeBoxObject(
        object: this.disabledActiveTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledInactiveTrackColor'] = _36c2.maybeBoxObject(
        object: this.disabledInactiveTrackColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['activeTickMarkColor'] = _36c2.maybeBoxObject(
        object: this.activeTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inactiveTickMarkColor'] = _36c2.maybeBoxObject(
        object: this.inactiveTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledActiveTickMarkColor'] = _36c2.maybeBoxObject(
        object: this.disabledActiveTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledInactiveTickMarkColor'] = _36c2.maybeBoxObject(
        object: this.disabledInactiveTickMarkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['thumbColor'] = _36c2.maybeBoxObject(
        object: this.thumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlappingShapeStrokeColor'] = _36c2.maybeBoxObject(
        object: this.overlappingShapeStrokeColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledThumbColor'] = _36c2.maybeBoxObject(
        object: this.disabledThumbColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject(
        object: this.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['valueIndicatorColor'] = _36c2.maybeBoxObject(
        object: this.valueIndicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayShape'] = _36c2.maybeBoxObject(
        object: this.overlayShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tickMarkShape'] = _36c2.maybeBoxObject(
        object: this.tickMarkShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['thumbShape'] = _36c2.maybeBoxObject(
        object: this.thumbShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trackShape'] = _36c2.maybeBoxObject(
        object: this.trackShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['valueIndicatorShape'] = _36c2.maybeBoxObject(
        object: this.valueIndicatorShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rangeTickMarkShape'] = _36c2.maybeBoxObject(
        object: this.rangeTickMarkShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rangeThumbShape'] = _36c2.maybeBoxObject(
        object: this.rangeThumbShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rangeTrackShape'] = _36c2.maybeBoxObject(
        object: this.rangeTrackShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rangeValueIndicatorShape'] = _36c2.maybeBoxObject(
        object: this.rangeValueIndicatorShape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showValueIndicator'] =
        _4581.ShowValueIndicator.values.indexWhere((x) {
      return x == this.showValueIndicator;
    });
    table['valueIndicatorTextStyle'] = _36c2.maybeBoxObject(
        object: this.valueIndicatorTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minThumbSeparation'] = _36c2.maybeBoxObject(
        object: this.minThumbSeparation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedthumbSelector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['thumbSelector']
          : null;

      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                activeTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['activeTickMarkColor']
                        : null,
                    parentState: hydroState),
                activeTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['activeTrackColor']
                        : null,
                    parentState: hydroState),
                disabledActiveTickMarkColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActiveTickMarkColor'] : null,
                        parentState: hydroState),
                disabledActiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActiveTrackColor'] : null, parentState: hydroState),
                disabledInactiveTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledInactiveTickMarkColor'] : null, parentState: hydroState),
                disabledInactiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledInactiveTrackColor'] : null, parentState: hydroState),
                disabledThumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledThumbColor'] : null, parentState: hydroState),
                inactiveTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveTickMarkColor'] : null, parentState: hydroState),
                inactiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveTrackColor'] : null, parentState: hydroState),
                minThumbSeparation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minThumbSeparation'] : null, parentState: hydroState),
                overlappingShapeStrokeColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlappingShapeStrokeColor'] : null, parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
                overlayShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayShape'] : null, parentState: hydroState),
                rangeThumbShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderThumbShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeThumbShape'] : null, parentState: hydroState),
                rangeTickMarkShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderTickMarkShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeTickMarkShape'] : null, parentState: hydroState),
                rangeTrackShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderTrackShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeTrackShape'] : null, parentState: hydroState),
                rangeValueIndicatorShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderValueIndicatorShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeValueIndicatorShape'] : null, parentState: hydroState),
                showValueIndicator: _36c2.maybeUnBoxEnum(values: _4581.ShowValueIndicator.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showValueIndicator'] : null),
                thumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null, parentState: hydroState),
                thumbSelector: unpackedthumbSelector != null
                    ? (textDirection, values, tapValue, thumbSize, trackSize, dx) => _36c2.maybeUnBoxEnum(
                        values: _4581.Thumb.values,
                        boxedEnum: ((
                          final _fac9.List<_fac9.dynamic>? val,
                        ) =>
                            val != null && val.length >= 1 ? val[0] : null)(
                          unpackedthumbSelector.dispatch(
                            [
                              luaCallerArguments[0],
                              textDirection,
                              values,
                              tapValue,
                              thumbSize,
                              trackSize,
                              dx
                            ],
                            parentState: hydroState,
                          ),
                        ))
                    : null,
                thumbShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbShape'] : null, parentState: hydroState),
                tickMarkShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderTickMarkShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tickMarkShape'] : null, parentState: hydroState),
                trackHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackHeight'] : null, parentState: hydroState),
                trackShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderTrackShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackShape'] : null, parentState: hydroState),
                valueIndicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorColor'] : null, parentState: hydroState),
                valueIndicatorShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorShape'] : null, parentState: hydroState),
                valueIndicatorTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorTextStyle'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _4581.SliderThemeData unwrap() => this;
  _4581.SliderThemeData get vmObject => this;
  @_fac9.override
  _4581.SliderThemeData copyWith(
      {_a643.Color? activeTickMarkColor,
      _a643.Color? activeTrackColor,
      _a643.Color? disabledActiveTickMarkColor,
      _a643.Color? disabledActiveTrackColor,
      _a643.Color? disabledInactiveTickMarkColor,
      _a643.Color? disabledInactiveTrackColor,
      _a643.Color? disabledThumbColor,
      _a643.Color? inactiveTickMarkColor,
      _a643.Color? inactiveTrackColor,
      _fac9.double? minThumbSeparation,
      _a643.Color? overlappingShapeStrokeColor,
      _a643.Color? overlayColor,
      _4581.SliderComponentShape? overlayShape,
      _4581.RangeSliderThumbShape? rangeThumbShape,
      _4581.RangeSliderTickMarkShape? rangeTickMarkShape,
      _4581.RangeSliderTrackShape? rangeTrackShape,
      _4581.RangeSliderValueIndicatorShape? rangeValueIndicatorShape,
      _4581.ShowValueIndicator? showValueIndicator,
      _a643.Color? thumbColor,
      _4581.Thumb? Function(
              _a643.TextDirection textDirection,
              _4581.RangeValues values,
              _fac9.double tapValue,
              _a643.Size thumbSize,
              _a643.Size trackSize,
              _fac9.double dx)?
          thumbSelector,
      _4581.SliderComponentShape? thumbShape,
      _4581.SliderTickMarkShape? tickMarkShape,
      _fac9.double? trackHeight,
      _4581.SliderTrackShape? trackShape,
      _a643.Color? valueIndicatorColor,
      _4581.SliderComponentShape? valueIndicatorShape,
      _74d0.TextStyle? valueIndicatorTextStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4581.SliderThemeData, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadSliderThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliderThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedthumbSelector = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['thumbSelector']
        : null;

    return [
      RTManagedSliderThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          activeTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['activeTickMarkColor']
                  : null,
              parentState: hydroState),
          activeTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['activeTrackColor']
                  : null,
              parentState: hydroState),
          disabledActiveTickMarkColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActiveTickMarkColor'] : null,
                  parentState: hydroState),
          disabledActiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledActiveTrackColor'] : null, parentState: hydroState),
          disabledInactiveTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledInactiveTickMarkColor'] : null, parentState: hydroState),
          disabledInactiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledInactiveTrackColor'] : null, parentState: hydroState),
          disabledThumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledThumbColor'] : null, parentState: hydroState),
          inactiveTickMarkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveTickMarkColor'] : null, parentState: hydroState),
          inactiveTrackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveTrackColor'] : null, parentState: hydroState),
          minThumbSeparation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minThumbSeparation'] : null?.toDouble(),
          overlappingShapeStrokeColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlappingShapeStrokeColor'] : null, parentState: hydroState),
          overlayColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
          overlayShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayShape'] : null, parentState: hydroState),
          rangeThumbShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderThumbShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeThumbShape'] : null, parentState: hydroState),
          rangeTickMarkShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderTickMarkShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeTickMarkShape'] : null, parentState: hydroState),
          rangeTrackShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderTrackShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeTrackShape'] : null, parentState: hydroState),
          rangeValueIndicatorShape: _36c2.maybeUnBoxAndBuildArgument<_4581.RangeSliderValueIndicatorShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rangeValueIndicatorShape'] : null, parentState: hydroState),
          showValueIndicator: _36c2.maybeUnBoxEnum(values: _4581.ShowValueIndicator.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showValueIndicator'] : null),
          thumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbColor'] : null, parentState: hydroState),
          thumbSelector: unpackedthumbSelector != null
              ? (textDirection, values, tapValue, thumbSize, trackSize, dx) => _36c2.maybeUnBoxEnum(
                  values: _4581.Thumb.values,
                  boxedEnum: ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedthumbSelector.dispatch(
                      [
                        luaCallerArguments[0],
                        textDirection,
                        values,
                        tapValue,
                        thumbSize,
                        trackSize,
                        dx
                      ],
                      parentState: hydroState,
                    ),
                  ))
              : null,
          thumbShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thumbShape'] : null, parentState: hydroState),
          tickMarkShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderTickMarkShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tickMarkShape'] : null, parentState: hydroState),
          trackHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackHeight'] : null?.toDouble(),
          trackShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderTrackShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackShape'] : null, parentState: hydroState),
          valueIndicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorColor'] : null, parentState: hydroState),
          valueIndicatorShape: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderComponentShape?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorShape'] : null, parentState: hydroState),
          valueIndicatorTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorTextStyle'] : null, parentState: hydroState))
    ];
  });
  table['sliderThemeDataFromPrimaryColors'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_4581.SliderThemeData>(
          object: _4581.SliderThemeData.fromPrimaryColors(
              primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null,
                  parentState: hydroState),
              primaryColorDark:
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['primaryColorDark']
                          : null,
                      parentState: hydroState),
              primaryColorLight:
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorLight'] : null,
                      parentState: hydroState),
              valueIndicatorTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['valueIndicatorTextStyle'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['sliderThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_4581.SliderThemeData>(
          object: _4581.SliderThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_4581.SliderThemeData>(boxer: (
      {required _4581.SliderThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliderThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
