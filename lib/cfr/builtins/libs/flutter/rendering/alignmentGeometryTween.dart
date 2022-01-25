import 'dart:core';

import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/tween.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/rendering/tweens.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAlignmentGeometryTween
    extends VMManagedBox<AlignmentGeometryTween> {
  VMManagedAlignmentGeometryTween(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['begin'] = maybeBoxObject<AlignmentGeometry?>(
        object: vmObject.begin, hydroState: hydroState, table: HydroTable());
    table['end'] = maybeBoxObject<AlignmentGeometry?>(
        object: vmObject.end, hydroState: hydroState, table: HydroTable());
    table['lerp'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lerp(luaCallerArguments[1]?.toDouble());
      if (returnValue != null) {
        return [
          maybeBoxObject<AlignmentGeometry?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.transform(luaCallerArguments[1]?.toDouble());
      if (returnValue != null) {
        return [
          maybeBoxObject<AlignmentGeometry?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['evaluate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.evaluate(
          maybeUnBoxAndBuildArgument<Animation<double>, double>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<AlignmentGeometry?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['animate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Animation>(
            object: vmObject.animate(
                maybeUnBoxAndBuildArgument<Animation<double>, double>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['chain'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Animatable>(
            object: vmObject.chain(
                maybeUnBoxAndBuildArgument<Animatable<double>, double>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
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
  }

  final HydroTable table;

  final HydroState hydroState;

  final AlignmentGeometryTween vmObject;
}

class RTManagedAlignmentGeometryTween extends AlignmentGeometryTween
    implements Box<AlignmentGeometryTween> {
  RTManagedAlignmentGeometryTween(
      {AlignmentGeometry? begin,
      AlignmentGeometry? end,
      required this.table,
      required this.hydroState})
      : super(begin: begin, end: end) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['begin'] = maybeBoxObject<AlignmentGeometry?>(
        object: this.begin, hydroState: hydroState, table: HydroTable());
    table['end'] = maybeBoxObject<AlignmentGeometry?>(
        object: this.end, hydroState: hydroState, table: HydroTable());
    table['_dart_lerp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AlignmentGeometry?>(
            object: super.lerp(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AlignmentGeometry?>(
            object: super.transform(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_evaluate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AlignmentGeometry?>(
            object: super.evaluate(
                maybeUnBoxAndBuildArgument<Animation<double>, double>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_animate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Animation>(
            object: super.animate(
                maybeUnBoxAndBuildArgument<Animation<double>, double>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_chain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Animatable>(
            object: super.chain(
                maybeUnBoxAndBuildArgument<Animatable<double>, double>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  AlignmentGeometryTween unwrap() => this;
  AlignmentGeometryTween get vmObject => this;
  @override
  AlignmentGeometry? lerp(t) {
    Closure closure = table["lerp"];
    return maybeUnBoxAndBuildArgument<AlignmentGeometry?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  AlignmentGeometry? transform(t) {
    Closure closure = table["transform"];
    return maybeUnBoxAndBuildArgument<AlignmentGeometry?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AlignmentGeometry? evaluate(animation) {
    Closure closure = table["evaluate"];
    return maybeUnBoxAndBuildArgument<AlignmentGeometry?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Animation<AlignmentGeometry?> animate(parent) {
    Closure closure = table["animate"];
    return maybeUnBoxAndBuildArgument<Animation<AlignmentGeometry?>,
            AlignmentGeometry?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Animatable<AlignmentGeometry?> chain(parent) {
    Closure closure = table["chain"];
    return maybeUnBoxAndBuildArgument<Animatable<AlignmentGeometry?>,
            AlignmentGeometry?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAlignmentGeometryTween(
    {required HydroState hydroState, required HydroTable table}) {
  table['alignmentGeometryTween'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedAlignmentGeometryTween(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          begin: maybeUnBoxAndBuildArgument<AlignmentGeometry?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['begin']
                  : null,
              parentState: hydroState),
          end: maybeUnBoxAndBuildArgument<AlignmentGeometry?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<AlignmentGeometryTween>(boxer: (
      {required AlignmentGeometryTween vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAlignmentGeometryTween(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
