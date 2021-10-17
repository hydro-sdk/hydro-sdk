import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedOffset extends VMManagedBox<Offset> {
  VMManagedOffset(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDx'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.dx,
      ];
    });
    table['getDy'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.dy,
      ];
    });
    table['getDistance'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.distance,
      ];
    });
    table['getDistanceSquared'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.distanceSquared,
      ];
    });
    table['getDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.direction,
      ];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['translate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.translate(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
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
    table['getIsInfinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isInfinite,
      ];
    });
    table['getIsFinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFinite,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Offset vmObject;
}

class RTManagedOffset extends Offset implements Box<Offset> {
  RTManagedOffset(double dx$, double dy$,
      {required this.table, required this.hydroState})
      : super(
          dx$,
          dy$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getDx'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.dx];
    });
    table['_dart_getDy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.dy];
    });
    table['_dart_getDistance'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.distance];
    });
    table['_dart_getDistanceSquared'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.distanceSquared];
    });
    table['_dart_getDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.direction];
    });
    table['_dart_scale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.scale(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_translate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.translate(luaCallerArguments[1]?.toDouble(),
                luaCallerArguments[2]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getIsInfinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isInfinite];
    });
    table['_dart_getIsFinite'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isFinite];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Offset unwrap() => this;
  Offset get vmObject => this;
  @override
  double get dx {
    Closure closure = table["getDx"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get dy {
    Closure closure = table["getDy"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get distance {
    Closure closure = table["getDistance"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get distanceSquared {
    Closure closure = table["getDistanceSquared"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double get direction {
    Closure closure = table["getDirection"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Offset scale(double scaleX, double scaleY) {
    Closure closure = table["scale"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Offset translate(double translateX, double translateY) {
    Closure closure = table["translate"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

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

  @override
  bool get isInfinite {
    Closure closure = table["getIsInfinite"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isFinite {
    Closure closure = table["getIsFinite"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadOffset({required HydroState hydroState, required HydroTable table}) {
  table['offset'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedOffset(
          luaCallerArguments[1]?.toDouble(), luaCallerArguments[2]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['offsetFromDirection'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Offset>(
          object: Offset.fromDirection(luaCallerArguments[1]?.toDouble(),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['offsetLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Offset.lerp(
        maybeUnBoxAndBuildArgument<Offset?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<Offset?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<Offset?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<Offset>(boxer: (
      {required Offset vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedOffset(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
