import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedParagraphBuilder extends VMManagedBox<ParagraphBuilder> {
  VMManagedParagraphBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPlaceholderCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.placeholderCount,
      ];
    });
    table['getPlaceholderScales'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.placeholderScales,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['pushStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.pushStyle(maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['pop'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.pop();
      return [];
    });
    table['addText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addText(luaCallerArguments[1]);
      return [];
    });
    table['addPlaceholder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPlaceholder(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          maybeUnBoxEnum(
              values: PlaceholderAlignment.values,
              boxedEnum: luaCallerArguments[3]),
          baseline: maybeUnBoxEnum(
              values: TextBaseline.values,
              boxedEnum: luaCallerArguments.length >= 5
                  ? luaCallerArguments[4]['baseline']
                  : null),
          baselineOffset: luaCallerArguments.length >= 5
              ? luaCallerArguments[4]['baselineOffset']
              : null?.toDouble(),
          scale: luaCallerArguments.length >= 5
              ? luaCallerArguments[4]['scale']
              : null?.toDouble());
      return [];
    });
    table['build'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Paragraph>(
            object: vmObject.build(),
            hydroState: hydroState,
            table: HydroTable()),
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getPlaceholderCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.placeholderCount];
    });
    table['_dart_getPlaceholderScales'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.placeholderScales];
    });
    table['_dart_pushStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.pushStyle(maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_pop'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.pop();
      return [];
    });
    table['_dart_addText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addText(luaCallerArguments[1]);
      return [];
    });
    table['_dart_addPlaceholder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPlaceholder(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          maybeUnBoxEnum(
              values: PlaceholderAlignment.values,
              boxedEnum: luaCallerArguments[3]),
          baseline: maybeUnBoxEnum(
              values: TextBaseline.values,
              boxedEnum: luaCallerArguments.length >= 5
                  ? luaCallerArguments[4]['baseline']
                  : null),
          baselineOffset: luaCallerArguments.length >= 5
              ? luaCallerArguments[4]['baselineOffset']
              : null?.toDouble(),
          scale: luaCallerArguments.length >= 5
              ? luaCallerArguments[4]['scale']
              : null?.toDouble());
      return [];
    });
    table['_dart_build'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    return maybeUnBoxAndBuildArgument<List<double>, double>(
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
    return maybeUnBoxAndBuildArgument<Paragraph, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadParagraphBuilder(
    {required HydroState hydroState, required HydroTable table}) {
  table['paragraphBuilder'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedParagraphBuilder(
          maybeUnBoxAndBuildArgument<ParagraphStyle, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
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
