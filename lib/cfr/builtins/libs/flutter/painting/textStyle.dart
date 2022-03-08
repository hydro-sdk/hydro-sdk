import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextStyle extends _36c2.VMManagedBox<_74d0.TextStyle> {
  VMManagedTextStyle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['inherit'] = vmObject.inherit;
    table['color'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontFamily'] = vmObject.fontFamily;
    table['fontSize'] = vmObject.fontSize;
    table['fontWeight'] = _36c2.maybeBoxObject<_a643.FontWeight?>(
        object: vmObject.fontWeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontStyle'] = _a643.FontStyle.values.indexWhere((x) {
      return x == vmObject.fontStyle;
    });
    table['letterSpacing'] = vmObject.letterSpacing;
    table['wordSpacing'] = vmObject.wordSpacing;
    table['textBaseline'] = _a643.TextBaseline.values.indexWhere((x) {
      return x == vmObject.textBaseline;
    });
    table['height'] = vmObject.height;
    table['leadingDistribution'] =
        _a643.TextLeadingDistribution.values.indexWhere((x) {
      return x == vmObject.leadingDistribution;
    });
    table['locale'] = _36c2.maybeBoxObject<_a643.Locale?>(
        object: vmObject.locale,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foreground'] = _36c2.maybeBoxObject<_a643.Paint?>(
        object: vmObject.foreground,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['background'] = _36c2.maybeBoxObject<_a643.Paint?>(
        object: vmObject.background,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject<_a643.TextDecoration?>(
        object: vmObject.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decorationColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.decorationColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decorationStyle'] = _a643.TextDecorationStyle.values.indexWhere((x) {
      return x == vmObject.decorationStyle;
    });
    table['decorationThickness'] = vmObject.decorationThickness;
    table['debugLabel'] = vmObject.debugLabel;
    table['shadows'] = _36c2.maybeBoxObject<_fac9.List<_a643.Shadow>?>(
        object: vmObject.shadows,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontFeatures'] =
        _36c2.maybeBoxObject<_fac9.List<_a643.FontFeature>?>(
            object: vmObject.fontFeatures,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['overflow'] = _fe5a.TextOverflow.values.indexWhere((x) {
      return x == vmObject.overflow;
    });
    table['getFontFamilyFallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.fontFamilyFallback;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.List<_fac9.String>?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.copyWith(
                background:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Paint?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['background'] : null,
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                debugLabel: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['debugLabel'] : null,
                decoration: _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
                decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationColor'] : null, parentState: hydroState),
                decorationStyle: _36c2.maybeUnBoxEnum(values: _a643.TextDecorationStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
                decorationThickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThickness'] : null?.toDouble(),
                fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null,
                fontFamilyFallback: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamilyFallback'] : null, parentState: hydroState),
                fontFeatures: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.FontFeature>?, _a643.FontFeature>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFeatures'] : null, parentState: hydroState),
                fontSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSize'] : null?.toDouble(),
                fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
                fontWeight: _36c2.maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeight'] : null, parentState: hydroState),
                foreground: _36c2.maybeUnBoxAndBuildArgument<_a643.Paint?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foreground'] : null, parentState: hydroState),
                height: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null?.toDouble(),
                inherit: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inherit'] : null,
                leadingDistribution: _36c2.maybeUnBoxEnum(values: _a643.TextLeadingDistribution.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leadingDistribution'] : null),
                letterSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacing'] : null?.toDouble(),
                locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
                overflow: _36c2.maybeUnBoxEnum(values: _fe5a.TextOverflow.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflow'] : null),
                package: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['package'] : null,
                shadows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Shadow>?, _a643.Shadow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadows'] : null, parentState: hydroState),
                textBaseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
                wordSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacing'] : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['apply'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.apply(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                decoration:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
                        parentState: hydroState),
                decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationColor'] : null, parentState: hydroState),
                decorationStyle: _36c2.maybeUnBoxEnum(values: _a643.TextDecorationStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
                decorationThicknessDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThicknessDelta'] : null?.toDouble(),
                decorationThicknessFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThicknessFactor'] : null?.toDouble(),
                fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null,
                fontFamilyFallback: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamilyFallback'] : null, parentState: hydroState),
                fontFeatures: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.FontFeature>?, _a643.FontFeature>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFeatures'] : null, parentState: hydroState),
                fontSizeDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeDelta'] : null?.toDouble(),
                fontSizeFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeFactor'] : null?.toDouble(),
                fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
                fontWeightDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeightDelta'] : null,
                heightDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['heightDelta'] : null?.toDouble(),
                heightFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['heightFactor'] : null?.toDouble(),
                leadingDistribution: _36c2.maybeUnBoxEnum(values: _a643.TextLeadingDistribution.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leadingDistribution'] : null),
                letterSpacingDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacingDelta'] : null?.toDouble(),
                letterSpacingFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacingFactor'] : null?.toDouble(),
                locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
                overflow: _36c2.maybeUnBoxEnum(values: _fe5a.TextOverflow.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflow'] : null),
                package: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['package'] : null,
                shadows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Shadow>?, _a643.Shadow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadows'] : null, parentState: hydroState),
                textBaseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
                wordSpacingDelta: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacingDelta'] : null?.toDouble(),
                wordSpacingFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacingFactor'] : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.merge(_36c2.maybeUnBoxAndBuildArgument<
                _74d0.TextStyle?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextStyle>(
            object: vmObject.getTextStyle(
                textScaleFactor: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['textScaleFactor']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getParagraphStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.ParagraphStyle>(
            object: vmObject.getParagraphStyle(
                ellipsis: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['ellipsis']
                    : null,
                fontFamily: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['fontFamily']
                    : null,
                fontSize: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['fontSize']
                    : null?.toDouble(),
                fontStyle: _36c2.maybeUnBoxEnum(
                    values: _a643.FontStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['fontStyle']
                        : null),
                fontWeight: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['fontWeight']
                            : null,
                        parentState: hydroState),
                height: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['height']
                    : null?.toDouble(),
                locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null,
                    parentState: hydroState),
                maxLines: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLines'] : null,
                strutStyle: _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['strutStyle'] : null, parentState: hydroState),
                textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textAlign'] : null),
                textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
                textHeightBehavior: _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textHeightBehavior'] : null, parentState: hydroState),
                textScaleFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textScaleFactor'] : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['compareTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.RenderComparison.values.indexWhere((x) {
          return x ==
              vmObject.compareTo(_36c2
                  .maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
                      luaCallerArguments[1],
                      parentState: hydroState));
        }),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          prefix: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['prefix']
              : null);
      return [];
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

  final _74d0.TextStyle vmObject;
}

class RTManagedTextStyle extends _74d0.TextStyle
    implements _36c2.Box<_74d0.TextStyle> {
  RTManagedTextStyle(
      {_a643.Paint? background,
      _a643.Color? backgroundColor,
      _a643.Color? color,
      _fac9.String? debugLabel,
      _a643.TextDecoration? decoration,
      _a643.Color? decorationColor,
      _a643.TextDecorationStyle? decorationStyle,
      _fac9.double? decorationThickness,
      _fac9.String? fontFamily,
      _fac9.List<_fac9.String>? fontFamilyFallback,
      _fac9.List<_a643.FontFeature>? fontFeatures,
      _fac9.double? fontSize,
      _a643.FontStyle? fontStyle,
      _a643.FontWeight? fontWeight,
      _a643.Paint? foreground,
      _fac9.double? height,
      required _fac9.bool inherit,
      _a643.TextLeadingDistribution? leadingDistribution,
      _fac9.double? letterSpacing,
      _a643.Locale? locale,
      _fe5a.TextOverflow? overflow,
      _fac9.String? package,
      _fac9.List<_a643.Shadow>? shadows,
      _a643.TextBaseline? textBaseline,
      _fac9.double? wordSpacing,
      required this.table,
      required this.hydroState})
      : super(
            background: background,
            backgroundColor: backgroundColor,
            color: color,
            debugLabel: debugLabel,
            decoration: decoration,
            decorationColor: decorationColor,
            decorationStyle: decorationStyle,
            decorationThickness: decorationThickness,
            fontFamily: fontFamily,
            fontFamilyFallback: fontFamilyFallback,
            fontFeatures: fontFeatures,
            fontSize: fontSize,
            fontStyle: fontStyle,
            fontWeight: fontWeight,
            foreground: foreground,
            height: height,
            inherit: inherit,
            leadingDistribution: leadingDistribution,
            letterSpacing: letterSpacing,
            locale: locale,
            overflow: overflow,
            package: package,
            shadows: shadows,
            textBaseline: textBaseline,
            wordSpacing: wordSpacing) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['inherit'] = _36c2.maybeBoxObject(
        object: this.inherit,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontFamily'] = _36c2.maybeBoxObject(
        object: this.fontFamily,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontSize'] = _36c2.maybeBoxObject(
        object: this.fontSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontWeight'] = _36c2.maybeBoxObject(
        object: this.fontWeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontStyle'] = _a643.FontStyle.values.indexWhere((x) {
      return x == this.fontStyle;
    });
    table['letterSpacing'] = _36c2.maybeBoxObject(
        object: this.letterSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['wordSpacing'] = _36c2.maybeBoxObject(
        object: this.wordSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textBaseline'] = _a643.TextBaseline.values.indexWhere((x) {
      return x == this.textBaseline;
    });
    table['height'] = _36c2.maybeBoxObject(
        object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
    table['leadingDistribution'] =
        _a643.TextLeadingDistribution.values.indexWhere((x) {
      return x == this.leadingDistribution;
    });
    table['locale'] = _36c2.maybeBoxObject(
        object: this.locale, hydroState: hydroState, table: _36c2.HydroTable());
    table['foreground'] = _36c2.maybeBoxObject(
        object: this.foreground,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['background'] = _36c2.maybeBoxObject(
        object: this.background,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject(
        object: this.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decorationColor'] = _36c2.maybeBoxObject(
        object: this.decorationColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decorationStyle'] = _a643.TextDecorationStyle.values.indexWhere((x) {
      return x == this.decorationStyle;
    });
    table['decorationThickness'] = _36c2.maybeBoxObject(
        object: this.decorationThickness,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugLabel'] = _36c2.maybeBoxObject(
        object: this.debugLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadows'] = _36c2.maybeBoxObject(
        object: this.shadows,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fontFeatures'] = _36c2.maybeBoxObject(
        object: this.fontFeatures,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overflow'] = _fe5a.TextOverflow.values.indexWhere((x) {
      return x == this.overflow;
    });
    table['_dart_getFontFamilyFallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.fontFamilyFallback];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                background:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Paint?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['background'] : null,
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                debugLabel: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['debugLabel'] : null, parentState: hydroState),
                decoration: _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
                decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationColor'] : null, parentState: hydroState),
                decorationStyle: _36c2.maybeUnBoxEnum(values: _a643.TextDecorationStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
                decorationThickness: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThickness'] : null, parentState: hydroState),
                fontFamily: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null, parentState: hydroState),
                fontFamilyFallback: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamilyFallback'] : null, parentState: hydroState),
                fontFeatures: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.FontFeature>?, _a643.FontFeature>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFeatures'] : null, parentState: hydroState),
                fontSize: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSize'] : null, parentState: hydroState),
                fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
                fontWeight: _36c2.maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeight'] : null, parentState: hydroState),
                foreground: _36c2.maybeUnBoxAndBuildArgument<_a643.Paint?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foreground'] : null, parentState: hydroState),
                height: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null, parentState: hydroState),
                inherit: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inherit'] : null, parentState: hydroState),
                leadingDistribution: _36c2.maybeUnBoxEnum(values: _a643.TextLeadingDistribution.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leadingDistribution'] : null),
                letterSpacing: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacing'] : null, parentState: hydroState),
                locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
                overflow: _36c2.maybeUnBoxEnum(values: _fe5a.TextOverflow.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflow'] : null),
                package: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['package'] : null, parentState: hydroState),
                shadows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Shadow>?, _a643.Shadow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadows'] : null, parentState: hydroState),
                textBaseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
                wordSpacing: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacing'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_apply'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.apply(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                    parentState: hydroState),
                decoration:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
                        parentState: hydroState),
                decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationColor'] : null, parentState: hydroState),
                decorationStyle: _36c2.maybeUnBoxEnum(values: _a643.TextDecorationStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
                decorationThicknessDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThicknessDelta'] : null, parentState: hydroState),
                decorationThicknessFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThicknessFactor'] : null, parentState: hydroState),
                fontFamily: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null, parentState: hydroState),
                fontFamilyFallback: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamilyFallback'] : null, parentState: hydroState),
                fontFeatures: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.FontFeature>?, _a643.FontFeature>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFeatures'] : null, parentState: hydroState),
                fontSizeDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeDelta'] : null, parentState: hydroState),
                fontSizeFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSizeFactor'] : null, parentState: hydroState),
                fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
                fontWeightDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeightDelta'] : null, parentState: hydroState),
                heightDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['heightDelta'] : null, parentState: hydroState),
                heightFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['heightFactor'] : null, parentState: hydroState),
                leadingDistribution: _36c2.maybeUnBoxEnum(values: _a643.TextLeadingDistribution.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leadingDistribution'] : null),
                letterSpacingDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacingDelta'] : null, parentState: hydroState),
                letterSpacingFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacingFactor'] : null, parentState: hydroState),
                locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
                overflow: _36c2.maybeUnBoxEnum(values: _fe5a.TextOverflow.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflow'] : null),
                package: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['package'] : null, parentState: hydroState),
                shadows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Shadow>?, _a643.Shadow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadows'] : null, parentState: hydroState),
                textBaseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
                wordSpacingDelta: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacingDelta'] : null, parentState: hydroState),
                wordSpacingFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacingFactor'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.merge(_36c2.maybeUnBoxAndBuildArgument<
                _74d0.TextStyle?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getTextStyle(
                textScaleFactor: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['textScaleFactor']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getParagraphStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getParagraphStyle(
                ellipsis: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['ellipsis'] : null,
                        parentState: hydroState),
                fontFamily:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['fontFamily']
                            : null,
                        parentState: hydroState),
                fontSize: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSize'] : null,
                    parentState: hydroState),
                fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
                fontWeight: _36c2.maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeight'] : null, parentState: hydroState),
                height: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null, parentState: hydroState),
                locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
                maxLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxLines'] : null, parentState: hydroState),
                strutStyle: _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['strutStyle'] : null, parentState: hydroState),
                textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textAlign'] : null),
                textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
                textHeightBehavior: _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textHeightBehavior'] : null, parentState: hydroState),
                textScaleFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textScaleFactor'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_compareTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.RenderComparison.values.indexWhere((x) {
          return x ==
              super.compareTo(_36c2
                  .maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
                      luaCallerArguments[1],
                      parentState: hydroState));
        })
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(
          _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          prefix: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['prefix']
                  : null,
              parentState: hydroState));
      return [];
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

  _74d0.TextStyle unwrap() => this;
  _74d0.TextStyle get vmObject => this;
  @_fac9.override
  _fac9.List<_fac9.String>? get fontFamilyFallback {
    _36c2.Closure closure = table["getFontFamilyFallback"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle copyWith(
      {_a643.Paint? background,
      _a643.Color? backgroundColor,
      _a643.Color? color,
      _fac9.String? debugLabel,
      _a643.TextDecoration? decoration,
      _a643.Color? decorationColor,
      _a643.TextDecorationStyle? decorationStyle,
      _fac9.double? decorationThickness,
      _fac9.String? fontFamily,
      _fac9.List? fontFamilyFallback,
      _fac9.List? fontFeatures,
      _fac9.double? fontSize,
      _a643.FontStyle? fontStyle,
      _a643.FontWeight? fontWeight,
      _a643.Paint? foreground,
      _fac9.double? height,
      _fac9.bool? inherit,
      _a643.TextLeadingDistribution? leadingDistribution,
      _fac9.double? letterSpacing,
      _a643.Locale? locale,
      _fe5a.TextOverflow? overflow,
      _fac9.String? package,
      _fac9.List? shadows,
      _a643.TextBaseline? textBaseline,
      _fac9.double? wordSpacing}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle apply(
      {_a643.Color? backgroundColor,
      _a643.Color? color,
      _a643.TextDecoration? decoration,
      _a643.Color? decorationColor,
      _a643.TextDecorationStyle? decorationStyle,
      _fac9.double decorationThicknessDelta = 0.0,
      _fac9.double decorationThicknessFactor = 1.0,
      _fac9.String? fontFamily,
      _fac9.List? fontFamilyFallback,
      _fac9.List? fontFeatures,
      _fac9.double fontSizeDelta = 0.0,
      _fac9.double fontSizeFactor = 1.0,
      _a643.FontStyle? fontStyle,
      _fac9.int fontWeightDelta = 0,
      _fac9.double heightDelta = 0.0,
      _fac9.double heightFactor = 1.0,
      _a643.TextLeadingDistribution? leadingDistribution,
      _fac9.double letterSpacingDelta = 0.0,
      _fac9.double letterSpacingFactor = 1.0,
      _a643.Locale? locale,
      _fe5a.TextOverflow? overflow,
      _fac9.String? package,
      _fac9.List? shadows,
      _a643.TextBaseline? textBaseline,
      _fac9.double wordSpacingDelta = 0.0,
      _fac9.double wordSpacingFactor = 1.0}) {
    _36c2.Closure closure = table["apply"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle merge(other) {
    _36c2.Closure closure = table["merge"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextStyle getTextStyle({_fac9.double textScaleFactor = 1.0}) {
    _36c2.Closure closure = table["getTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.ParagraphStyle getParagraphStyle(
      {_fac9.String? ellipsis,
      _fac9.String? fontFamily,
      _fac9.double? fontSize,
      _a643.FontStyle? fontStyle,
      _a643.FontWeight? fontWeight,
      _fac9.double? height,
      _a643.Locale? locale,
      _fac9.int? maxLines,
      _ced4.StrutStyle? strutStyle,
      _a643.TextAlign? textAlign,
      _a643.TextDirection? textDirection,
      _a643.TextHeightBehavior? textHeightBehavior,
      _fac9.double textScaleFactor = 1.0}) {
    _36c2.Closure closure = table["getParagraphStyle"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a643.ParagraphStyle, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _487f.RenderComparison compareTo(other) {
    _36c2.Closure closure = table["compareTo"];
    return _36c2.maybeUnBoxEnum(
        values: _487f.RenderComparison.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties, {_fac9.String prefix = ''}) {
    super.debugFillProperties(properties, prefix: prefix);
    _36c2.Closure closure = table["debugFillProperties"];
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

void loadTextStyle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textStyle'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextStyle(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          background:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Paint?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['background']
                      : null,
                  parentState: hydroState),
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          debugLabel: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['debugLabel'] : null,
          decoration: _36c2.maybeUnBoxAndBuildArgument<_a643.TextDecoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null, parentState: hydroState),
          decorationColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationColor'] : null, parentState: hydroState),
          decorationStyle: _36c2.maybeUnBoxEnum(values: _a643.TextDecorationStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
          decorationThickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThickness'] : null?.toDouble(),
          fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null,
          fontFamilyFallback: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamilyFallback'] : null, parentState: hydroState),
          fontFeatures: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.FontFeature>?, _a643.FontFeature>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFeatures'] : null, parentState: hydroState),
          fontSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSize'] : null?.toDouble(),
          fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
          fontWeight: _36c2.maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeight'] : null, parentState: hydroState),
          foreground: _36c2.maybeUnBoxAndBuildArgument<_a643.Paint?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foreground'] : null, parentState: hydroState),
          height: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null?.toDouble(),
          inherit: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inherit'] : null,
          leadingDistribution: _36c2.maybeUnBoxEnum(values: _a643.TextLeadingDistribution.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leadingDistribution'] : null),
          letterSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacing'] : null?.toDouble(),
          locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
          overflow: _36c2.maybeUnBoxEnum(values: _fe5a.TextOverflow.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflow'] : null),
          package: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['package'] : null,
          shadows: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Shadow>?, _a643.Shadow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadows'] : null, parentState: hydroState),
          textBaseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
          wordSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacing'] : null?.toDouble())
    ];
  });
  table['textStyleLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _74d0.TextStyle.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
            luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_74d0.TextStyle>(boxer: (
      {required _74d0.TextStyle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextStyle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
