import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedParagraph extends VMManagedBox<Paragraph> {
  VMManagedParagraph(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.width,
      ];
    });
    table['getHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.height,
      ];
    });
    table['getLongestLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.longestLine,
      ];
    });
    table['getMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.minIntrinsicWidth,
      ];
    });
    table['getMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.maxIntrinsicWidth,
      ];
    });
    table['getAlphabeticBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.alphabeticBaseline,
      ];
    });
    table['getIdeographicBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.ideographicBaseline,
      ];
    });
    table['getDidExceedMaxLines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.didExceedMaxLines,
      ];
    });
    table['layout'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.layout(maybeUnBoxAndBuildArgument<ParagraphConstraints, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getBoxesForRange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getBoxesForRange(luaCallerArguments[1], luaCallerArguments[2],
                    boxHeightStyle: maybeUnBoxEnum(
                        values: BoxHeightStyle.values,
                        boxedEnum: luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['boxHeightStyle']
                            : null),
                    boxWidthStyle: maybeUnBoxEnum(
                        values: BoxWidthStyle.values,
                        boxedEnum: luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['boxWidthStyle']
                            : null))
                .map((x) => maybeBoxObject<TextBox>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBoxesForPlaceholders'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getBoxesForPlaceholders()
                .map((x) => maybeBoxObject<TextBox>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPositionForOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TextPosition>(
            object: vmObject.getPositionForOffset(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getWordBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TextRange>(
            object: vmObject.getWordBoundary(
                maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getLineBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<TextRange>(
            object: vmObject.getLineBoundary(
                maybeUnBoxAndBuildArgument<TextPosition, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['computeLineMetrics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .computeLineMetrics()
                .map((x) => maybeBoxObject<LineMetrics>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Paragraph vmObject;
}

void loadParagraph(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<Paragraph>(boxer: (
      {required Paragraph vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedParagraph(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
