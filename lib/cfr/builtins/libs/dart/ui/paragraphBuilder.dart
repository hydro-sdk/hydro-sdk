import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedParagraphBuilder extends VMManagedBox<ParagraphBuilder> {
  VMManagedParagraphBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPlaceholderCount'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.placeholderCount];
    });
    table['getPlaceholderScales'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.placeholderScales,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['pushStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.pushStyle(maybeUnBoxAndBuildArgument<TextStyle>(args[1],
          parentState: hydroState));
      return [];
    });
    table['pop'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.pop();
      return [];
    });
    table['addText'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addText(args[1]);
      return [];
    });
    table['addPlaceholder'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addPlaceholder(
          args[1]?.toDouble(),
          args[2]?.toDouble(),
          maybeUnBoxEnum(
              values: PlaceholderAlignment.values, boxedEnum: args[3]),
          baseline: maybeUnBoxEnum(
              values: TextBaseline.values, boxedEnum: args[4]['baseline']),
          baselineOffset: args[4]['baselineOffset']?.toDouble(),
          scale: args[4]['scale']?.toDouble());
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Paragraph>(
            object: vmObject.build(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final ParagraphBuilder vmObject;
}

class RTManagedParagraphBuilder extends ParagraphBuilder
    implements Box<ParagraphBuilder> {
  RTManagedParagraphBuilder(ParagraphStyle style,
      {required this.table, required this.hydroState})
      : super(
          style,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getPlaceholderCount'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.placeholderCount];
    });
    table['_dart_getPlaceholderScales'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.placeholderScales];
    });
    table['_dart_pushStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.pushStyle(maybeUnBoxAndBuildArgument<TextStyle>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_pop'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.pop();
      return [];
    });
    table['_dart_addText'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addText(args[1]);
      return [];
    });
    table['_dart_addPlaceholder'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addPlaceholder(
          args[1]?.toDouble(),
          args[2]?.toDouble(),
          maybeUnBoxEnum(
              values: PlaceholderAlignment.values, boxedEnum: args[3]),
          baseline: maybeUnBoxEnum(
              values: TextBaseline.values, boxedEnum: args[4]['baseline']),
          baselineOffset: args[4]['baselineOffset']?.toDouble(),
          scale: args[4]['scale']?.toDouble());
      return [];
    });
    table['_dart_build'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Paragraph>(
            object: super.build(), hydroState: hydroState, table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  ParagraphBuilder unwrap() => this;
  ParagraphBuilder get vmObject => this;
  @override
  int get placeholderCount {
    Closure closure = table["getPlaceholderCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<double> get placeholderScales {
    Closure closure = table["getPlaceholderScales"];
    return maybeUnBoxAndBuildArgument<List<double>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void pushStyle(TextStyle style) {
    Closure closure = table["pushStyle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void pop() {
    Closure closure = table["pop"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addText(String text) {
    Closure closure = table["addText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPlaceholder(
      double width, double height, PlaceholderAlignment alignment,
      {TextBaseline? baseline, double? baselineOffset, double scale = 1.0}) {
    Closure closure = table["addPlaceholder"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Paragraph build() {
    Closure closure = table["build"];
    return maybeUnBoxAndBuildArgument<Paragraph>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadParagraphBuilder(
    {required HydroState hydroState, required HydroTable table}) {
  table['paragraphBuilder'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedParagraphBuilder(
          maybeUnBoxAndBuildArgument<ParagraphStyle>(args[1],
              parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<ParagraphBuilder>(boxer: (
      {required ParagraphBuilder vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedParagraphBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
