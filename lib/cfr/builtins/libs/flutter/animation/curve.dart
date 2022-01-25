import 'dart:core';

import 'package:flutter/src/animation/curves.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedCurve extends VMManagedBox<Curve> {
  VMManagedCurve(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.transform(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getFlipped'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Curve>(
            object: vmObject.flipped,
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
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Curve vmObject;
}

class RTManagedCurve extends Curve implements Box<Curve> {
  RTManagedCurve({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_transform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.transform(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getFlipped'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.flipped];
    });
    table['_dart_transformInternal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.transformInternal(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Curve unwrap() => this;
  Curve get vmObject => this;
  @override
  double transform(t) {
    Closure closure = table["transform"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Curve get flipped {
    Closure closure = table["getFlipped"];
    return maybeUnBoxAndBuildArgument<Curve, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  double transformInternal(t) {
    Closure closure = table["transformInternal"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCurve({required HydroState hydroState, required HydroTable table}) {
  table['curve'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedCurve(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<Curve>(boxer: (
      {required Curve vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedCurve(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
