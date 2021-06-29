import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  VMManagedTextStyle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
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
      List? fontFamilyFallback,
      List? fontFeatures,
      double? fontSize,
      FontStyle? fontStyle,
      FontWeight? fontWeight,
      Paint? foreground,
      double? height,
      double? letterSpacing,
      Locale? locale,
      List? shadows,
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
  table['textStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedTextStyle(
          table: args[0],
          hydroState: hydroState,
          background: maybeUnBoxAndBuildArgument<Paint?>(args[1]['background'],
              parentState: hydroState),
          color: maybeUnBoxAndBuildArgument<Color?>(args[1]['color'],
              parentState: hydroState),
          decoration: maybeUnBoxAndBuildArgument<TextDecoration?>(
              args[1]['decoration'],
              parentState: hydroState),
          decorationColor: maybeUnBoxAndBuildArgument<Color?>(
              args[1]['decorationColor'],
              parentState: hydroState),
          decorationStyle: maybeUnBoxEnum(
              values: TextDecorationStyle.values,
              boxedEnum: args[1]['decorationStyle']),
          decorationThickness: args[1]['decorationThickness']?.toDouble(),
          fontFamily: args[1]['fontFamily'],
          fontFamilyFallback: maybeUnBoxAndBuildArgument<List<String>?>(
              args[1]['fontFamilyFallback'],
              parentState: hydroState),
          fontFeatures: maybeUnBoxAndBuildArgument<List<FontFeature>?>(
              args[1]['fontFeatures'],
              parentState: hydroState),
          fontSize: args[1]['fontSize']?.toDouble(),
          fontStyle: maybeUnBoxEnum(
              values: FontStyle.values, boxedEnum: args[1]['fontStyle']),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?>(args[1]['fontWeight'],
              parentState: hydroState),
          foreground: maybeUnBoxAndBuildArgument<Paint?>(args[1]['foreground'],
              parentState: hydroState),
          height: args[1]['height']?.toDouble(),
          letterSpacing: args[1]['letterSpacing']?.toDouble(),
          locale: maybeUnBoxAndBuildArgument<Locale?>(args[1]['locale'], parentState: hydroState),
          shadows: maybeUnBoxAndBuildArgument<List<Shadow>?>(args[1]['shadows'], parentState: hydroState),
          textBaseline: maybeUnBoxEnum(values: TextBaseline.values, boxedEnum: args[1]['textBaseline']),
          wordSpacing: args[1]['wordSpacing']?.toDouble())
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
