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
          background: maybeUnBoxAndBuildArgument<Paint?>(luaCallerArguments[1]['background'],
              parentState: hydroState),
          color: maybeUnBoxAndBuildArgument<Color?>(luaCallerArguments[1]['color'],
              parentState: hydroState),
          decoration: maybeUnBoxAndBuildArgument<TextDecoration?>(luaCallerArguments[1]['decoration'],
              parentState: hydroState),
          decorationColor: maybeUnBoxAndBuildArgument<Color?>(
              luaCallerArguments[1]['decorationColor'],
              parentState: hydroState),
          decorationStyle: maybeUnBoxEnum(
              values: TextDecorationStyle.values,
              boxedEnum: luaCallerArguments[1]['decorationStyle']),
          decorationThickness:
              luaCallerArguments[1]['decorationThickness']?.toDouble(),
          fontFamily: luaCallerArguments[1]['fontFamily'],
          fontFamilyFallback: maybeUnBoxAndBuildArgument<List<String>?>(
              luaCallerArguments[1]['fontFamilyFallback'],
              parentState: hydroState),
          fontFeatures: maybeUnBoxAndBuildArgument<List<FontFeature>?>(
              luaCallerArguments[1]['fontFeatures'],
              parentState: hydroState),
          fontSize: luaCallerArguments[1]['fontSize']?.toDouble(),
          fontStyle: maybeUnBoxEnum(values: FontStyle.values, boxedEnum: luaCallerArguments[1]['fontStyle']),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?>(luaCallerArguments[1]['fontWeight'], parentState: hydroState),
          foreground: maybeUnBoxAndBuildArgument<Paint?>(luaCallerArguments[1]['foreground'], parentState: hydroState),
          height: luaCallerArguments[1]['height']?.toDouble(),
          letterSpacing: luaCallerArguments[1]['letterSpacing']?.toDouble(),
          locale: maybeUnBoxAndBuildArgument<Locale?>(luaCallerArguments[1]['locale'], parentState: hydroState),
          shadows: maybeUnBoxAndBuildArgument<List<Shadow>?>(luaCallerArguments[1]['shadows'], parentState: hydroState),
          textBaseline: maybeUnBoxEnum(values: TextBaseline.values, boxedEnum: luaCallerArguments[1]['textBaseline']),
          wordSpacing: luaCallerArguments[1]['wordSpacing']?.toDouble())
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
