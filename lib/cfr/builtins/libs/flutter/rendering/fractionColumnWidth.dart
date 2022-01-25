import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/table.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFractionColumnWidth extends VMManagedBox<FractionColumnWidth> {
  VMManagedFractionColumnWidth(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['value'] = vmObject.value;
    table['minIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.minIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['maxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.maxIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['flex'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.flex(
          maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
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

  final FractionColumnWidth vmObject;
}

class RTManagedFractionColumnWidth extends FractionColumnWidth
    implements Box<FractionColumnWidth> {
  RTManagedFractionColumnWidth(double value$,
      {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['value'] = this.value;
    table['_dart_minIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.minIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble())
      ];
    });
    table['_dart_maxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.maxIntrinsicWidth(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState),
            luaCallerArguments[2]?.toDouble())
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_flex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.flex(maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  FractionColumnWidth unwrap() => this;
  FractionColumnWidth get vmObject => this;
  @override
  double minIntrinsicWidth(cells, containerWidth) {
    Closure closure = table["minIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double maxIntrinsicWidth(cells, containerWidth) {
    Closure closure = table["maxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? flex(cells) {
    Closure closure = table["flex"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFractionColumnWidth(
    {required HydroState hydroState, required HydroTable table}) {
  table['fractionColumnWidth'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedFractionColumnWidth(luaCallerArguments[1]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<FractionColumnWidth>(boxer: (
      {required FractionColumnWidth vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFractionColumnWidth(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
