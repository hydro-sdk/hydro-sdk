import 'dart:core';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/object.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedConstraints extends VMManagedBox<Constraints> {
  VMManagedConstraints(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsTight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isTight,
      ];
    });
    table['getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isNormalized,
      ];
    });
    table['debugAssertIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;
      return [
        vmObject.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>,
                        DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['isAppliedConstraint']
                : null),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Constraints vmObject;
}

class RTManagedConstraints extends Constraints implements Box<Constraints> {
  RTManagedConstraints({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getIsTight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [isTight];
    });
    table['_dart_getIsNormalized'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [isNormalized];
    });
    table['_dart_debugAssertIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;
      return [
        super.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>,
                        DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['isAppliedConstraint']
                : null)
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Constraints unwrap() => this;
  Constraints get vmObject => this;
  @override
  bool get isTight {
    Closure closure = table["getIsTight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isNormalized {
    Closure closure = table["getIsNormalized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugAssertIsValid(
      {informationCollector, bool isAppliedConstraint = false}) {
    Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadConstraints(
    {required HydroState hydroState, required HydroTable table}) {
  table['constraints'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedConstraints(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<Constraints>(boxer: (
      {required Constraints vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedConstraints(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
