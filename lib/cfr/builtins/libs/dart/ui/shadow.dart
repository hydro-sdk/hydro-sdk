import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

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
    table['getBlurSigma'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.blurSigma];
    });
    table['toPaint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Paint>(
            object: vmObject.toPaint(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['scale'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Shadow>(
            object: vmObject.scale(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.hashCode];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['color'] = maybeBoxObject<Color>(
        object: color, hydroState: hydroState, table: HydroTable());
    table['offset'] = maybeBoxObject<Offset>(
        object: offset, hydroState: hydroState, table: HydroTable());
    table['blurRadius'] = blurRadius;
    table['_dart_getBlurSigma'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.blurSigma];
    });
    table['_dart_toPaint'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Paint>(
            object: super.toPaint(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_scale'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Shadow>(
            object: super.scale(args[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getHashCode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.hashCode];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
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
    return maybeUnBoxAndBuildArgument<Paint>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Shadow scale(double factor) {
    Closure closure = table["scale"];
    return maybeUnBoxAndBuildArgument<Shadow>(
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
  table['shadow'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedShadow(
          table: args[0],
          hydroState: hydroState,
          blurRadius: args[1]['blurRadius']?.toDouble(),
          color: maybeUnBoxAndBuildArgument<Color>(args[1]['color'],
              parentState: hydroState),
          offset: maybeUnBoxAndBuildArgument<Offset>(args[1]['offset'],
              parentState: hydroState))
    ];
  });
  table['shadowConvertRadiusToSigma'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<double>(
          object: Shadow.convertRadiusToSigma(args[1]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['shadowLerp'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Shadow?>(
          object: Shadow.lerp(
              maybeUnBoxAndBuildArgument<Shadow?>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Shadow?>(args[2],
                  parentState: hydroState),
              args[3]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['shadowLerpList'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: Shadow.lerpList(
                  maybeUnBoxAndBuildArgument<List<Shadow>?>(args[1],
                      parentState: hydroState),
                  maybeUnBoxAndBuildArgument<List<Shadow>?>(args[2],
                      parentState: hydroState),
                  args[3]?.toDouble())
              .map((x) => maybeBoxObject<Shadow>(
                  object: x, hydroState: hydroState, table: HydroTable()))
              .toList(),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Shadow>(boxer: (
      {required Shadow vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedShadow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
