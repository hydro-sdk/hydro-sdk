import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/table.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMaxColumnWidth extends VMManagedBox<MaxColumnWidth> {
  VMManagedMaxColumnWidth(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['a'] = maybeBoxObject<TableColumnWidth>(
        object: vmObject.a, hydroState: hydroState, table: HydroTable());
    table['b'] = maybeBoxObject<TableColumnWidth>(
        object: vmObject.b, hydroState: hydroState, table: HydroTable());
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

  final MaxColumnWidth vmObject;
}

class RTManagedMaxColumnWidth extends MaxColumnWidth
    implements Box<MaxColumnWidth> {
  RTManagedMaxColumnWidth(TableColumnWidth a$, TableColumnWidth b$,
      {required this.table, required this.hydroState})
      : super(
          a$,
          b$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['a'] = maybeBoxObject<TableColumnWidth>(
        object: this.a, hydroState: hydroState, table: HydroTable());
    table['b'] = maybeBoxObject<TableColumnWidth>(
        object: this.b, hydroState: hydroState, table: HydroTable());
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

  MaxColumnWidth unwrap() => this;
  MaxColumnWidth get vmObject => this;
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
  double? flex(Iterable cells) {
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

void loadMaxColumnWidth(
    {required HydroState hydroState, required HydroTable table}) {
  table['maxColumnWidth'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedMaxColumnWidth(
          maybeUnBoxAndBuildArgument<TableColumnWidth, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<TableColumnWidth, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<MaxColumnWidth>(boxer: (
      {required MaxColumnWidth vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMaxColumnWidth(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
