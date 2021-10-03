import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCanvas extends VMManagedBox<Canvas> {
  VMManagedCanvas(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['save'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.save();
      return [];
    });
    table['saveLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.saveLayer(
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['restore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.restore();
      return [];
    });
    table['getSaveCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getSaveCount(),
      ];
    });
    table['translate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.translate(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scale(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['rotate'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rotate(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['skew'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.skew(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.transform(maybeUnBoxAndBuildArgument<Float64List, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['clipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clipRect(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clipOp: maybeUnBoxEnum(
              values: ClipOp.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['clipOp']
                  : null),
          doAntiAlias: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['doAntiAlias']
              : null);
      return [];
    });
    table['clipRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clipRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          doAntiAlias: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['doAntiAlias']
              : null);
      return [];
    });
    table['clipPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clipPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          doAntiAlias: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['doAntiAlias']
              : null);
      return [];
    });
    table['drawColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawColor(
          maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['drawLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawLine(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawPaint(maybeUnBoxAndBuildArgument<Paint, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['drawRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawRect(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['drawRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['drawDRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawDRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawOval'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawOval(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['drawCircle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawCircle(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawArc'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawArc(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4],
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[5],
              parentState: hydroState));
      return [];
    });
    table['drawPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['drawImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawImage(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawImageRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawImageRect(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[4],
              parentState: hydroState));
      return [];
    });
    table['drawImageNine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawImageNine(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[4],
              parentState: hydroState));
      return [];
    });
    table['drawPicture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawPicture(maybeUnBoxAndBuildArgument<Picture, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['drawParagraph'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawParagraph(
          maybeUnBoxAndBuildArgument<Paragraph, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['drawPoints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawPoints(
          maybeUnBoxEnum(
              values: PointMode.values, boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<List<Offset>, Offset>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawRawPoints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawRawPoints(
          maybeUnBoxEnum(
              values: PointMode.values, boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<Float32List, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawVertices'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawVertices(
          maybeUnBoxAndBuildArgument<Vertices, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['drawAtlas'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawAtlas(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<RSTransform>, RSTransform>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Rect>, Rect>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Color>?, Color>(luaCallerArguments[4],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[5]),
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[6],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[7],
              parentState: hydroState));
      return [];
    });
    table['drawRawAtlas'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawRawAtlas(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List, dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Int32List?, dynamic>(luaCallerArguments[4],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[5]),
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[6],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[7],
              parentState: hydroState));
      return [];
    });
    table['drawShadow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.drawShadow(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]);
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_save'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.save();
      return [];
    });
    table['_dart_saveLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.saveLayer(
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_restore'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.restore();
      return [];
    });
    table['_dart_getSaveCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getSaveCount()];
    });
    table['_dart_translate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.translate(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_scale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scale(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_rotate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rotate(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_skew'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.skew(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.transform(maybeUnBoxAndBuildArgument<Float64List, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_clipRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clipRect(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clipOp: maybeUnBoxEnum(
              values: ClipOp.values,
              boxedEnum: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['clipOp']
                  : null),
          doAntiAlias: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['doAntiAlias']
              : null);
      return [];
    });
    table['_dart_clipRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clipRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          doAntiAlias: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['doAntiAlias']
              : null);
      return [];
    });
    table['_dart_clipPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clipPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          doAntiAlias: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['doAntiAlias']
              : null);
      return [];
    });
    table['_dart_drawColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawColor(
          maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_drawLine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawLine(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawPaint(maybeUnBoxAndBuildArgument<Paint, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_drawRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawRect(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawDRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawDRRect(
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<RRect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawOval'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawOval(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawCircle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawCircle(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawArc'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawArc(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4],
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[5],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawImage(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawImageRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawImageRect(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[4],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawImageNine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawImageNine(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[4],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawPicture'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawPicture(maybeUnBoxAndBuildArgument<Picture, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_drawParagraph'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawParagraph(
          maybeUnBoxAndBuildArgument<Paragraph, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawPoints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawPoints(
          maybeUnBoxEnum(
              values: PointMode.values, boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<List<Offset>, Offset>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawRawPoints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawRawPoints(
          maybeUnBoxEnum(
              values: PointMode.values, boxedEnum: luaCallerArguments[1]),
          maybeUnBoxAndBuildArgument<Float32List, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawVertices'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawVertices(
          maybeUnBoxAndBuildArgument<Vertices, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[2]),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawAtlas'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawAtlas(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<RSTransform>, RSTransform>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Rect>, Rect>(luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<List<Color>?, Color>(luaCallerArguments[4],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[5]),
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[6],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[7],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawRawAtlas'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawRawAtlas(
          maybeUnBoxAndBuildArgument<Image, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Float32List, dynamic>(
              luaCallerArguments[3],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Int32List?, dynamic>(luaCallerArguments[4],
              parentState: hydroState),
          maybeUnBoxEnum(
              values: BlendMode.values, boxedEnum: luaCallerArguments[5]),
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[6],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Paint, dynamic>(luaCallerArguments[7],
              parentState: hydroState));
      return [];
    });
    table['_dart_drawShadow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawShadow(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Color, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]);
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
  table['canvas'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedCanvas(
          maybeUnBoxAndBuildArgument<PictureRecorder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Rect?, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
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
