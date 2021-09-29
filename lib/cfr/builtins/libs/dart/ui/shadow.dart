import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedShadow extends VMManagedBox<Shadow> {
  VMManagedShadow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['color'] = maybeBoxObject<Color>(
        object: vmObject.color, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: vmObject.offset, hydroState: hydroState, table: HydroTable());
    table['blurRadius'] = vmObject.blurRadius;
    table['getBlurSigma'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.blurSigma,
      ];
    });
    table['toPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Paint>(
            object: vmObject.toPaint(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Shadow>(
            object: vmObject.scale(luaCallerArguments[1]?.toDouble()),
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final Shadow vmObject;
}

class RTManagedShadow extends Shadow implements Box<Shadow> {
  RTManagedShadow(
      {required double blurRadius,
      required Color color,
      required Offset offset,
      required this.table,
      required this.hydroState})
      : super(blurRadius: blurRadius, color: color, offset: offset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['color'] = maybeBoxObject<Color>(
        object: color, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: offset, hydroState: hydroState, table: HydroTable());
    table['blurRadius'] = blurRadius;
    table['_dart_getBlurSigma'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.blurSigma];
    });
    table['_dart_toPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Paint>(
            object: super.toPaint(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_scale'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Shadow>(
            object: super.scale(luaCallerArguments[1]?.toDouble()),
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
  }

  final HydroTable table;

  final HydroState hydroState;

  Shadow unwrap() => this;
  Shadow get vmObject => this;
  @override
  double get blurSigma {
    Closure closure = table["getBlurSigma"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Paint toPaint() {
    Closure closure = table["toPaint"];
    return maybeUnBoxAndBuildArgument<Paint, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Shadow scale(double factor) {
    Closure closure = table["scale"];
    return maybeUnBoxAndBuildArgument<Shadow, dynamic>(
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
}

void loadShadow({required HydroState hydroState, required HydroTable table}) {
  table['shadow'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedShadow(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          blurRadius: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['blurRadius']
              : null?.toDouble(),
          color: maybeUnBoxAndBuildArgument<Color, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['color']
                  : null,
              parentState: hydroState),
          offset: maybeUnBoxAndBuildArgument<Offset, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState))
    ];
  });
  table['shadowConvertRadiusToSigma'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Shadow.convertRadiusToSigma(luaCallerArguments[1]?.toDouble()),
    ];
  });
  table['shadowLerp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Shadow.lerp(
        maybeUnBoxAndBuildArgument<Shadow?, dynamic>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<Shadow?, dynamic>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<Shadow?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  table['shadowLerpList'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Shadow.lerpList(
        maybeUnBoxAndBuildArgument<List<Shadow>?, Shadow>(luaCallerArguments[1],
            parentState: hydroState),
        maybeUnBoxAndBuildArgument<List<Shadow>?, Shadow>(luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: returnValue
                .map((x) => maybeBoxObject<Shadow>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    }
    return [];
  });
  registerBoxer<Shadow>(boxer: (
      {required Shadow vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedShadow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
