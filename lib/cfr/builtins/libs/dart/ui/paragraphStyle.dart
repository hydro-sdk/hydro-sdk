import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedParagraphStyle extends VMManagedBox<ParagraphStyle> {
  VMManagedParagraphStyle(
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

  final ParagraphStyle vmObject;
}

class RTManagedParagraphStyle extends ParagraphStyle
    implements Box<ParagraphStyle> {
  RTManagedParagraphStyle(
      {String? ellipsis,
      String? fontFamily,
      double? fontSize,
      FontStyle? fontStyle,
      FontWeight? fontWeight,
      double? height,
      Locale? locale,
      int? maxLines,
      StrutStyle? strutStyle,
      TextAlign? textAlign,
      TextDirection? textDirection,
      TextHeightBehavior? textHeightBehavior,
      required this.table,
      required this.hydroState})
      : super(
            ellipsis: ellipsis,
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontStyle: fontStyle,
            fontWeight: fontWeight,
            height: height,
            locale: locale,
            maxLines: maxLines,
            strutStyle: strutStyle,
            textAlign: textAlign,
            textDirection: textDirection,
            textHeightBehavior: textHeightBehavior) {
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

  ParagraphStyle unwrap() => this;
  ParagraphStyle get vmObject => this;
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

void loadParagraphStyle(
    {required HydroState hydroState, required HydroTable table}) {
  table['paragraphStyle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedParagraphStyle(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          ellipsis: luaCallerArguments[1]['ellipsis'],
          fontFamily: luaCallerArguments[1]['fontFamily'],
          fontSize: luaCallerArguments[1]['fontSize']?.toDouble(),
          fontStyle: maybeUnBoxEnum(
              values: FontStyle.values,
              boxedEnum: luaCallerArguments[1]['fontStyle']),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?>(
              luaCallerArguments[1]['fontWeight'],
              parentState: hydroState),
          height: luaCallerArguments[1]['height']?.toDouble(),
          locale: maybeUnBoxAndBuildArgument<Locale?>(
              luaCallerArguments[1]['locale'],
              parentState: hydroState),
          maxLines: luaCallerArguments[1]['maxLines'],
          strutStyle: maybeUnBoxAndBuildArgument<StrutStyle?>(
              luaCallerArguments[1]['strutStyle'],
              parentState: hydroState),
          textAlign: maybeUnBoxEnum(
              values: TextAlign.values,
              boxedEnum: luaCallerArguments[1]['textAlign']),
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: luaCallerArguments[1]['textDirection']),
          textHeightBehavior: maybeUnBoxAndBuildArgument<TextHeightBehavior?>(
              luaCallerArguments[1]['textHeightBehavior'],
              parentState: hydroState))
    ];
  });
  registerBoxer<ParagraphStyle>(boxer: (
      {required ParagraphStyle vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedParagraphStyle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}