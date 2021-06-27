import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedParagraph extends VMManagedBox<Paragraph> {
  VMManagedParagraph(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.width];
    });
    table['getHeight'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.height];
    });
    table['getLongestLine'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.longestLine];
    });
    table['getMinIntrinsicWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.minIntrinsicWidth];
    });
    table['getMaxIntrinsicWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.maxIntrinsicWidth];
    });
    table['getAlphabeticBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.alphabeticBaseline];
    });
    table['getIdeographicBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.ideographicBaseline];
    });
    table['getDidExceedMaxLines'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.didExceedMaxLines];
    });
    table['layout'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.layout(maybeUnBoxAndBuildArgument<ParagraphConstraints>(args[1],
          parentState: hydroState));
      return [];
    });
    table['getBoxesForRange'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getBoxesForRange(args[1], args[2],
                    boxHeightStyle: maybeUnBoxEnum(
                        values: BoxHeightStyle.values,
                        boxedEnum: args[3]['boxHeightStyle']),
                    boxWidthStyle: maybeUnBoxEnum(
                        values: BoxWidthStyle.values,
                        boxedEnum: args[3]['boxWidthStyle']))
                .map((x) => maybeBoxObject<TextBox>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getBoxesForPlaceholders'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getBoxesForPlaceholders()
                .map((x) => maybeBoxObject<TextBox>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getPositionForOffset'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextPosition>(
            object: vmObject.getPositionForOffset(
                maybeUnBoxAndBuildArgument<Offset>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getWordBoundary'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextRange>(
            object: vmObject.getWordBoundary(
                maybeUnBoxAndBuildArgument<TextPosition>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getLineBoundary'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextRange>(
            object: vmObject.getLineBoundary(
                maybeUnBoxAndBuildArgument<TextPosition>(args[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['computeLineMetrics'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .computeLineMetrics()
                .map((x) => maybeBoxObject<LineMetrics>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
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
