import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedParagraphStyle extends VMManagedBox<ParagraphStyle> {
  VMManagedParagraphStyle(
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
  table['paragraphStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedParagraphStyle(
          table: args[0],
          hydroState: hydroState,
          ellipsis: args[1]['ellipsis'],
          fontFamily: args[1]['fontFamily'],
          fontSize: args[1]['fontSize']?.toDouble(),
          fontStyle: maybeUnBoxEnum(
              values: FontStyle.values, boxedEnum: args[1]['fontStyle']),
          fontWeight: maybeUnBoxAndBuildArgument<FontWeight?>(
              args[1]['fontWeight'],
              parentState: hydroState),
          height: args[1]['height']?.toDouble(),
          locale: maybeUnBoxAndBuildArgument<Locale?>(args[1]['locale'],
              parentState: hydroState),
          maxLines: args[1]['maxLines'],
          strutStyle: maybeUnBoxAndBuildArgument<StrutStyle?>(
              args[1]['strutStyle'],
              parentState: hydroState),
          textAlign: maybeUnBoxEnum(
              values: TextAlign.values, boxedEnum: args[1]['textAlign']),
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: args[1]['textDirection']),
          textHeightBehavior: maybeUnBoxAndBuildArgument<TextHeightBehavior?>(
              args[1]['textHeightBehavior'],
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
