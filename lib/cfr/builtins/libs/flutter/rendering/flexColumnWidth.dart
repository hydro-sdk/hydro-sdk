import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/table.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFlexColumnWidth extends VMManagedBox<FlexColumnWidth> {
  VMManagedFlexColumnWidth(
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
    table['flex'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.flex(
            maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
                luaCallerArguments[1],
                parentState: hydroState)),
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

  final FlexColumnWidth vmObject;
}

class RTManagedFlexColumnWidth extends FlexColumnWidth
    implements Box<FlexColumnWidth> {
  RTManagedFlexColumnWidth(double value$,
      {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['value'] = value;
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
    table['_dart_flex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.flex(maybeUnBoxAndBuildArgument<Iterable<RenderBox>, RenderBox>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
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

  FlexColumnWidth unwrap() => this;
  FlexColumnWidth get vmObject => this;
  @override
  double minIntrinsicWidth(Iterable cells, double containerWidth) {
    Closure closure = table["minIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double maxIntrinsicWidth(Iterable cells, double containerWidth) {
    Closure closure = table["maxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double flex(Iterable cells) {
    Closure closure = table["flex"];
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

void loadFlexColumnWidth(
    {required HydroState hydroState, required HydroTable table}) {
  table['flexColumnWidth'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedFlexColumnWidth(luaCallerArguments[1]?.toDouble(),
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<FlexColumnWidth>(boxer: (
      {required FlexColumnWidth vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFlexColumnWidth(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
