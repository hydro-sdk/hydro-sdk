import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedTangent extends VMManagedBox<Tangent> {
  VMManagedTangent(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['position'] = maybeBoxObject<Offset>(
        object: vmObject.position, hydroState: hydroState, table: HydroTable());
    table['vector'] = maybeBoxObject<Offset>(
        object: vmObject.vector, hydroState: hydroState, table: HydroTable());
    table['getAngle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.angle,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Tangent vmObject;
}

class RTManagedTangent extends Tangent implements Box<Tangent> {
  RTManagedTangent(Offset position$, Offset vector$,
      {required this.table, required this.hydroState})
      : super(
          position$,
          vector$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['position'] = maybeBoxObject<Offset>(
        object: position, hydroState: hydroState, table: HydroTable());
    table['vector'] = maybeBoxObject<Offset>(
        object: vector, hydroState: hydroState, table: HydroTable());
    table['_dart_getAngle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.angle];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Tangent unwrap() => this;
  Tangent get vmObject => this;
  @override
  double get angle {
    Closure closure = table["getAngle"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }
}

void loadTangent({required HydroState hydroState, required HydroTable table}) {
  table['tangent'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedTangent(
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  table['tangentFromAngle'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Tangent>(
          object: Tangent.fromAngle(
              maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              luaCallerArguments[2]?.toDouble()),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Tangent>(boxer: (
      {required Tangent vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTangent(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
