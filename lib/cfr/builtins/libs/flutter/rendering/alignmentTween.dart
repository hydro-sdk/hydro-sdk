import 'dart:core';

import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/tween.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/rendering/tweens.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAlignmentTween extends VMManagedBox<AlignmentTween> {
  VMManagedAlignmentTween(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['begin'] = maybeBoxObject<Alignment?>(
        object: vmObject.begin, hydroState: hydroState, table: HydroTable());
    table['end'] = maybeBoxObject<Alignment?>(
        object: vmObject.end, hydroState: hydroState, table: HydroTable());
    table['lerp'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Alignment>(
            object: vmObject.lerp(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Alignment>(
            object: vmObject.transform(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['evaluate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Alignment>(
            object: vmObject.evaluate(
                maybeUnBoxAndBuildArgument<Animation<double>, double>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
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

  final AlignmentTween vmObject;
}

class RTManagedAlignmentTween extends AlignmentTween
    implements Box<AlignmentTween> {
  RTManagedAlignmentTween(
      {Alignment? begin,
      Alignment? end,
      required this.table,
      required this.hydroState})
      : super(begin: begin, end: end) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['begin'] = maybeBoxObject<Alignment?>(
        object: this.begin, hydroState: hydroState, table: HydroTable());
    table['end'] = maybeBoxObject<Alignment?>(
        object: this.end, hydroState: hydroState, table: HydroTable());
    table['_dart_lerp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Alignment>(
            object: super.lerp(luaCallerArguments[1]?.toDouble()),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Alignment>(
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
        maybeBoxObject<Alignment>(
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

  AlignmentTween unwrap() => this;
  AlignmentTween get vmObject => this;
  @override
  Alignment lerp(t) {
    Closure closure = table["lerp"];
    return maybeUnBoxAndBuildArgument<Alignment, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Alignment transform(t) {
    Closure closure = table["transform"];
    return maybeUnBoxAndBuildArgument<Alignment, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Alignment evaluate(animation) {
    Closure closure = table["evaluate"];
    return maybeUnBoxAndBuildArgument<Alignment, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Animation<Alignment> animate(parent) {
    Closure closure = table["animate"];
    return maybeUnBoxAndBuildArgument<Animation<Alignment>, Alignment>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Animatable<Alignment> chain(parent) {
    Closure closure = table["chain"];
    return maybeUnBoxAndBuildArgument<Animatable<Alignment>, Alignment>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAlignmentTween(
    {required HydroState hydroState, required HydroTable table}) {
  table['alignmentTween'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedAlignmentTween(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          begin: maybeUnBoxAndBuildArgument<Alignment?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['begin']
                  : null,
              parentState: hydroState),
          end: maybeUnBoxAndBuildArgument<Alignment?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['end']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<AlignmentTween>(boxer: (
      {required AlignmentTween vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAlignmentTween(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
