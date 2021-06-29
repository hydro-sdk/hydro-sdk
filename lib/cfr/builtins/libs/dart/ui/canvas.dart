import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedCanvas extends VMManagedBox<Canvas> {
  VMManagedCanvas(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['save'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.save();
      return [];
    });
    table['saveLayer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.saveLayer(
          maybeUnBoxAndBuildArgument<Rect?>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['restore'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.restore();
      return [];
    });
    table['getSaveCount'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.getSaveCount()];
    });
    table['translate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.translate(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.scale(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['rotate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.rotate(args[1]?.toDouble());
      return [];
    });
    table['skew'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.skew(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['transform'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.transform(maybeUnBoxAndBuildArgument<Float64List>(args[1],
          parentState: hydroState));
      return [];
    });
    table['clipRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.clipRect(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          clipOp: maybeUnBoxEnum(
              values: ClipOp.values, boxedEnum: args[2]['clipOp']),
          doAntiAlias: args[2]['doAntiAlias']);
      return [];
    });
    table['clipRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.clipRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState),
          doAntiAlias: args[2]['doAntiAlias']);
      return [];
    });
    table['clipPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.clipPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          doAntiAlias: args[2]['doAntiAlias']);
      return [];
    });
    table['drawColor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawColor(
          maybeUnBoxAndBuildArgument<Color>(args[1], parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[2]));
      return [];
    });
    table['drawLine'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawLine(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawPaint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawPaint(
          maybeUnBoxAndBuildArgument<Paint>(args[1], parentState: hydroState));
      return [];
    });
    table['drawRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawRect(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['drawRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['drawDRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawDRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<RRect>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawOval'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawOval(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['drawCircle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawCircle(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawArc'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawArc(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4],
          maybeUnBoxAndBuildArgument<Paint>(args[5], parentState: hydroState));
      return [];
    });
    table['drawPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['drawImage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawImage(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawImageRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawImageRect(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[3], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[4], parentState: hydroState));
      return [];
    });
    table['drawImageNine'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawImageNine(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[3], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[4], parentState: hydroState));
      return [];
    });
    table['drawPicture'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawPicture(maybeUnBoxAndBuildArgument<Picture>(args[1],
          parentState: hydroState));
      return [];
    });
    table['drawParagraph'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawParagraph(
          maybeUnBoxAndBuildArgument<Paragraph>(args[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState));
      return [];
    });
    table['drawPoints'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawPoints(
          maybeUnBoxEnum(values: PointMode.values, boxedEnum: args[1]),
          maybeUnBoxAndBuildArgument<List<Offset>>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawRawPoints'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawRawPoints(
          maybeUnBoxEnum(values: PointMode.values, boxedEnum: args[1]),
          maybeUnBoxAndBuildArgument<Float32List>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawVertices'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawVertices(
          maybeUnBoxAndBuildArgument<Vertices>(args[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[2]),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['drawAtlas'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawAtlas(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<RSTransform>>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Rect>>(args[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Color>?>(args[4],
              parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[5]),
          maybeUnBoxAndBuildArgument<Rect?>(args[6], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[7], parentState: hydroState));
      return [];
    });
    table['drawRawAtlas'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawRawAtlas(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List>(args[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Int32List?>(args[4],
              parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[5]),
          maybeUnBoxAndBuildArgument<Rect?>(args[6], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[7], parentState: hydroState));
      return [];
    });
    table['drawShadow'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.drawShadow(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Color>(args[2], parentState: hydroState),
          args[3]?.toDouble(),
          args[4]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Canvas vmObject;
}

class RTManagedCanvas extends Canvas implements Box<Canvas> {
  RTManagedCanvas(PictureRecorder recorder, Rect? cullRect,
      {required this.table, required this.hydroState})
      : super(
          recorder,
          cullRect,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_save'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.save();
      return [];
    });
    table['_dart_saveLayer'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.saveLayer(
          maybeUnBoxAndBuildArgument<Rect?>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_restore'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.restore();
      return [];
    });
    table['_dart_getSaveCount'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.getSaveCount()];
    });
    table['_dart_translate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.translate(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_scale'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.scale(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_rotate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.rotate(args[1]?.toDouble());
      return [];
    });
    table['_dart_skew'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.skew(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_transform'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.transform(maybeUnBoxAndBuildArgument<Float64List>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_clipRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.clipRect(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          clipOp: maybeUnBoxEnum(
              values: ClipOp.values, boxedEnum: args[2]['clipOp']),
          doAntiAlias: args[2]['doAntiAlias']);
      return [];
    });
    table['_dart_clipRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.clipRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState),
          doAntiAlias: args[2]['doAntiAlias']);
      return [];
    });
    table['_dart_clipPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.clipPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          doAntiAlias: args[2]['doAntiAlias']);
      return [];
    });
    table['_dart_drawColor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawColor(
          maybeUnBoxAndBuildArgument<Color>(args[1], parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[2]));
      return [];
    });
    table['_dart_drawLine'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawLine(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawPaint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawPaint(
          maybeUnBoxAndBuildArgument<Paint>(args[1], parentState: hydroState));
      return [];
    });
    table['_dart_drawRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawRect(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_drawRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_drawDRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawDRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<RRect>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawOval'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawOval(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_drawCircle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawCircle(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawArc'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawArc(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4],
          maybeUnBoxAndBuildArgument<Paint>(args[5], parentState: hydroState));
      return [];
    });
    table['_dart_drawPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_drawImage'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawImage(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawImageRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawImageRect(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[3], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[4], parentState: hydroState));
      return [];
    });
    table['_dart_drawImageNine'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawImageNine(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[2], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect>(args[3], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[4], parentState: hydroState));
      return [];
    });
    table['_dart_drawPicture'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawPicture(maybeUnBoxAndBuildArgument<Picture>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_drawParagraph'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawParagraph(
          maybeUnBoxAndBuildArgument<Paragraph>(args[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState));
      return [];
    });
    table['_dart_drawPoints'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawPoints(
          maybeUnBoxEnum(values: PointMode.values, boxedEnum: args[1]),
          maybeUnBoxAndBuildArgument<List<Offset>>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawRawPoints'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawRawPoints(
          maybeUnBoxEnum(values: PointMode.values, boxedEnum: args[1]),
          maybeUnBoxAndBuildArgument<Float32List>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawVertices'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawVertices(
          maybeUnBoxAndBuildArgument<Vertices>(args[1],
              parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[2]),
          maybeUnBoxAndBuildArgument<Paint>(args[3], parentState: hydroState));
      return [];
    });
    table['_dart_drawAtlas'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawAtlas(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<RSTransform>>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Rect>>(args[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Color>?>(args[4],
              parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[5]),
          maybeUnBoxAndBuildArgument<Rect?>(args[6], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[7], parentState: hydroState));
      return [];
    });
    table['_dart_drawRawAtlas'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawRawAtlas(
          maybeUnBoxAndBuildArgument<Image>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List>(args[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List>(args[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Int32List?>(args[4],
              parentState: hydroState),
          maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[5]),
          maybeUnBoxAndBuildArgument<Rect?>(args[6], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint>(args[7], parentState: hydroState));
      return [];
    });
    table['_dart_drawShadow'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.drawShadow(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Color>(args[2], parentState: hydroState),
          args[3]?.toDouble(),
          args[4]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Canvas unwrap() => this;
  Canvas get vmObject => this;
  @override
  void save() {
    Closure closure = table["save"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void saveLayer(Rect? bounds, Paint paint) {
    Closure closure = table["saveLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void restore() {
    Closure closure = table["restore"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int getSaveCount() {
    Closure closure = table["getSaveCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void translate(double dx, double dy) {
    Closure closure = table["translate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scale(double sx, [double? sy]) {
    Closure closure = table["scale"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rotate(double radians) {
    Closure closure = table["rotate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void skew(double sx, double sy) {
    Closure closure = table["skew"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void transform(Float64List matrix4) {
    Closure closure = table["transform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clipRect(Rect rect,
      {ClipOp clipOp = ClipOp.intersect, bool doAntiAlias = true}) {
    Closure closure = table["clipRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clipRRect(RRect rrect, {bool doAntiAlias = true}) {
    Closure closure = table["clipRRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clipPath(Path path, {bool doAntiAlias = true}) {
    Closure closure = table["clipPath"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawColor(Color color, BlendMode blendMode) {
    Closure closure = table["drawColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawLine(Offset p1, Offset p2, Paint paint) {
    Closure closure = table["drawLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawPaint(Paint paint) {
    Closure closure = table["drawPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawRect(Rect rect, Paint paint) {
    Closure closure = table["drawRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawRRect(RRect rrect, Paint paint) {
    Closure closure = table["drawRRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawDRRect(RRect outer, RRect inner, Paint paint) {
    Closure closure = table["drawDRRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawOval(Rect rect, Paint paint) {
    Closure closure = table["drawOval"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawCircle(Offset c, double radius, Paint paint) {
    Closure closure = table["drawCircle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawArc(Rect rect, double startAngle, double sweepAngle, bool useCenter,
      Paint paint) {
    Closure closure = table["drawArc"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawPath(Path path, Paint paint) {
    Closure closure = table["drawPath"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawImage(Image image, Offset offset, Paint paint) {
    Closure closure = table["drawImage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawImageRect(Image image, Rect src, Rect dst, Paint paint) {
    Closure closure = table["drawImageRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawImageNine(Image image, Rect center, Rect dst, Paint paint) {
    Closure closure = table["drawImageNine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawPicture(Picture picture) {
    Closure closure = table["drawPicture"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawParagraph(Paragraph paragraph, Offset offset) {
    Closure closure = table["drawParagraph"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawPoints(PointMode pointMode, List points, Paint paint) {
    Closure closure = table["drawPoints"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawRawPoints(PointMode pointMode, Float32List points, Paint paint) {
    Closure closure = table["drawRawPoints"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawVertices(Vertices vertices, BlendMode blendMode, Paint paint) {
    Closure closure = table["drawVertices"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawAtlas(Image atlas, List transforms, List rects, List? colors,
      BlendMode? blendMode, Rect? cullRect, Paint paint) {
    Closure closure = table["drawAtlas"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawRawAtlas(Image atlas, Float32List rstTransforms, Float32List rects,
      Int32List? colors, BlendMode? blendMode, Rect? cullRect, Paint paint) {
    Closure closure = table["drawRawAtlas"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawShadow(
      Path path, Color color, double elevation, bool transparentOccluder) {
    Closure closure = table["drawShadow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCanvas({required HydroState hydroState, required HydroTable table}) {
  table['canvas'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedCanvas(
          maybeUnBoxAndBuildArgument<PictureRecorder>(args[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect?>(args[2], parentState: hydroState),
          table: args[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<Canvas>(boxer: (
      {required Canvas vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCanvas(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
