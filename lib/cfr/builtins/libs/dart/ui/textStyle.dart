import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  VMManagedTextStyle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final TextStyle vmObject;
}

class RTManagedTextStyle extends TextStyle implements Box<TextStyle> {
  RTManagedTextStyle(
      {Paint? background,
      Color? color,
      TextDecoration? decoration,
      Color? decorationColor,
      TextDecorationStyle? decorationStyle,
      double? decorationThickness,
      String? fontFamily,
      List<String>? fontFamilyFallback,
      List<FontFeature>? fontFeatures,
      double? fontSize,
      FontStyle? fontStyle,
      FontWeight? fontWeight,
      Paint? foreground,
      double? height,
      double? letterSpacing,
      Locale? locale,
      List<Shadow>? shadows,
      TextBaseline? textBaseline,
      double? wordSpacing,
      required this.table,
      required this.hydroState})
      : super(
            background: background,
            color: color,
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
            letterSpacing: letterSpacing,
            locale: locale,
            shadows: shadows,
            textBaseline: textBaseline,
            wordSpacing: wordSpacing) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  TextStyle unwrap() => this;
  TextStyle get vmObject => this;
  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextStyle(
    {required HydroState hydroState, required HydroTable table}) {
  table['textStyle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTextStyle(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          background: maybeUnBoxAndBuildArgument<Paint?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['background'] : null,
              parentState: hydroState),
          color: maybeUnBoxAndBuildArgument<Color?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          decoration: maybeUnBoxAndBuildArgument<TextDecoration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['decoration']
                  : null,
              parentState: hydroState),
          decorationColor: maybeUnBoxAndBuildArgument<Color?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['decorationColor']
                  : null,
              parentState: hydroState),
          decorationStyle: maybeUnBoxEnum(
              values: TextDecorationStyle.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationStyle'] : null),
          decorationThickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decorationThickness'] : null?.toDouble(),
          fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null,
          fontFamilyFallback: maybeUnBoxAndBuildArgument<List<String>?, String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamilyFallback'] : null, parentState: hydroState),
          fontFeatures: maybeUnBoxAndBuildArgument<List<FontFeature>?, FontFeature>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFeatures'] : null, parentState: hydroState),
          fontSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontSize'] : null?.toDouble(),
          fontStyle: maybeUnBoxEnum(values: FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontStyle'] : null),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontWeight'] : null, parentState: hydroState),
          foreground: maybeUnBoxAndBuildArgument<Paint?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foreground'] : null, parentState: hydroState),
          height: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null?.toDouble(),
          letterSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['letterSpacing'] : null?.toDouble(),
          locale: maybeUnBoxAndBuildArgument<Locale?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
          shadows: maybeUnBoxAndBuildArgument<List<Shadow>?, Shadow>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadows'] : null, parentState: hydroState),
          textBaseline: maybeUnBoxEnum(values: TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
          wordSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['wordSpacing'] : null?.toDouble())
    ];
  });
  registerBoxer<TextStyle>(boxer: (
      {required TextStyle vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextStyle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
