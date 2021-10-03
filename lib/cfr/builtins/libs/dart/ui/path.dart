import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPath extends VMManagedBox<Path> {
  VMManagedPath(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getFillType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        PathFillType.values.indexWhere((x) {
          return x == vmObject.fillType;
        }),
      ];
    });
    table['setFillType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.fillType = (maybeUnBoxEnum(
          values: PathFillType.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveTo'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.moveTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['relativeMoveTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.relativeMoveTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['lineTo'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.lineTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['relativeLineTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.relativeLineTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['quadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.quadraticBezierTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble());
      return [];
    });
    table['relativeQuadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.relativeQuadraticBezierTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble());
      return [];
    });
    table['cubicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cubicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble(),
          luaCallerArguments[6]?.toDouble());
      return [];
    });
    table['relativeCubicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.relativeCubicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble(),
          luaCallerArguments[6]?.toDouble());
      return [];
    });
    table['conicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.conicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble());
      return [];
    });
    table['relativeConicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.relativeConicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble());
      return [];
    });
    table['arcTo'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.arcTo(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]);
      return [];
    });
    table['arcToPoint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.arcToPoint(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clockwise: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['clockwise']
              : null,
          largeArc: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['largeArc']
              : null,
          radius: maybeUnBoxAndBuildArgument<Radius, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['radius']
                  : null,
              parentState: hydroState),
          rotation: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['rotation']
              : null?.toDouble());
      return [];
    });
    table['relativeArcToPoint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.relativeArcToPoint(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clockwise: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['clockwise']
              : null,
          largeArc: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['largeArc']
              : null,
          radius: maybeUnBoxAndBuildArgument<Radius, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['radius']
                  : null,
              parentState: hydroState),
          rotation: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['rotation']
              : null?.toDouble());
      return [];
    });
    table['addRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addRect(maybeUnBoxAndBuildArgument<Rect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addOval'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addOval(maybeUnBoxAndBuildArgument<Rect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addArc'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addArc(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble());
      return [];
    });
    table['addPolygon'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPolygon(
          maybeUnBoxAndBuildArgument<List<Offset>, Offset>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['addRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addRRect(maybeUnBoxAndBuildArgument<RRect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['addPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['matrix4']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['extendWithPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.extendWithPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['matrix4']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.close();
      return [];
    });
    table['reset'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.reset();
      return [];
    });
    table['contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Offset, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['shift'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Path>(
            object: vmObject.shift(maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Path>(
            object: vmObject.transform(
                maybeUnBoxAndBuildArgument<Float64List, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.getBounds(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['computeMetrics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PathMetrics>(
            object: vmObject.computeMetrics(
                forceClosed: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['forceClosed']
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Path vmObject;
}

class RTManagedPath extends Path implements Box<Path> {
  RTManagedPath({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getFillType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.fillType];
    });
    table['_dart_setFillType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.fillType = (maybeUnBoxEnum(
          values: PathFillType.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.moveTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_relativeMoveTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.relativeMoveTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_lineTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.lineTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_relativeLineTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.relativeLineTo(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble());
      return [];
    });
    table['_dart_quadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.quadraticBezierTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble());
      return [];
    });
    table['_dart_relativeQuadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.relativeQuadraticBezierTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble());
      return [];
    });
    table['_dart_cubicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cubicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble(),
          luaCallerArguments[6]?.toDouble());
      return [];
    });
    table['_dart_relativeCubicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.relativeCubicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble(),
          luaCallerArguments[6]?.toDouble());
      return [];
    });
    table['_dart_conicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.conicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble());
      return [];
    });
    table['_dart_relativeConicTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.relativeConicTo(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble());
      return [];
    });
    table['_dart_arcTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.arcTo(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]);
      return [];
    });
    table['_dart_arcToPoint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.arcToPoint(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clockwise: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['clockwise']
              : null,
          largeArc: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['largeArc']
              : null,
          radius: maybeUnBoxAndBuildArgument<Radius, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['radius']
                  : null,
              parentState: hydroState),
          rotation: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['rotation']
              : null?.toDouble());
      return [];
    });
    table['_dart_relativeArcToPoint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.relativeArcToPoint(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          clockwise: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['clockwise']
              : null,
          largeArc: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['largeArc']
              : null,
          radius: maybeUnBoxAndBuildArgument<Radius, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['radius']
                  : null,
              parentState: hydroState),
          rotation: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['rotation']
              : null?.toDouble());
      return [];
    });
    table['_dart_addRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addRect(maybeUnBoxAndBuildArgument<Rect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addOval'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addOval(maybeUnBoxAndBuildArgument<Rect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addArc'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addArc(
          maybeUnBoxAndBuildArgument<Rect, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble());
      return [];
    });
    table['_dart_addPolygon'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPolygon(
          maybeUnBoxAndBuildArgument<List<Offset>, Offset>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['_dart_addRRect'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addRRect(maybeUnBoxAndBuildArgument<RRect, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_addPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['matrix4']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_extendWithPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.extendWithPath(
          maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List?, dynamic>(
              luaCallerArguments.length >= 4
                  ? luaCallerArguments[3]['matrix4']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_close'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.close();
      return [];
    });
    table['_dart_reset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.reset();
      return [];
    });
    table['_dart_contains'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.contains(maybeUnBoxAndBuildArgument<Offset, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_shift'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Path>(
            object: super.shift(maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Path>(
            object: super.transform(
                maybeUnBoxAndBuildArgument<Float64List, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: super.getBounds(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_computeMetrics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PathMetrics>(
            object: super.computeMetrics(
                forceClosed: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['forceClosed']
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Path unwrap() => this;
  Path get vmObject => this;
  @override
  PathFillType get fillType {
    Closure closure = table["getFillType"];
    return maybeUnBoxEnum(
        values: PathFillType.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set fillType(PathFillType value) {
    Closure closure = table["setFillType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void moveTo(double x, double y) {
    Closure closure = table["moveTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void relativeMoveTo(double dx, double dy) {
    Closure closure = table["relativeMoveTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void lineTo(double x, double y) {
    Closure closure = table["lineTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void relativeLineTo(double dx, double dy) {
    Closure closure = table["relativeLineTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void quadraticBezierTo(double x1, double y1, double x2, double y2) {
    Closure closure = table["quadraticBezierTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void relativeQuadraticBezierTo(double x1, double y1, double x2, double y2) {
    Closure closure = table["relativeQuadraticBezierTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void cubicTo(
      double x1, double y1, double x2, double y2, double x3, double y3) {
    Closure closure = table["cubicTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void relativeCubicTo(
      double x1, double y1, double x2, double y2, double x3, double y3) {
    Closure closure = table["relativeCubicTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void conicTo(double x1, double y1, double x2, double y2, double w) {
    Closure closure = table["conicTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void relativeConicTo(double x1, double y1, double x2, double y2, double w) {
    Closure closure = table["relativeConicTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void arcTo(
      Rect rect, double startAngle, double sweepAngle, bool forceMoveTo) {
    Closure closure = table["arcTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void arcToPoint(Offset arcEnd,
      {bool clockwise = true,
      bool largeArc = false,
      Radius radius = Radius.zero,
      double rotation = 0.0}) {
    Closure closure = table["arcToPoint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void relativeArcToPoint(Offset arcEndDelta,
      {bool clockwise = true,
      bool largeArc = false,
      Radius radius = Radius.zero,
      double rotation = 0.0}) {
    Closure closure = table["relativeArcToPoint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addRect(Rect rect) {
    Closure closure = table["addRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addOval(Rect oval) {
    Closure closure = table["addOval"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addArc(Rect oval, double startAngle, double sweepAngle) {
    Closure closure = table["addArc"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPolygon(List points, bool close) {
    Closure closure = table["addPolygon"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addRRect(RRect rrect) {
    Closure closure = table["addRRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPath(Path path, Offset offset, {Float64List? matrix4}) {
    Closure closure = table["addPath"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void extendWithPath(Path path, Offset offset, {Float64List? matrix4}) {
    Closure closure = table["extendWithPath"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void close() {
    Closure closure = table["close"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void reset() {
    Closure closure = table["reset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool contains(Offset point) {
    Closure closure = table["contains"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Path shift(Offset offset) {
    Closure closure = table["shift"];
    return maybeUnBoxAndBuildArgument<Path, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Path transform(Float64List matrix4) {
    Closure closure = table["transform"];
    return maybeUnBoxAndBuildArgument<Path, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect getBounds() {
    Closure closure = table["getBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  PathMetrics computeMetrics({bool forceClosed = false}) {
    Closure closure = table["computeMetrics"];
    return maybeUnBoxAndBuildArgument<PathMetrics, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadPath({required HydroState hydroState, required HydroTable table}) {
  table['path'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPath(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['pathFrom'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Path>(
          object: Path.from(maybeUnBoxAndBuildArgument<Path, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['pathCombine'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Path>(
          object: Path.combine(
              maybeUnBoxEnum(
                  values: PathOperation.values,
                  boxedEnum: luaCallerArguments[1]),
              maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Path, dynamic>(luaCallerArguments[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Path>(boxer: (
      {required Path vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPath(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
