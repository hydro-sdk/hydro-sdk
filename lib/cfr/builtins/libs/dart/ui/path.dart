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

class VMManagedPath extends VMManagedBox<Path> {
  VMManagedPath(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getFillType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        PathFillType.values.indexWhere((x) {
          return x == vmObject.fillType;
        })
      ];
    });
    table['setFillType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.fillType =
          (maybeUnBoxEnum(values: PathFillType.values, boxedEnum: args[1]));
      return [];
    });
    table['moveTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.moveTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['relativeMoveTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.relativeMoveTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['lineTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.lineTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['relativeLineTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.relativeLineTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['quadraticBezierTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.quadraticBezierTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble());
      return [];
    });
    table['relativeQuadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.relativeQuadraticBezierTo(args[1]?.toDouble(),
          args[2]?.toDouble(), args[3]?.toDouble(), args[4]?.toDouble());
      return [];
    });
    table['cubicTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.cubicTo(
          args[1]?.toDouble(),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4]?.toDouble(),
          args[5]?.toDouble(),
          args[6]?.toDouble());
      return [];
    });
    table['relativeCubicTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.relativeCubicTo(
          args[1]?.toDouble(),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4]?.toDouble(),
          args[5]?.toDouble(),
          args[6]?.toDouble());
      return [];
    });
    table['conicTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.conicTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble(), args[5]?.toDouble());
      return [];
    });
    table['relativeConicTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.relativeConicTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble(), args[5]?.toDouble());
      return [];
    });
    table['arcTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.arcTo(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4]);
      return [];
    });
    table['arcToPoint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.arcToPoint(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          clockwise: args[2]['clockwise'],
          largeArc: args[2]['largeArc'],
          radius: maybeUnBoxAndBuildArgument<Radius>(args[2]['radius'],
              parentState: hydroState),
          rotation: args[2]['rotation']?.toDouble());
      return [];
    });
    table['relativeArcToPoint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.relativeArcToPoint(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          clockwise: args[2]['clockwise'],
          largeArc: args[2]['largeArc'],
          radius: maybeUnBoxAndBuildArgument<Radius>(args[2]['radius'],
              parentState: hydroState),
          rotation: args[2]['rotation']?.toDouble());
      return [];
    });
    table['addRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addRect(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState));
      return [];
    });
    table['addOval'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addOval(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState));
      return [];
    });
    table['addArc'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addArc(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          args[3]?.toDouble());
      return [];
    });
    table['addPolygon'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addPolygon(
          maybeUnBoxAndBuildArgument<List<Offset>>(args[1],
              parentState: hydroState),
          args[2]);
      return [];
    });
    table['addRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState));
      return [];
    });
    table['addPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.addPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List>(args[3]['matrix4'],
              parentState: hydroState));
      return [];
    });
    table['extendWithPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.extendWithPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List>(args[3]['matrix4'],
              parentState: hydroState));
      return [];
    });
    table['close'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.close();
      return [];
    });
    table['reset'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.reset();
      return [];
    });
    table['contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.contains(maybeUnBoxAndBuildArgument<Offset>(args[1],
            parentState: hydroState))
      ];
    });
    table['shift'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Path>(
            object: vmObject.shift(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['transform'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Path>(
            object: vmObject.transform(maybeUnBoxAndBuildArgument<Float64List>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getBounds'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.getBounds(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['computeMetrics'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PathMetrics>(
            object:
                vmObject.computeMetrics(forceClosed: args[1]['forceClosed']),
            hydroState: hydroState,
            table: HydroTable())
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getFillType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.fillType];
    });
    table['_dart_setFillType'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.fillType =
          (maybeUnBoxEnum(values: PathFillType.values, boxedEnum: args[1]));
      return [];
    });
    table['_dart_moveTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.moveTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_relativeMoveTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.relativeMoveTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_lineTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.lineTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_relativeLineTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.relativeLineTo(args[1]?.toDouble(), args[2]?.toDouble());
      return [];
    });
    table['_dart_quadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.quadraticBezierTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble());
      return [];
    });
    table['_dart_relativeQuadraticBezierTo'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.relativeQuadraticBezierTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble());
      return [];
    });
    table['_dart_cubicTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.cubicTo(
          args[1]?.toDouble(),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4]?.toDouble(),
          args[5]?.toDouble(),
          args[6]?.toDouble());
      return [];
    });
    table['_dart_relativeCubicTo'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.relativeCubicTo(
          args[1]?.toDouble(),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4]?.toDouble(),
          args[5]?.toDouble(),
          args[6]?.toDouble());
      return [];
    });
    table['_dart_conicTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.conicTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble(), args[5]?.toDouble());
      return [];
    });
    table['_dart_relativeConicTo'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.relativeConicTo(args[1]?.toDouble(), args[2]?.toDouble(),
          args[3]?.toDouble(), args[4]?.toDouble(), args[5]?.toDouble());
      return [];
    });
    table['_dart_arcTo'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.arcTo(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          args[3]?.toDouble(),
          args[4]);
      return [];
    });
    table['_dart_arcToPoint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.arcToPoint(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          clockwise: args[2]['clockwise'],
          largeArc: args[2]['largeArc'],
          radius: maybeUnBoxAndBuildArgument<Radius>(args[2]['radius'],
              parentState: hydroState),
          rotation: args[2]['rotation']?.toDouble());
      return [];
    });
    table['_dart_relativeArcToPoint'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.relativeArcToPoint(
          maybeUnBoxAndBuildArgument<Offset>(args[1], parentState: hydroState),
          clockwise: args[2]['clockwise'],
          largeArc: args[2]['largeArc'],
          radius: maybeUnBoxAndBuildArgument<Radius>(args[2]['radius'],
              parentState: hydroState),
          rotation: args[2]['rotation']?.toDouble());
      return [];
    });
    table['_dart_addRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addRect(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState));
      return [];
    });
    table['_dart_addOval'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addOval(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState));
      return [];
    });
    table['_dart_addArc'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addArc(
          maybeUnBoxAndBuildArgument<Rect>(args[1], parentState: hydroState),
          args[2]?.toDouble(),
          args[3]?.toDouble());
      return [];
    });
    table['_dart_addPolygon'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addPolygon(
          maybeUnBoxAndBuildArgument<List<Offset>>(args[1],
              parentState: hydroState),
          args[2]);
      return [];
    });
    table['_dart_addRRect'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addRRect(
          maybeUnBoxAndBuildArgument<RRect>(args[1], parentState: hydroState));
      return [];
    });
    table['_dart_addPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.addPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List>(args[3]['matrix4'],
              parentState: hydroState));
      return [];
    });
    table['_dart_extendWithPath'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.extendWithPath(
          maybeUnBoxAndBuildArgument<Path>(args[1], parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset>(args[2], parentState: hydroState),
          matrix4: maybeUnBoxAndBuildArgument<Float64List>(args[3]['matrix4'],
              parentState: hydroState));
      return [];
    });
    table['_dart_close'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.close();
      return [];
    });
    table['_dart_reset'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.reset();
      return [];
    });
    table['_dart_contains'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.contains(maybeUnBoxAndBuildArgument<Offset>(args[1],
            parentState: hydroState))
      ];
    });
    table['_dart_shift'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Path>(
            object: super.shift(maybeUnBoxAndBuildArgument<Offset>(args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_transform'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Path>(
            object: super.transform(maybeUnBoxAndBuildArgument<Float64List>(
                args[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getBounds'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Rect>(
            object: super.getBounds(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_computeMetrics'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<PathMetrics>(
            object: super.computeMetrics(forceClosed: args[1]['forceClosed']),
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
  void addPolygon(List<Offset> points, bool close) {
    Closure closure = table["addPolygon"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addRRect(RRect rrect) {
    Closure closure = table["addRRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPath(Path path, Offset offset, {Float64List ?matrix4}) {
    Closure closure = table["addPath"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void extendWithPath(Path path, Offset offset, {Float64List ?matrix4}) {
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
    return maybeUnBoxAndBuildArgument<Path>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Path transform(Float64List matrix4) {
    Closure closure = table["transform"];
    return maybeUnBoxAndBuildArgument<Path>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect getBounds() {
    Closure closure = table["getBounds"];
    return maybeUnBoxAndBuildArgument<Rect>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  PathMetrics computeMetrics({bool forceClosed = false}) {
    Closure closure = table["computeMetrics"];
    return maybeUnBoxAndBuildArgument<PathMetrics>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadPath({required HydroState hydroState, required HydroTable table}) {
  table['path'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedPath(table: args[0], hydroState: hydroState)];
  });
  table['pathFrom'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Path>(
          object: Path.from(maybeUnBoxAndBuildArgument<Path>(args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['pathCombine'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Path>(
          object: Path.combine(
              maybeUnBoxEnum(values: PathOperation.values, boxedEnum: args[1]),
              maybeUnBoxAndBuildArgument<Path>(args[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Path>(args[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
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
